"""Write wiki/n5_data.json (from wiki_import.py) into the Dogs of War game
system that NewRecruit reads.

- Weapons become shared profiles. A profile whose name matches a wiki weapon
  is overwritten with the wiki's stats but keeps its id, so entries and
  modifiers that point at it keep working. Other hand-made profiles are left
  alone.
- Weapons whose modes are only ammo choices (the MULTI family) become one
  profile whose ammo fields list every option: Ammo "DA · AP · SHOCK".
- Skills, equipment, ammunition, weapon traits, states and special weaponry
  become shared rules: name, type, labels, our own one-line summary (from
  rules/summaries.json) and a link to the full rule on the wiki. The wiki's
  rules text itself is not copied.
- Every weapon, special skill and piece of equipment also becomes a
  selectable shared entry, gathered into "Armory: …" groups to link from
  chassis, pilots and Elites. Weapons carry no price; price goes on the link.
  A skill or piece of equipment that attacks with range bands (Forward
  Observer, MediKit…) shows its weapon profile on its own entry.
- rules/armory.md, the readable reference of all of the above, is
  regenerated from the result.
- Everything imported carries the "Infinity N5 Wiki" publication, which is
  how a re-run finds and replaces it. To hand-tune an imported weapon,
  rename it (or clear its publication) first, or the next import will
  overwrite it.

    python build_gst.py                 # write into NewRecruit's data folder
    python build_gst.py path/to/file.json

The file is backed up to backups/ before every write. Close the NewRecruit
editor first; it keeps its own copy in memory and would save over this.
"""

import copy
import hashlib
import json
import re
import sys
from collections import Counter
from datetime import datetime
from pathlib import Path

HERE = Path(__file__).resolve().parent
DATA = HERE / "wiki" / "n5_data.json"
TARGET = HERE.parent / "Dogs of War.json"
SUMMARIES = HERE.parent / "rules" / "summaries.json"
ARMORY = HERE.parent / "rules" / "armory.md"
BACKUPS = HERE / "backups"

PUBLICATION = {
    "name": "Infinity N5 Wiki",
    "shortName": "N5 Wiki",
    "publisher": "Corvus Belli",
    "publisherUrl": "https://infinitythewiki.com",
}
README = (
    "Dogs of War is an unofficial, non-commercial fan game mode for Infinity N5. "
    "Infinity and all associated names, rules and game data are (c) Corvus Belli S.L. "
    "Weapon profiles and rule names are taken from the official Infinity wiki "
    "(https://infinitythewiki.com). Rule summaries are our own; each rule links "
    "to its full official text there, which wins wherever the two differ."
)
RANGED, CC = "Ranged Weapon Profile", "CC Weapon Profile"
BANDS = ["0-8", "8-16", "16-24", "24-32", "32-40", "40-48", "48-96"]
FAMILY_ORDER = ["Common Skill", "Special Skill", "Equipment", "Weapon Trait",
                "Ammunition", "Weaponry", "State"]
# Modes that only swap the ammunition. A weapon whose modes are all of these,
# with the same range bands and PS, is shown as one row.
AMMO_MODES = {"Anti-materiel", "AP", "Shock"}
MODE = re.compile(r"^(.*?) \((.+) Mode\)$")
SEP = " · "
# Rule families a model can be given; common skills belong to everyone.
PICKABLE = {"Special Skill": "Armory: Special Skills", "Equipment": "Armory: Equipment"}
# Chart rows that are a mode of a common skill, not something to carry.
NOT_CARRIED = {"Suppressive Fire Mode"}


def bsid(*parts: str) -> str:
    """A stable BattleScribe-style id, so rebuilds don't churn the file."""
    h = hashlib.sha1(("dogs-of-war:" + ":".join(parts)).encode()).hexdigest()
    return "-".join(h[i:i + 4] for i in range(0, 16, 4))


def clean_name(name: str) -> str:
    return name.replace("º", "°")


def ensure_band_96(ptype: dict) -> None:
    """N5 weapons have a 48-96" band; add the column if the profile type
    stops at 40-48."""
    chars = ptype["characteristicTypes"]
    if any(c["name"] == "48-96" for c in chars):
        return
    at = next((i + 1 for i, c in enumerate(chars) if c["name"] == "40-48"), len(chars))
    chars.insert(at, {"name": "48-96", "id": bsid("characteristicType", "48-96")})


def combine_ammo_modes(weapons: list[dict]) -> list[dict]:
    """Fold each ammo-choice weapon's mode rows into one weapon. Range bands
    and PS are shared; every other field lists its values in mode order, or
    shows once if all modes agree. A trait only some modes have is tagged
    with their ammo: "Anti-materiel (DA), Suppressive Fire (AP, SHOCK)"."""
    groups: dict[str, list[tuple[str, dict]]] = {}
    for w in weapons:
        if m := MODE.match(w["name"]):
            groups.setdefault(m.group(1), []).append((m.group(2), w))

    def ammo_only(modes):
        return (len(modes) > 1 and {label for label, _ in modes} <= AMMO_MODES
                and len({(json.dumps(w["ranges"]), w["PS"]) for _, w in modes}) == 1)

    out, done = [], set()
    for w in weapons:
        m = MODE.match(w["name"])
        if not m or not ammo_only(groups[m.group(1)]):
            out.append(w)
            continue
        base = m.group(1)
        if base in done:
            continue
        done.add(base)
        modes = [mw for _, mw in groups[base]]

        def joined(field):
            vals = [mw[field] for mw in modes]
            return vals[0] if len(set(vals)) == 1 else SEP.join(vals)

        tags = [mw["Ammo"] for mw in modes]
        per_mode = [[t.strip() for t in mw["Traits"].split(",") if t.strip()] for mw in modes]
        traits = []
        for t in dict.fromkeys(t for ts in per_mode for t in ts):
            having = [tag for tag, ts in zip(tags, per_mode) if t in ts]
            traits.append(t if len(having) == len(modes) else f"{t} ({', '.join(having)})")
        out.append({
            "name": base, "family": w["family"], "ranges": w["ranges"], "PS": w["PS"],
            "B": joined("B"), "Ammo": joined("Ammo"), "Save Type": joined("Save Type"),
            "Needed Saves": joined("Needed Saves"), "Traits": ", ".join(traits),
            "rules": sorted(set().union(*(mw["rules"] for mw in modes))),
        })
    return out


def weapon_values(w: dict, kind: str) -> dict:
    vals = {"PS": w["PS"], "B": w["B"], "Ammo": w["Ammo"], "Save Type": w["Save Type"],
            "Needed Saves": w["Needed Saves"], "Traits": w["Traits"]}
    if kind == RANGED:
        ranges = {b: (v if v not in ("", "--") else "N/A") for b, v in w["ranges"].items()}
        # Template weapons have no range bands; show the template instead,
        # as the hand-built profiles do.
        if all(v == "N/A" for v in ranges.values()):
            for size in ("Large Teardrop", "Small Teardrop"):
                if f"Direct Template ({size})" in w["Traits"]:
                    ranges["0-8"] = size
        vals.update(ranges)
    return {k: ("N/A" if v == "--" else v) for k, v in vals.items()}


def weapon_kind(w: dict) -> str:
    no_range = all(v in ("", "--") for v in w["ranges"].values())
    return CC if no_range and "CC" in w["rules"] else RANGED


def rule_heading(r: dict) -> str:
    return " · ".join(x for x in (r["family"], r["type"], r["labels"]) if x)


def rule_description(r: dict, summary: str | None) -> str:
    parts = [rule_heading(r), summary, f"Full rule: {r['url']}"]
    return "\n".join(p for p in parts if p)


def info_link(owner: str, kind: str, name: str, target_id: str) -> dict:
    return {"name": name, "id": bsid("infoLink", owner, kind, name), "hidden": False,
            "targetId": target_id, "type": kind}


def build_entries(weapons: list[dict], rules: list[dict], gs: dict, pub_id: str):
    """Selectable entries for every weapon, special skill and piece of
    equipment, plus the "Armory: …" groups that list them."""
    rule_ids = {r["name"]: r["id"] for r in gs["sharedRules"]}
    profiles = {p["name"].lower(): p for p in gs["sharedProfiles"]}
    pickable = {clean_name(r["name"]) for r in rules if r["family"] in PICKABLE}

    # Weapon rows named after a skill or piece of equipment are its attack
    # profile; every other row joins its weapon, modes grouped under one name.
    attack_rows, weapon_rows = {}, {}
    for w in weapons:
        name = clean_name(w["name"])
        if name in NOT_CARRIED:
            continue
        if name in pickable:
            attack_rows[name] = w
            continue
        m = MODE.match(name)
        weapon_rows.setdefault(m.group(1) if m else name, []).append(w)

    entries, members = [], {g: [] for g in ("Armory: Ranged Weapons", "Armory: CC Weapons",
                                            *PICKABLE.values())}

    def entry(kind: str, name: str, links: list[dict]) -> dict:
        e = {"name": name, "id": bsid("entry", kind, name), "hidden": False, "type": "upgrade",
             "import": True, "publicationId": pub_id, "infoLinks": links}
        entries.append(e)
        return e

    def profile_links(owner: str, rows: list[dict]) -> list[dict]:
        out = []
        for w in rows:
            p = profiles[clean_name(w["name"]).lower()]
            out.append(info_link(owner, "profile", p["name"], p["id"]))
        return out

    def trait_links(owner: str, rows: list[dict], skip: set[str] = frozenset()) -> list[dict]:
        names = sorted({clean_name(n) for w in rows for n in w["rules"]} - skip)
        return [info_link(owner, "rule", n, rule_ids[n]) for n in names]

    for base, rows in weapon_rows.items():
        e = entry("weapon", base, profile_links(base, rows) + trait_links(base, rows))
        kinds = {profiles[clean_name(w["name"]).lower()]["typeName"] for w in rows}
        if RANGED in kinds:
            members["Armory: Ranged Weapons"].append(e)
        if CC in kinds:
            members["Armory: CC Weapons"].append(e)

    for r in rules:
        if r["family"] not in PICKABLE:
            continue
        name = clean_name(r["name"])
        rows = [attack_rows[name]] if name in attack_rows else []
        links = (profile_links(name, rows) + [info_link(name, "rule", name, rule_ids[name])]
                 + trait_links(name, rows, skip={name}))
        members[PICKABLE[r["family"]]].append(entry(r["family"].lower(), name, links))

    groups = [{"name": title, "id": bsid("group", title), "hidden": False, "publicationId": pub_id,
               "entryLinks": [{"name": e["name"], "id": bsid("entryLink", title, e["name"]),
                               "hidden": False, "import": True, "targetId": e["id"],
                               "type": "selectionEntry"}
                              for e in sorted(group, key=lambda e: e["name"].lower())]}
              for title, group in members.items()]
    return entries, groups


def armory_page(gs: dict, rules: list[dict], summaries: dict, pub_id: str) -> str:
    """rules/armory.md: everything in the catalogue, readable on GitHub."""
    def cell(v: str) -> str:
        return v.replace("|", "\\|") if v else ""

    def table(kind: str) -> list[str]:
        cols = [c["name"] for c in next(t for t in gs["profileTypes"]
                                        if t["name"] == kind)["characteristicTypes"]]
        rows = [p for p in gs["sharedProfiles"] if p.get("typeName") == kind]
        out = ["| Weapon | " + " | ".join(cols) + " |", "|---" * (len(cols) + 1) + "|"]
        for p in sorted(rows, key=lambda p: p["name"].lower()):
            vals = {c["name"]: c.get("$text", "") for c in p["characteristics"]}
            mark = "" if p.get("publicationId") == pub_id else " †"
            out.append(f"| {cell(p['name'])}{mark} | " + " | ".join(cell(vals.get(c, "")) for c in cols) + " |")
        return out

    lines = [
        "# Armory",
        "",
        "Every weapon, skill and piece of equipment in the Dogs of War catalogue.",
        "",
        "> Generated by `tools/build_gst.py` from the catalogue. Don't edit it by hand: change the"
        " catalogue, or the summaries in `rules/summaries.json`, then rebuild.",
        "",
        "The summaries are ours, written for quick reference. Each name links to the full official"
        " rule on the [Infinity wiki](https://infinitythewiki.com) (© Corvus Belli), and the official"
        " rule wins wherever the two differ. Weapons marked † are Dogs of War's own.",
        "",
        "## Weapons",
        "",
        "### Ranged", "", *table(RANGED), "",
        "### Close combat", "", *table(CC), "",
    ]
    by_family: dict[str, list[dict]] = {}
    for r in rules:
        by_family.setdefault(r["family"], []).append(r)
    titles = {"Common Skill": "Common Skills", "Special Skill": "Special Skills",
              "Equipment": "Equipment", "Weapon Trait": "Weapon Traits",
              "Ammunition": "Ammunition", "Weaponry": "Special Weaponry", "State": "States"}
    for family in FAMILY_ORDER:
        lines += [f"## {titles[family]}", ""]
        for r in sorted(by_family.get(family, []), key=lambda r: r["name"].lower()):
            name = clean_name(r["name"])
            tags = " · ".join(x for x in (r["type"], r["labels"]) if x)
            lines.append(f"- **[{name}]({r['url']})**" + (f" *({tags})*" if tags else "")
                         + f": {summaries.get(r['name'], '')}")
        lines.append("")
    own = [r for r in gs["sharedRules"] if r.get("publicationId") != pub_id]
    lines += ["## Dogs of War rules", ""]
    if own:
        lines += [f"- **{r['name']}**: {r.get('description', '').strip()}" for r in own]
    else:
        lines.append("None in the catalogue yet. Our own rules are written up in"
                     " [core-rules.md](core-rules.md) as they're decided.")
    return "\n".join(lines) + "\n"


def main() -> None:
    target = Path(sys.argv[1]) if len(sys.argv) > 1 else TARGET
    data = json.loads(DATA.read_text(encoding="utf-8"))
    summaries = json.loads(SUMMARIES.read_text(encoding="utf-8"))
    missing = [r["name"] for r in data["rules"] if r["name"] not in summaries]
    if missing:
        print(f"No summary yet in rules/summaries.json for: {', '.join(missing)}")
    weapons = combine_ammo_modes(data["weapons"])
    original = json.loads(target.read_text(encoding="utf-8"))
    doc = copy.deepcopy(original)
    gs = doc["gameSystem"]

    pub_id = bsid("publication", PUBLICATION["name"])
    pubs = [p for p in gs.get("publications", []) if p["id"] != pub_id]
    gs["publications"] = pubs + [{"name": PUBLICATION["name"], "id": pub_id,
                                  **{k: v for k, v in PUBLICATION.items() if k != "name"}}]
    gs["readme"] = README

    types = {t["name"]: t for t in gs["profileTypes"]}
    ensure_band_96(types[RANGED])

    # --- weapons -> shared profiles
    profiles = gs.setdefault("sharedProfiles", [])
    by_name = {p["name"].lower(): p for p in profiles}
    wiki_names = set()
    updated, added, changes = [], [], {}
    for w in weapons:
        name = clean_name(w["name"])
        wiki_names.add(name.lower())
        kind = weapon_kind(w)
        existing = by_name.get(name.lower())
        if existing and existing.get("typeName") in (RANGED, CC):
            kind = existing["typeName"]  # keep the type its links' modifiers expect
        ptype = types[kind]
        vals = weapon_values(w, kind)
        chars = [{"name": c["name"], "$text": vals.get(c["name"], ""), "typeId": c["id"]}
                 for c in ptype["characteristicTypes"]]
        if existing:
            before = {c["name"]: c.get("$text", "") for c in existing.get("characteristics", [])}
            diff = {c["name"]: (before.get(c["name"], "(none)"), c["$text"])
                    for c in chars if before.get(c["name"], "(none)") != c["$text"]}
            if diff:
                # Hand-made stats replaced, or the wiki's errata changed them.
                changes[existing["name"]] = diff
                updated.append(name)
            existing.update({"publicationId": pub_id, "typeId": ptype["id"],
                             "typeName": kind, "characteristics": chars})
        else:
            p = {"name": name, "id": bsid("profile", name), "hidden": False,
                 "publicationId": pub_id, "typeId": ptype["id"], "typeName": kind,
                 "characteristics": chars}
            profiles.append(p)
            by_name[name.lower()] = p
            added.append(name)
    # Imported weapons this build no longer produces: gone from the wiki's
    # chart, or mode rows now folded into one profile.
    dropped = [p["name"] for p in profiles
               if p.get("publicationId") == pub_id and p["name"].lower() not in wiki_names]
    gs["sharedProfiles"] = [p for p in profiles if p["name"] not in dropped]
    hand_made = [p["name"] for p in gs["sharedProfiles"] if p.get("publicationId") != pub_id]

    # --- rules -> shared rules
    own_rules = [r for r in gs.get("sharedRules", []) if r.get("publicationId") != pub_id]
    order = {f: i for i, f in enumerate(FAMILY_ORDER)}
    imported = sorted(data["rules"], key=lambda r: (order.get(r["family"], 99), r["name"].lower()))
    gs["sharedRules"] = own_rules + [
        {"name": clean_name(r["name"]), "id": bsid("rule", r["name"]), "hidden": False,
         "publicationId": pub_id, "description": rule_description(r, summaries.get(r["name"]))}
        for r in imported
    ]

    # --- selectable entries and the Armory groups that list them
    entries, groups = build_entries(weapons, imported, gs, pub_id)
    gs["sharedSelectionEntries"] = [e for e in gs.get("sharedSelectionEntries", [])
                                    if e.get("publicationId") != pub_id] + entries
    gs["sharedSelectionEntryGroups"] = [g for g in gs.get("sharedSelectionEntryGroups", [])
                                        if g.get("publicationId") != pub_id] + groups

    page = armory_page(gs, imported, summaries, pub_id)
    if not ARMORY.exists() or ARMORY.read_text(encoding="utf-8") != page:
        ARMORY.write_text(page, encoding="utf-8")
        print(f"Wrote {ARMORY.relative_to(HERE.parent)}")

    if doc == original:
        print("Game system already up to date; nothing written.")
        return
    gs["revision"] = int(gs.get("revision", 0)) + 1
    check(doc)

    BACKUPS.mkdir(exist_ok=True)
    backup = BACKUPS / f"{target.stem}.{datetime.now():%Y-%m-%d-%H%M%S}.json"
    backup.write_text(target.read_text(encoding="utf-8"), encoding="utf-8")
    target.write_text(json.dumps(doc, indent=2, ensure_ascii=False) + "\n", encoding="utf-8")

    print(f"Wrote {target} (revision {gs['revision']}); backup in {backup.relative_to(HERE)}")
    print(f"Weapons: {len(added)} added, {len(updated)} updated"
          + (f", {len(dropped)} removed (no longer produced):{', '.join(dropped)}" if dropped else ""))
    print(f"Rules: {len(imported)} imported")
    print("Selectable entries: " + ", ".join(f"{len(g['entryLinks'])} in {g['name']}" for g in groups))
    if hand_made:
        print(f"Hand-made profiles kept as they are: {', '.join(hand_made)}")
    for name, diff in changes.items():
        print(f"  {name}: " + "; ".join(f"{k} {a!r} -> {b!r}" for k, (a, b) in diff.items()))


def check(doc: dict) -> None:
    """Refuse to write a file with duplicate ids or links to nothing."""
    ids, refs = [], []

    def walk(node):
        if isinstance(node, dict):
            if "id" in node:
                ids.append(node["id"])
            for key in ("targetId", "typeId", "publicationId"):
                if key in node:
                    refs.append(node[key])
            for v in node.values():
                walk(v)
        elif isinstance(node, list):
            for v in node:
                walk(v)

    walk(doc)
    known = set(ids)
    dupes = {i for i, n in Counter(ids).items() if n > 1}
    dangling = {r for r in refs if r not in known}
    if dupes or dangling:
        raise SystemExit(f"Not written: duplicate ids {sorted(dupes)}; dangling links {sorted(dangling)}")


if __name__ == "__main__":
    main()
