"""Build the Dogs of War game system and catalogue for New Recruit.

    python tools/build.py

Reads:
    data/system.json        currencies, categories and limits, the force, stat-line layouts
    data/company.json       pilots, TAG chassis, Elites, Troopers and their options
    data/rules.json         Dogs of War's own rules (summaries; full text in rules/core-rules.md)
    rules/summaries.json    our one-line summaries of the N5 rules
    tools/wiki/n5_data.json the N5 armory, from wiki_import.py

Writes (from scratch, every time; edit the data files, not these):
    Dogs of War.gst         the game system: everything shared, including the N5 armory
    Mercenary Company.cat   the company catalogue: what a player picks
    rules/armory.md         readable reference of the armory and our rules
    rules/n5-index.md       every page of the N5 rules on the wiki, by chapter

Both XML files follow the BattleScribe 2.03 schema that New Recruit reads.
With the xmlschema package installed (pip install xmlschema) the build also
validates them against tools/schema/Catalogue.xsd. Revisions go up by one
whenever a file's content changes, so New Recruit picks up the update.
Close the New Recruit Editor before building: it would save its in-memory
copy over the new files.
"""

import hashlib
import json
import re
import sys
import xml.etree.ElementTree as ET
from collections import Counter
from pathlib import Path

HERE = Path(__file__).resolve().parent
ROOT = HERE.parent
DATA = ROOT / "data"
N5 = HERE / "wiki" / "n5_data.json"
SUMMARIES = ROOT / "rules" / "summaries.json"
ARMORY = ROOT / "rules" / "armory.md"
INDEX = ROOT / "rules" / "n5-index.md"
GST = ROOT / "Dogs of War.gst"
XSD = HERE / "schema" / "Catalogue.xsd"
CORE_RULES_URL = "https://github.com/OptimusPrimarch/DogsOfWar/blob/main/rules/core-rules.md"

# The first New Recruit attempt used this game system's id up to revision 7;
# starting above it keeps New Recruit from taking these files for older ones.
FIRST_REVISION = 10
GST_NS = "http://www.battlescribe.net/schema/gameSystemSchema"
CAT_NS = "http://www.battlescribe.net/schema/catalogueSchema"
BS_VERSION = "2.03"

N5_PUB = {"name": "Infinity N5 Wiki", "shortName": "N5 Wiki", "publisher": "Corvus Belli",
          "publisherUrl": "https://infinitythewiki.com"}
DOW_PUB = {"name": "Dogs of War", "shortName": "DoW", "publisher": "OptimusPrimarch",
           "publisherUrl": "https://github.com/OptimusPrimarch/DogsOfWar"}

# Stat-line layouts for the armory, with the column headings of the N5 charts.
RANGED, CC = "Ranged Weapon", "CC Weapon"
PROGRAM, MARTIAL, DEPLOYED = "Hacking Program", "Martial Arts", "Deployable"
BANDS = {"0-8": '8"', "8-16": '16"', "16-24": '24"', "24-32": '32"', "32-40": '40"',
         "40-48": '48"', "48-96": '96"'}
ARMORY_TYPES = {
    RANGED: [*BANDS.values(), "PS", "B", "Ammo", "Save Attr.", "Save Rolls", "Traits"],
    CC: ["PS", "B", "Ammo", "Save Attr.", "Save Rolls", "Traits"],
    PROGRAM: ["Attack MOD", "Opp. MOD", "PS", "Burst", "Target", "Skill Type", "Special"],
    MARTIAL: ["Attack MOD", "Opponent MOD", "Burst MOD"],
    DEPLOYED: ["ARM", "BTS", "STR", "S"],
}
WIKI_FIELDS = {"Save Attr.": "Save Type", "Save Rolls": "Needed Saves"}
FAMILY_ORDER = ["Common Skill", "Special Skill", "Equipment", "Hacking", "Hacking Program",
                "Supportware", "Weapon Trait", "Label", "Ammunition", "Weaponry", "State"]
FAMILY_TITLES = {"Common Skill": "Common Skills", "Special Skill": "Special Skills",
                 "Equipment": "Equipment", "Hacking": "Hacking", "Hacking Program": "Hacking Programs",
                 "Supportware": "Supportware", "Weapon Trait": "Weapon Traits", "Label": "Labels",
                 "Ammunition": "Ammunition", "Weaponry": "Special Weaponry", "State": "States"}
# Armory families a model can be given (common skills belong to everyone),
# and the Armory group each goes in.
PICKABLE = {"Special Skill": "Armory: Special Skills", "Equipment": "Armory: Equipment",
            "Hacking Program": "Armory: Hacking Programs", "Supportware": "Armory: Hacking Programs"}
LEVELLED = {"Martial Arts"}               # offered as one entry per level
NOT_CARRIED = {"Suppressive Fire Mode"}   # a common skill's mode, not something to carry
# Modes that only swap the ammunition: such a weapon is shown as one row.
AMMO_MODES = {"Anti-materiel", "AP", "Shock"}
MODE = re.compile(r"^(.*?) \((.+) Mode\)$")
SEP = " · "
# Rule families a unit's skills and equipment can name.
UNIT_RULE_FAMILIES = {"Common Skill", "Special Skill", "Equipment", "Hacking", "Hacking Program",
                      "Supportware"}
# Older names that still turn up: the N5 rule each means, and what to show after it.
ALIASES = {"escape system": ("Transmutation", "(Escape System)")}


def md_link(text: str, url: str) -> str:
    """A Markdown link New Recruit can open. Brackets in the URL are encoded
    so a page like Normal_(N)_Ammunition doesn't end the link early."""
    return f"[{text}]({url.replace('(', '%28').replace(')', '%29')})"


def bsid(*parts: str) -> str:
    """A stable BattleScribe-style id, so rebuilds don't churn the files."""
    h = hashlib.sha1(("dogs-of-war:" + ":".join(parts)).encode()).hexdigest()
    return "-".join(h[i:i + 4] for i in range(0, 16, 4))


def clean_name(name: str) -> str:
    return name.replace("º", "°")


def load(path: Path):
    return json.loads(path.read_text(encoding="utf-8"))


# --- XML ----------------------------------------------------------------------

# Child order the 2.03 schema expects inside any element, and at the root.
CHILD_ORDER = ["comment", "repeats", "conditions", "conditionGroups", "modifiers", "modifierGroups",
               "constraints", "profiles", "rules", "infoGroups", "infoLinks", "forceEntries",
               "categoryLinks", "selectionEntries", "selectionEntryGroups", "entryLinks", "costs",
               "characteristics", "description", "characteristicTypes"]
ROOT_ORDER = ["comment", "readme", "publications", "costTypes", "profileTypes", "categoryEntries",
              "forceEntries", "selectionEntries", "entryLinks", "rules", "infoLinks",
              "sharedSelectionEntries", "sharedSelectionEntryGroups", "sharedRules", "sharedProfiles",
              "sharedInfoGroups", "catalogueLinks"]


def el(tag: str, attrs: dict | None = None, **children) -> ET.Element:
    """An element with string attributes and named child lists:
    el("selectionEntry", {...}, infoLinks=[...], costs=[...])."""
    e = ET.Element(tag, {k: fmt(v) for k, v in (attrs or {}).items() if v is not None})
    for name, items in children.items():
        if items is None or items == []:
            continue
        if isinstance(items, str):
            ET.SubElement(e, name).text = items
        else:
            ET.SubElement(e, name).extend(items)
    return e


def fmt(v) -> str:
    if isinstance(v, bool):
        return "true" if v else "false"
    if isinstance(v, float) and v.is_integer():
        return str(int(v))
    return str(v)


def ordered(e: ET.Element, order: list[str]) -> None:
    rank = {t: i for i, t in enumerate(order)}
    kids = sorted(list(e), key=lambda c: rank.get(c.tag, len(rank)))
    for c in list(e):
        e.remove(c)
    e.extend(kids)
    for c in e:
        ordered(c, CHILD_ORDER)


def constraint(cid: str, kind: str, value, field: str = "selections", scope: str = "parent",
               children: bool = True) -> ET.Element:
    return el("constraint", {"id": cid, "type": kind, "value": value, "field": field, "scope": scope,
                             "shared": True, "includeChildSelections": children})


def rule_link(owner: str, name: str, target: str, extra: str = "", k: int = 0) -> ET.Element:
    mods = [el("modifier", {"type": "append", "field": "name", "value": extra})] if extra else None
    return el("infoLink", {"id": bsid("infoLink", owner, "rule", name, str(k)), "name": name,
                           "hidden": False, "targetId": target, "type": "rule"}, modifiers=mods)


def profile_link(owner: str, name: str, target: str, mods=None) -> ET.Element:
    return el("infoLink", {"id": bsid("infoLink", owner, "profile", name), "name": name,
                           "hidden": False, "targetId": target, "type": "profile"}, modifiers=mods)


def dedupe(links: list[ET.Element]) -> list[ET.Element]:
    return list({l.get("id"): l for l in links}.values())


# --- the N5 armory --------------------------------------------------------------

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
        out.append({"name": base, "family": w["family"], "ranges": w["ranges"], "PS": w["PS"],
                    "B": joined("B"), "Ammo": joined("Ammo"), "Save Type": joined("Save Type"),
                    "Needed Saves": joined("Needed Saves"), "Traits": ", ".join(traits),
                    "rules": sorted(set().union(*(mw["rules"] for mw in modes)))})
    return out


def weapon_kind(w: dict) -> str:
    no_range = all(v in ("", "--") for v in w["ranges"].values())
    return CC if no_range and "CC" in w["rules"] else RANGED


def weapon_values(w: dict, kind: str) -> dict:
    vals = {col: w[WIKI_FIELDS.get(col, col)] for col in ARMORY_TYPES[CC]}
    if kind == RANGED:
        ranges = {BANDS[b]: (v if v not in ("", "--") else "-") for b, v in w["ranges"].items()}
        # Template weapons have no range bands: show the template instead.
        if all(v == "-" for v in ranges.values()):
            for size in ("Large Teardrop", "Small Teardrop"):
                if f"Direct Template ({size})" in w["Traits"]:
                    ranges['8"'] = size
        vals.update(ranges)
    return {k: ("-" if v in ("--", "") else v) for k, v in vals.items()}


def weapon_base(name: str) -> str:
    m = MODE.match(name)
    return m.group(1) if m else name


def deployable_owner(stat_name: str, owners: list[str]) -> str | None:
    """The entry a deployed stat line belongs to: "AP MINE" -> "AP Mines",
    "DISCO BALL" -> "Disco Baller" (ignoring case, spaces and slashes)."""
    def norm(s):
        return re.sub(r"[\s/]", "", s.lower())
    key = norm(stat_name)
    hits = sorted((o for o in owners if norm(o).startswith(key)), key=len)
    return hits[0] if hits else None


def deployed_name(stat_name: str, owner: str) -> str:
    """The deployed item in the owner's spelling: "E/M Mine (deployed)"."""
    want, out = len(re.sub(r"[\s/]", "", stat_name)), ""
    for ch in owner:
        if want == 0:
            break
        out += ch
        if not re.match(r"[\s/]", ch):
            want -= 1
    return f"{out} (deployed)"


def split_items(text: str) -> list[str]:
    """Split "Courage, Dodge (PH=11)" on commas outside brackets."""
    items, depth, cur = [], 0, ""
    for ch in text:
        depth += ch == "("
        depth -= ch == ")"
        if ch == "," and depth == 0:
            items.append(cur.strip())
            cur = ""
        else:
            cur += ch
    items.append(cur.strip())
    return [i for i in items if i]


def match_rule(item: str, names: dict[str, str]) -> tuple[str, str] | None:
    """The rule an item names, and what follows the name ("Dodge (PH=11)" ->
    ("Dodge", "(PH=11)")). Case doesn't matter; the longest fitting name wins."""
    low = item.lower()
    if low in ALIASES:
        return ALIASES[low]
    if low in names:
        return names[low], ""
    fits = [k for k in names if low.startswith(k) and low[len(k)] in " (:"]
    if not fits:
        return None
    key = max(fits, key=len)
    return names[key], item[len(key):].strip().lstrip(":").strip()


class Armory:
    """The N5 armory and the shared rules, as game system content."""

    def __init__(self, n5: dict, summaries: dict, dow_rules: dict, types: dict, n5_pub: str, dow_pub: str):
        self.types = types              # profile type name -> (id, {column: characteristic type id})
        self.n5_pub, self.dow_pub = n5_pub, dow_pub
        self.rules: list[ET.Element] = []
        self.rule_ids: dict[str, str] = {}
        self.names: dict[str, str] = {}               # data name -> rule name ("… (N4)")
        self.unit_rule_names: dict[str, str] = {}     # lower name -> rule name, for units
        self.profiles: list[ET.Element] = []
        self.profile_rows: list[dict] = []            # for armory.md
        self.profile_ids: dict[str, str] = {}         # lower name -> id
        self.entries: list[ET.Element] = []
        self.groups: list[ET.Element] = []
        self.weapons: dict[str, dict] = {}            # weapon name -> {"id", "profiles", "rules"}
        self.n5_rules = sorted(n5["rules"], key=lambda r: (FAMILY_ORDER.index(r["family"]),
                                                           r["name"].lower()))
        self._rules(summaries, dow_rules)
        self._profiles(n5)
        self._entries(n5)

    # rules
    def _rules(self, summaries, dow_rules):
        for r in self.n5_rules:
            name = clean_name(r["name"])
            head = " · ".join(x for x in (r["family"], r["type"], r["labels"]) if x)
            text = "\n".join(p for p in (head, summaries.get(r["name"]),
                                          md_link("Full rule on the Infinity wiki", r["url"])) if p)
            self._add_rule(bsid("rule", r["name"]), name, text, self.n5_pub)
            if r["family"] in UNIT_RULE_FAMILIES:
                self.unit_rule_names[name.lower()] = name
        for key, r in dow_rules.items():
            if key.startswith("_"):
                continue
            name = f"{key} (N4)" if r.get("n4") else key
            text = f"Dogs of War{' · N4 rule' if r.get('n4') else ''}\n{r['summary']}\n" \
                   + md_link("Full rule in the Dogs of War core rules", f"{CORE_RULES_URL}#{r['section']}")
            self._add_rule(bsid("rule", "dow", key), name, text, self.dow_pub)
            self.rule_ids[key] = self.rule_ids[name]
            self.names[key] = name
            self.unit_rule_names[key.lower()] = name

    def _add_rule(self, rid, name, text, pub):
        self.rule_ids[name] = rid
        self.rules.append(el("rule", {"id": rid, "name": name, "publicationId": pub, "hidden": False},
                             description=text))

    def rule(self, name: str) -> str:
        if name not in self.rule_ids:
            raise SystemExit(f"No rule named '{name}'.")
        return self.rule_ids[name]

    def link(self, owner: str, name: str, extra: str = "", k: int = 0) -> ET.Element:
        """A link to a rule by any of its names, showing its full name."""
        return rule_link(owner, self.names.get(name, name), self.rule(name), extra, k)

    # profiles
    def _profile(self, name: str, kind: str, vals: dict) -> None:
        tid, cols = self.types[kind]
        chars = [el("characteristic", {"name": c, "typeId": cid}) for c, cid in cols.items()]
        for ch in chars:
            ch.text = vals.get(ch.get("name"), "")
        pid = bsid("profile", name)
        self.profiles.append(el("profile", {"id": pid, "name": name, "publicationId": self.n5_pub,
                                            "hidden": False, "typeId": tid, "typeName": kind},
                                characteristics=chars))
        self.profile_ids[name.lower()] = pid
        self.profile_rows.append({"name": name, "type": kind, "values": vals})

    def _profiles(self, n5):
        self.n5_weapons = combine_ammo_modes(n5["weapons"])
        self.kinds = {}
        for w in self.n5_weapons:
            name, kind = clean_name(w["name"]), weapon_kind(w)
            self.kinds[name] = kind
            self._profile(name, kind, weapon_values(w, kind))
        for p in n5["hacking_programs"]:
            self._profile(p["name"], PROGRAM, {c: ("-" if p.get(c, "") in ("", "--") else p[c])
                                               for c in ARMORY_TYPES[PROGRAM]})
        self.levels = {"Martial Arts": []}
        for lv in n5["martial_arts"]:
            name = f"Martial Arts L{lv['Level']}"
            self.levels["Martial Arts"].append(name)
            self._profile(name, MARTIAL, {c: lv.get(c, "") for c in ARMORY_TYPES[MARTIAL]})
        self.extra_profiles: dict[str, list[str]] = {}
        self.extra_rules: dict[str, list[str]] = {}
        for d in n5["hacking_devices"]:
            self.extra_profiles[d["name"]] = list(d["programs"])
            self.extra_rules[d["name"]] = list(d["programs"])
        for p in n5["hacking_programs"]:
            self.extra_rules[p["name"]] = p["rules"]
        owners = sorted({weapon_base(clean_name(w["name"])) for w in self.n5_weapons}
                        | {clean_name(r["name"]) for r in self.n5_rules if r["family"] in PICKABLE})
        for dep in n5["deployables"]:
            owner = deployable_owner(dep["Deployable"], owners)
            if owner is None:
                print(f"Deployed stat line '{dep['Deployable']}' matches no weapon or equipment; skipped.")
                continue
            name = deployed_name(dep["Deployable"], owner)
            self._profile(name, DEPLOYED, {c: dep.get(c, "") for c in ARMORY_TYPES[DEPLOYED]})
            self.extra_profiles.setdefault(owner, []).append(name)

    # selectable entries
    def _entries(self, n5):
        pickable = {clean_name(r["name"]) for r in self.n5_rules if r["family"] in PICKABLE}
        attack_rows, weapon_rows = {}, {}
        for w in self.n5_weapons:
            name = clean_name(w["name"])
            if name in NOT_CARRIED:
                continue
            if name in pickable:
                attack_rows[name] = w
            else:
                weapon_rows.setdefault(weapon_base(name), []).append(w)
        members = {g: [] for g in ("Armory: Ranged Weapons", "Armory: CC Weapons", *PICKABLE.values())}

        def entry(kind, name, links):
            e = el("selectionEntry", {"id": bsid("entry", kind, name), "name": name,
                                      "publicationId": self.n5_pub, "hidden": False,
                                      "collective": False, "import": True, "type": "upgrade"},
                   infoLinks=dedupe(links))
            self.entries.append(e)
            return e

        def profs(owner, names):
            return [profile_link(owner, n, self.profile_ids[n.lower()]) for n in names]

        def rls(owner, names, skip=frozenset()):
            return [rule_link(owner, n, self.rule(n)) for n in sorted(set(names) - set(skip))]

        for base, rows in weapon_rows.items():
            names = [clean_name(w["name"]) for w in rows]
            traits = {clean_name(n) for w in rows for n in w["rules"]}
            e = entry("weapon", base, profs(base, names + self.extra_profiles.get(base, []))
                      + rls(base, traits | set(self.extra_rules.get(base, []))))
            self.weapons[base] = {"id": e.get("id"), "profiles": names, "rules": sorted(traits)}
            kinds = {self.kinds[n] for n in names}
            if RANGED in kinds:
                members["Armory: Ranged Weapons"].append(e)
            if CC in kinds:
                members["Armory: CC Weapons"].append(e)
        # Skills and equipment that attack with range bands also count as
        # weapons a unit can carry (Forward Observer, MediKit…).
        for name, w in attack_rows.items():
            self.weapons[name] = {"id": None, "profiles": [name], "rules": sorted({clean_name(n) for n in w["rules"]})}
        for r in self.n5_rules:
            if r["family"] not in PICKABLE:
                continue
            name, kind = clean_name(r["name"]), r["family"].lower()
            group = members[PICKABLE[r["family"]]]
            if name in self.levels:
                for level in self.levels[name]:
                    group.append(entry(kind, level, profs(level, [level]) + rls(level, [name])))
                continue
            rows = [attack_rows[name]] if name in attack_rows else []
            traits = {clean_name(n) for w in rows for n in w["rules"]}
            group.append(entry(kind, name, profs(name, [name] if rows else [])
                               + profs(name, self.extra_profiles.get(name, []))
                               + [rule_link(name, name, self.rule(name))]
                               + rls(name, traits | set(self.extra_rules.get(name, [])), skip={name})))
        for title, group in members.items():
            links = [el("entryLink", {"id": bsid("entryLink", title, e.get("name")), "name": e.get("name"),
                                      "hidden": False, "collective": False, "import": True,
                                      "targetId": e.get("id"), "type": "selectionEntry"})
                     for e in sorted(group, key=lambda e: e.get("name").lower())]
            self.groups.append(el("selectionEntryGroup", {"id": bsid("group", title), "name": title,
                                                          "publicationId": self.n5_pub, "hidden": False,
                                                          "collective": False, "import": True},
                                  entryLinks=links))


# --- the company ----------------------------------------------------------------

class Company:
    """Turns data/company.json into catalogue entries."""

    def __init__(self, data: dict, armory: Armory, ids: dict):
        self.data, self.armory, self.ids = data, armory, ids
        self.placeholders: list[str] = []
        self.shared_profiles: list[ET.Element] = []
        self.shared_groups: list[ET.Element] = []
        self.list_ids: dict[str, str] = {}
        for name, spec in data.get("profiles", {}).items():
            self.shared_profiles.append(self.profile(bsid("profile", "dow", name), name, spec))
            if spec.get("status") == "prototype":
                self.placeholders.append(f"{name} profile")
        for name, spec in data.get("lists", {}).items():
            gid = bsid("list", name)
            self.list_ids[name] = gid
            self.shared_groups.append(self.option_group(gid, name, spec))
            if spec.get("status") == "prototype":
                self.placeholders.append(f"{name} prices")

    def costs(self, cost: dict | None) -> list[ET.Element]:
        out = []
        for name, value in (cost or {}).items():
            if value is None:
                continue
            if name not in self.ids["cost"]:
                raise SystemExit(f"Unknown cost type '{name}'.")
            out.append(el("cost", {"name": name, "typeId": self.ids["cost"][name], "value": value}))
        return out

    def profile(self, pid: str, name: str, spec: dict) -> ET.Element:
        tid, cols = self.armory.types[spec["type"]]
        unknown = set(spec["stats"]) - set(cols)
        if unknown:
            raise SystemExit(f"{name}: no {', '.join(sorted(unknown))} column in {spec['type']} profiles.")
        chars = []
        for c, cid in cols.items():
            ch = el("characteristic", {"name": c, "typeId": cid})
            ch.text = str(spec["stats"].get(c, "-"))
            chars.append(ch)
        return el("profile", {"id": pid, "name": name, "publicationId": self.ids["pub"], "hidden": False,
                              "typeId": tid, "typeName": spec["type"]}, characteristics=chars)

    def weapon(self, name: str) -> dict:
        w = self.armory.weapons.get(name)
        if w is None:
            raise SystemExit(f"No weapon named '{name}' in the armory.")
        return w

    def weapon_links(self, owner: str, name: str, mods: dict | None = None) -> list[ET.Element]:
        """Profile and trait-rule links for a weapon, with stat changes."""
        w = self.weapon(name)
        links = []
        for p in w["profiles"]:
            ms = []
            for col, change in (mods or {}).items():
                cols = self.armory.types[self.armory.kinds.get(p, RANGED)][1]
                if col not in cols:
                    raise SystemExit(f"{owner}: {p} has no {col} to change.")
                kind, value = (("set", change[1:]) if change.startswith("=") else
                               ("decrement", change[1:]) if change.startswith("-") else
                               ("increment", change.lstrip("+")))
                ms.append(el("modifier", {"type": kind, "field": cols[col], "value": value}))
            links.append(profile_link(owner, p, self.armory.profile_ids[p.lower()], ms or None))
        return links + [rule_link(owner, r, self.armory.rule(r)) for r in w["rules"]]

    def option(self, owner_id: str, spec: dict) -> ET.Element:
        """One pickable weapon: a link to the armory entry carrying the price,
        or, when the weapon's stats change here, a local copy that does."""
        name, oid = spec["weapon"], bsid("option", owner_id, spec["weapon"])
        w = self.weapon(name)
        if not spec.get("mods") and w["id"]:
            return el("entryLink", {"id": oid, "name": name, "hidden": False, "collective": False,
                                    "import": True, "targetId": w["id"], "type": "selectionEntry"},
                      costs=self.costs(spec.get("cost")))
        return el("selectionEntry", {"id": oid, "name": name, "hidden": False, "collective": False,
                                     "import": True, "type": "upgrade"},
                  infoLinks=dedupe(self.weapon_links(oid, name, spec.get("mods"))),
                  costs=self.costs(spec.get("cost")))

    def option_group(self, gid: str, name: str, spec: dict) -> ET.Element:
        options = [self.option(gid, o) for o in spec["options"]]
        default = next((o.get("id") for o in options if o.get("name") == spec.get("default")), None)
        cons = []
        if spec.get("min"):
            cons.append(constraint(bsid("constraint", gid, "min"), "min", spec["min"], children=False))
        if spec.get("max"):
            cons.append(constraint(bsid("constraint", gid, "max"), "max", spec["max"], children=False))
        return el("selectionEntryGroup", {"id": gid, "name": name, "hidden": False, "collective": False,
                                          "import": True, "defaultSelectionEntryId": default},
                  constraints=cons,
                  selectionEntries=[o for o in options if o.tag == "selectionEntry"],
                  entryLinks=[o for o in options if o.tag == "entryLink"])

    def named_rules(self, owner: str, items: list[str]) -> list[ET.Element]:
        """Rule links for skills and equipment as a profile prints them."""
        links, seen = [], {}
        for item in items:
            hit = match_rule(item, self.armory.unit_rule_names)
            if hit is None:
                raise SystemExit(f"{owner}: no rule matches '{item}'.")
            rule, extra = hit
            k = seen.get(rule, 0)
            seen[rule] = k + 1
            links.append(rule_link(owner, rule, self.armory.rule(rule), extra, k))
        return links

    def upgrade(self, owner_id: str, name: str) -> tuple[ET.Element, ET.Element | None]:
        """A local upgrade, and the modifier it puts on its unit (if any)."""
        spec = self.data["upgrades"][name]
        uid = bsid("upgrade", owner_id, name)
        cats = []
        if spec.get("category"):
            cats.append(el("categoryLink", {"id": bsid("categoryLink", uid, spec["category"]),
                                            "name": spec["category"], "hidden": False,
                                            "targetId": self.ids["category"][spec["category"]],
                                            "primary": False}))
        e = el("selectionEntry", {"id": uid, "name": name, "hidden": False, "collective": False,
                                  "import": True, "type": "upgrade"},
               constraints=[constraint(bsid("constraint", uid, "max"), "max", 1, children=False)],
               infoLinks=[self.armory.link(uid, r) for r in spec.get("rules", [])],
               categoryLinks=cats, costs=self.costs(spec.get("cost")))
        mod = None
        if spec.get("removesCategory"):
            cond = el("condition", {"type": "atLeast", "value": 1, "field": "selections", "scope": "self",
                                    "childId": uid, "shared": True, "includeChildSelections": True})
            mod = el("modifier", {"type": "remove", "field": "category",
                                  "value": self.ids["category"][spec["removesCategory"]]},
                     conditions=[cond])
        return e, mod

    def training(self, uid: str, name: str, spec: dict):
        """A pilot's training packages: a list capped at the tier's count, an
        upgrade that buys one more, and the stat bumps each package gives."""
        gid = bsid("training", uid)
        extra_id = bsid("upgrade", uid, "Extra Training Package")
        cols = self.armory.types[spec["profile"]["type"]][1]
        entries, stat_mods = [], []
        for pname, pk in self.data["trainingPackages"].items():
            pid = bsid("package", uid, pname)
            entries.append(el("selectionEntry", {"id": pid, "name": pname, "hidden": False, "collective": False,
                                                 "import": True, "type": "upgrade"},
                              constraints=[constraint(bsid("constraint", pid, "max"), "max", 1, children=False)],
                              infoLinks=self.named_rules(f"{name}: {pname}",
                                                         pk.get("skills", []) + pk.get("equipment", []))))
            for stat, bump in pk.get("stats", {}).items():
                cond = el("condition", {"type": "atLeast", "value": 1, "field": "selections", "scope": "self",
                                        "childId": pid, "shared": True, "includeChildSelections": True})
                stat_mods.append(el("modifier", {"type": "increment", "field": cols[stat], "value": bump},
                                    conditions=[cond]))
        max_id = bsid("constraint", gid, "max")
        more = el("modifier", {"type": "increment", "field": max_id, "value": 1},
                  conditions=[el("condition", {"type": "atLeast", "value": 1, "field": "selections", "scope": "parent",
                                               "childId": extra_id, "shared": True, "includeChildSelections": False})])
        group = el("selectionEntryGroup", {"id": gid, "name": "Training Packages", "hidden": False,
                                           "collective": False, "import": True},
                   modifiers=[more], constraints=[constraint(max_id, "max", spec["packages"], children=False)],
                   selectionEntries=entries)
        extra = el("selectionEntry", {"id": extra_id, "name": "Extra Training Package", "hidden": False,
                                      "collective": False, "import": True, "type": "upgrade"},
                   constraints=[constraint(bsid("constraint", extra_id, "max"), "max", 1, children=False)],
                   costs=self.costs(spec.get("extraPackage")))
        return group, extra, stat_mods

    def unit(self, spec: dict) -> ET.Element:
        name = spec["name"]
        uid = bsid("unit", name)
        if spec.get("status") == "prototype":
            self.placeholders.append(name)
        profiles = [self.profile(bsid("profile", "dow", name), name, spec["profile"])] if "profile" in spec else []
        links = []
        if "sharedProfile" in spec:
            pname = spec["sharedProfile"]
            links.append(profile_link(uid, pname, bsid("profile", "dow", pname)))
        for wname in spec.get("weapons", []):
            links += self.weapon_links(uid, wname)
        links += self.named_rules(name, spec.get("skills", []) + spec.get("equipment", []))
        links += [self.armory.link(uid, r) for r in spec.get("rules", [])]
        cats = [el("categoryLink", {"id": bsid("categoryLink", uid, spec["category"]),
                                    "name": spec["category"], "hidden": False,
                                    "targetId": self.ids["category"][spec["category"]], "primary": True})]
        cats += [el("categoryLink", {"id": bsid("categoryLink", uid, c), "name": c, "hidden": False,
                                     "targetId": self.ids["category"][c], "primary": False})
                 for c in spec.get("also", [])]
        upgrades, mods = [], []
        for u in spec.get("upgrades", []):
            e, mod = self.upgrade(uid, u)
            upgrades.append(e)
            if mod is not None:
                mods.append(mod)
        groups = [self.option_group(bsid("group", uid, g["name"]), g["name"], g)
                  for g in spec.get("groups", []) if g.get("options")]
        if spec.get("packages"):
            group, extra, stat_mods = self.training(uid, name, spec)
            groups.append(group)
            upgrades.append(extra)
            mods += stat_mods
        list_links = [el("entryLink", {"id": bsid("listLink", uid, l), "name": l, "hidden": False,
                                       "collective": False, "import": True, "targetId": self.list_ids[l],
                                       "type": "selectionEntryGroup"})
                      for l in spec.get("lists", [])]
        cons = []
        if spec.get("min"):
            cons.append(constraint(bsid("constraint", uid, "min"), "min", spec["min"], scope="force"))
        if spec.get("max"):
            cons.append(constraint(bsid("constraint", uid, "max"), "max", spec["max"], scope="force"))
        if spec.get("capacity") is not None:
            cons.append(constraint(bsid("constraint", uid, "capacity"), "max", spec["capacity"],
                                   field=self.ids["cost"]["Capacity"], scope="self"))
        return el("selectionEntry", {"id": uid, "name": name, "publicationId": self.ids["pub"],
                                     "hidden": False, "collective": False, "import": True,
                                     "type": spec.get("type", "model")},
                  modifiers=mods, constraints=cons, profiles=profiles, infoLinks=dedupe(links),
                  categoryLinks=cats, selectionEntries=upgrades, selectionEntryGroups=groups,
                  entryLinks=list_links, costs=self.costs(spec.get("cost")))


# --- assembling the two files ------------------------------------------------------

def profile_types(system: dict) -> tuple[list[ET.Element], dict]:
    layouts = {**system["profileTypes"], **ARMORY_TYPES}
    elements, types = [], {}
    for name, cols in layouts.items():
        tid = bsid("profileType", name)
        col_ids = {c: bsid("characteristicType", name, c) for c in cols}
        types[name] = (tid, col_ids)
        elements.append(el("profileType", {"id": tid, "name": name},
                           characteristicTypes=[el("characteristicType", {"id": i, "name": c})
                                                for c, i in col_ids.items()]))
    return elements, types


def force_entry(system: dict, ids: dict, armory: Armory, company_ids: dict) -> ET.Element:
    links = []
    for c in system["categories"]:
        cid = ids["category"][c["name"]]
        lid = bsid("forceCategory", c["name"])
        cons, mods = [], []
        if "min" in c:
            cons.append(constraint(bsid("constraint", lid, "min"), "min", c["min"]))
        if "max" in c:
            max_id = bsid("constraint", lid, "max")
            cons.append(constraint(max_id, "max", c["max"]))
            for entry in c.get("raiseMaxPer", []):
                rep = el("repeat", {"field": "selections", "scope": "force", "value": 1, "percentValue": False,
                                    "shared": True, "includeChildSelections": True, "includeChildForces": False,
                                    "childId": company_ids[entry], "repeats": 1, "roundUp": False})
                mods.append(el("modifier", {"type": "increment", "field": max_id, "value": 1}, repeats=[rep]))
            for when in c.get("lowerMaxWhen", []):
                cond = el("condition", {"type": "atLeast", "value": when["atLeast"], "field": "selections",
                                        "scope": "force", "childId": ids["category"][when["category"]],
                                        "shared": True, "includeChildSelections": True})
                mods.append(el("modifier", {"type": "decrement", "field": max_id, "value": 1},
                               conditions=[cond]))
        links.append(el("categoryLink", {"id": lid, "name": c["name"], "hidden": False, "targetId": cid,
                                         "primary": False}, modifiers=mods, constraints=cons))
    force = system["force"]
    return el("forceEntry", {"id": bsid("force", force["name"]), "name": force["name"], "hidden": False},
              infoLinks=[armory.link("force", r) for r in force.get("rules", [])],
              categoryLinks=links)


def revision_of(path: Path) -> int:
    if not path.exists():
        return 0
    m = re.search(r'\brevision="(\d+)"', path.read_text(encoding="utf-8")[:2000])
    return int(m.group(1)) if m else 0


def serialise(root: ET.Element, ns: str) -> str:
    ordered(root, ROOT_ORDER)
    root.set("xmlns", ns)
    ET.indent(root, space="  ")
    return '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>\n' + ET.tostring(root, encoding="unicode") + "\n"


def write_with_revision(path: Path, make) -> int:
    """Write make(revision) to path, raising the revision only if the
    content otherwise changed. Returns the revision written."""
    old = revision_of(path)
    if old and path.read_text(encoding="utf-8") == make(old):
        return old
    new = old + 1 if old else FIRST_REVISION
    path.write_text(make(new), encoding="utf-8")
    print(f"Wrote {path.name} (revision {new})")
    return new


def check(gst: ET.Element, cat: ET.Element) -> None:
    """Refuse to keep files with duplicate ids or links to nothing."""
    ids, refs = [], []
    for root in (gst, cat):
        for e in root.iter():
            if "id" in e.attrib:
                ids.append(e.get("id"))
            for key in ("targetId", "typeId", "childId", "publicationId", "defaultSelectionEntryId"):
                if key in e.attrib:
                    refs.append((e.tag, key, e.get(key)))
    known = set(ids)
    dupes = {i for i, n in Counter(ids).items() if n > 1}
    dangling = [r for r in refs if r[2] not in known]
    if dupes or dangling:
        raise SystemExit(f"Build refused: duplicate ids {sorted(dupes)[:10]}; dangling links {dangling[:10]}")


def validate(files: dict[Path, str]) -> None:
    try:
        import xmlschema
    except ImportError:
        print("Schema check skipped (pip install xmlschema to enable it).")
        return
    base = XSD.read_text(encoding="utf-8")
    for path, ns in files.items():
        schema = xmlschema.XMLSchema(base.replace(CAT_NS, ns))
        errors = list(schema.iter_errors(str(path)))
        if errors:
            raise SystemExit(f"{path.name} doesn't match the BattleScribe 2.03 schema: {errors[0]}")
    print("Both files match the BattleScribe 2.03 schema.")


def main() -> None:
    system, company, dow_rules = load(DATA / "system.json"), load(DATA / "company.json"), load(DATA / "rules.json")
    n5, summaries = load(N5), load(SUMMARIES)
    missing = [r["name"] for r in n5["rules"] if r["name"] not in summaries]
    if missing:
        print(f"No summary yet in rules/summaries.json for: {', '.join(missing)}")

    gs_info, cat_info = system["gameSystem"], system["catalogue"]
    ids = {"category": {c["name"]: bsid("category", c["name"]) for c in system["categories"]},
           "cost": {c["name"]: bsid("costType", c["name"]) for c in system["costTypes"]},
           "pub": bsid("publication", DOW_PUB["name"])}
    n5_pub = bsid("publication", N5_PUB["name"])
    ptypes, types = profile_types(system)
    armory = Armory(n5, summaries, dow_rules, types, n5_pub, ids["pub"])
    comp = Company(company, armory, ids)

    # Company-wide items live in the game system, beside the force whose
    # limits refer to them (Expanded Contract raises the Elite limit).
    company_items = [u for u in company["units"] if u["category"] == "Company"]
    company_ids = {u["name"]: bsid("unit", u["name"]) for u in company_items}
    gst_entries = [comp.unit(u) for u in company_items]
    cat_entries = [comp.unit(u) for u in company["units"] if u["category"] != "Company"]

    pubs = [el("publication", {"id": n5_pub, **N5_PUB}), el("publication", {"id": ids["pub"], **DOW_PUB})]
    cost_types = [el("costType", {"id": ids["cost"][c["name"]], "name": c["name"],
                                  "defaultCostLimit": c["defaultCostLimit"], "hidden": False})
                  for c in system["costTypes"]]
    categories = [el("categoryEntry", {"id": ids["category"][c["name"]], "name": c["name"], "hidden": False},
                     rules=[el("rule", {"id": bsid("categoryRule", c["name"]), "name": c["name"],
                                        "hidden": False}, description=c["description"])]
                     if c.get("description") else None)
                  for c in system["categories"]]

    def make_gst(rev: int) -> str:
        root = el("gameSystem", {"id": gs_info["id"], "name": gs_info["name"], "revision": rev,
                                 "battleScribeVersion": BS_VERSION, "authorName": gs_info.get("authorName"),
                                 "authorUrl": gs_info.get("authorUrl")},
                  readme=gs_info.get("readme"), publications=pubs, costTypes=cost_types,
                  profileTypes=ptypes, categoryEntries=categories,
                  forceEntries=[force_entry(system, ids, armory, company_ids)],
                  selectionEntries=gst_entries, sharedSelectionEntries=armory.entries,
                  sharedSelectionEntryGroups=armory.groups, sharedRules=armory.rules,
                  sharedProfiles=armory.profiles)
        return serialise(root, GST_NS)

    gst_rev = write_with_revision(GST, make_gst)
    cat_path = ROOT / cat_info["file"]

    def make_cat(rev: int) -> str:
        root = el("catalogue", {"id": bsid("catalogue", cat_info["name"]), "name": cat_info["name"],
                                "revision": rev, "battleScribeVersion": BS_VERSION, "library": False,
                                "gameSystemId": gs_info["id"], "gameSystemRevision": gst_rev,
                                "authorName": gs_info.get("authorName"), "authorUrl": gs_info.get("authorUrl")},
                  selectionEntries=cat_entries, sharedSelectionEntryGroups=comp.shared_groups,
                  sharedProfiles=comp.shared_profiles)
        return serialise(root, CAT_NS)

    write_with_revision(cat_path, make_cat)
    gst_root, cat_root = ET.parse(GST).getroot(), ET.parse(cat_path).getroot()
    check(gst_root, cat_root)
    validate({GST: GST_NS, cat_path: CAT_NS})

    write_if_changed(ARMORY, armory_page(armory, n5, summaries, dow_rules))
    write_if_changed(INDEX, index_page(n5))

    counts = {g.get("name"): len(g.find("entryLinks")) for g in armory.groups}
    print(f"Armory: {len(armory.rules)} rules, {len(armory.profiles)} profiles; "
          + ", ".join(f"{n} in {g}" for g, n in counts.items()))
    print(f"Company: {len(cat_entries)} units and {len(gst_entries)} company items")
    if comp.placeholders:
        print(f"Placeholders still to design: {', '.join(comp.placeholders)}")


# --- documents --------------------------------------------------------------------

def write_if_changed(path: Path, text: str) -> None:
    if not path.exists() or path.read_text(encoding="utf-8") != text:
        path.write_text(text, encoding="utf-8")
        print(f"Wrote {path.relative_to(ROOT)}")


def armory_page(armory: Armory, n5: dict, summaries: dict, dow_rules: dict) -> str:
    def cell(v: str) -> str:
        return v.replace("|", "\\|") if v else ""

    def table(kind: str, first: str = "Weapon") -> list[str]:
        cols = ARMORY_TYPES[kind]
        rows = sorted((r for r in armory.profile_rows if r["type"] == kind), key=lambda r: r["name"].lower())
        out = [f"| {first} | " + " | ".join(cols) + " |", "|---" * (len(cols) + 1) + "|"]
        out += [f"| {cell(r['name'])} | " + " | ".join(cell(r["values"].get(c, "")) for c in cols) + " |"
                for r in rows]
        return out

    lines = [
        "# Armory",
        "",
        "Every weapon, skill, piece of equipment and hacking program in the Dogs of War catalogue,"
        " with every rule they use.",
        "",
        "> Generated by `tools/build.py`. Don't edit it by hand: change the data or the summaries in"
        " `rules/summaries.json`, then rebuild.",
        "",
        "The summaries are ours, written for quick reference. Each N5 name links to the full official"
        " rule on the [Infinity wiki](https://infinitythewiki.com) (© Corvus Belli), and the official"
        " rule wins wherever the two differ. The rest of the N5 rules are indexed in"
        " [n5-index.md](n5-index.md).",
        "",
        "## Dogs of War rules",
        "",
    ]
    for key, r in dow_rules.items():
        if key.startswith("_"):
            continue
        name = f"{key} (N4)" if r.get("n4") else key
        lines.append(f"- **[{name}](core-rules.md#{r['section']})**: {r['summary']}")
    lines += [
        "",
        "## Weapons",
        "",
        "### Ranged", "", *table(RANGED), "",
        "### Close combat", "", *table(CC), "",
        "### Deployed items", "", "Stat lines for mines and devices once they're on the table.", "",
        *table(DEPLOYED, "Item"), "",
        "## Hacking Programs", "", *table(PROGRAM, "Program"), "",
        "## Martial Arts", "", *table(MARTIAL, "Level"), "",
    ]
    by_family: dict[str, list[dict]] = {}
    for r in n5["rules"]:
        by_family.setdefault(r["family"], []).append(r)
    for family in FAMILY_ORDER:
        lines += [f"## {FAMILY_TITLES[family]}", ""]
        for r in sorted(by_family.get(family, []), key=lambda r: r["name"].lower()):
            tags = " · ".join(x for x in (r["type"], r["labels"]) if x)
            lines.append(f"- **{md_link(clean_name(r['name']), r['url'])}**" + (f" *({tags})*" if tags else "")
                         + f": {summaries.get(r['name'], '')}")
        lines.append("")
    return "\n".join(lines)


def index_page(n5: dict) -> str:
    lines = [
        "# N5 Rules Index",
        "",
        "Every page of the official Infinity N5 rules on the [Infinity wiki](https://infinitythewiki.com)"
        " (© Corvus Belli), chapter by chapter. Dogs of War plays on these rules except where"
        " [core-rules.md](core-rules.md) says otherwise. Weapons, skills and equipment are listed in"
        " [armory.md](armory.md).",
        "",
        "> Generated by `tools/build.py` from the wiki's own chapter menus. Don't edit it by hand.",
        "",
    ]
    for ch in n5["index"]:
        lines += [f"## [{ch['chapter']}]({ch['url']})", ""]
        if ch["pages"]:
            lines += [" · ".join(f"[{p['title']}]({p['url']})" for p in ch["pages"]), ""]
    if n5.get("other_pages"):
        lines += ["## Other pages", "", " · ".join(f"[{p['title']}]({p['url']})" for p in n5["other_pages"]), ""]
    return "\n".join(lines)


if __name__ == "__main__":
    main()
