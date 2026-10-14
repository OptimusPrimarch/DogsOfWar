"""Pull N5 weapons, skills, equipment, ammunition, weapon traits and states
from the Infinity wiki (infinitythewiki.com) into wiki/n5_data.json.

What is extracted is game data and labels, never rules prose: weapon stat
lines, each rule's name and type ("Automatic Skill", "Short Skill / ARO"),
its label line ("Movement, Optional"), and the URL of the full rule. The
rules text itself stays on the wiki (it is Corvus Belli's); the catalogue
links to it.

    python wiki_import.py            # use cached pages where present
    python wiki_import.py --refresh  # re-download everything

Pages are fetched through the MediaWiki API, 50 to a request, and cached
under wiki/cache/ so a rebuild doesn't touch the wiki at all. Run
build_gst.py afterwards to write the result into NewRecruit.
"""

import json
import re
import sys
import time
import urllib.parse
import urllib.request
from pathlib import Path

HERE = Path(__file__).resolve().parent
CACHE = HERE / "wiki" / "cache"
OUT = HERE / "wiki" / "n5_data.json"
API = "https://infinitythewiki.com/api.php"
SITE = "https://infinitythewiki.com/"
USER_AGENT = "DogsOfWar-NewRecruit-import/0.1 (fan project; non-commercial)"

# Navigation templates that list each rule family.
INDEXES = {
    "Common Skill": "Template:N5-section-common-skills",
    "Special Skill": "Template:N5-section-special-skills",
    "Equipment": "Template:N5-section-equipment",
    "Ammunition": "Template:N5-section-ammo-and-weaponry",
}
TRAITS_PAGE = "Traits"
# Links in those templates that are chapter headers or charts, not rules.
NOT_RULES = {
    "Common Skills", "Special Skills", "Equipment", "Ammunition and Weaponry",
    "Ammunition", "Weaponry", "Weapon Chart", "Alternative Weapon Chart",
    "Ammunition Summary Chart",
}
# Pages a link can redirect into that are glossaries, not rules of their own.
NOT_RULE_PAGES = {"Labels", "Skills and Equipment Module"}
# Dogs of War shares Infinity's skills, equipment and weapons but never names
# a faction or unit, so skills named after a faction are left out.
EXCLUDE_RULES = {"Exrah", "Shasvastii"}
# In the ammo-and-weaponry template, these links are special weapons with
# their own rules pages rather than ammunition types.
SPECIAL_WEAPONRY = {
    "Mixed Weapons", "Armed Turret", "Chest Mines", "D-Charges", "Disco Baller",
    "Drop Bears", "Mine Dispenser", "Mines", "Perimeter Weapons", "Pitcher",
    "Sepsitor", "SymbioBomb", "WildParrot",
}
RANGE_BANDS = ["0-8", "8-16", "16-24", "24-32", "32-40", "40-48", "48-96"]
ACRONYMS = {"Cc": "CC", "Mrl": "MRL", "(Pt)": "(PT)"}


# --- fetching ---------------------------------------------------------------

def api(params: dict) -> dict:
    params = {**params, "format": "json", "formatversion": "2"}
    url = API + "?" + urllib.parse.urlencode(params)
    req = urllib.request.Request(url, headers={"User-Agent": USER_AGENT})
    with urllib.request.urlopen(req, timeout=60) as r:
        return json.load(r)


def cache_path(title: str) -> Path:
    return CACHE / (re.sub(r"[^\w\-]+", "_", title) + ".json")


def fetch_pages(titles: list[str], refresh: bool) -> dict[str, dict | None]:
    """Return {requested title: {"title", "fragment", "text"}}, following
    redirects; "fragment" is the section a redirect points into, if any.
    A missing page maps to None."""
    result, todo = {}, []
    for t in titles:
        p = cache_path(t)
        if p.exists() and not refresh:
            result[t] = json.loads(p.read_text(encoding="utf-8"))
        else:
            todo.append(t)
    for i in range(0, len(todo), 50):
        batch = todo[i:i + 50]
        data = api({"action": "query", "prop": "revisions", "rvprop": "content",
                    "rvslots": "main", "redirects": "1", "titles": "|".join(batch)})["query"]
        rename, fragment = {}, {}
        for step in ("normalized", "redirects"):
            for n in data.get(step, []):
                rename[n["from"]] = n["to"]
                if n.get("tofragment"):
                    fragment[n["from"]] = n["tofragment"]
        pages = {p["title"]: p for p in data.get("pages", [])}
        for t in batch:
            final, frag = t, None
            while final in rename:
                frag = fragment.get(final, frag)
                final = rename[final]
            page = pages.get(final)
            if page is None or page.get("missing") or "revisions" not in page:
                entry = None
            else:
                entry = {"title": page["title"], "fragment": frag,
                         "text": page["revisions"][0]["slots"]["main"]["content"]}
            cache_path(t).write_text(json.dumps(entry, ensure_ascii=False), encoding="utf-8")
            result[t] = entry
        if i + 50 < len(todo):
            time.sleep(1)  # be polite between batches
    return result


# --- wikitext helpers -------------------------------------------------------

LINK = re.compile(r"\[\[\s*([^\]|]+?)\s*(?:\|\s*([^\]]*?)\s*)?\]\]")


def current_text(text: str) -> str:
    """Drop superseded pre-errata copies and unwrap errata highlight markers,
    leaving the rules as they currently stand."""
    text = re.sub(r"\{\{original\}\}.*?\{\{original-end\}\}", "", text, flags=re.S)
    text = re.sub(r"\{\{originalhighblock\}\}.*?\{\{originalhighblock-end\}\}", "", text, flags=re.S)
    text = re.sub(r"\{\{\s*(?:errata|original)highlight\w*(?:-end)?\s*\}\}", "", text, flags=re.I)
    return text.replace("&#61;", "=")


def plain(text: str) -> str:
    """Wikitext to display text: links become their label."""
    text = LINK.sub(lambda m: m.group(2) if m.group(2) is not None else m.group(1), text)
    text = re.sub(r"'''?", "", text)
    return re.sub(r"\s+", " ", text).strip()


def link_targets(text: str) -> list[tuple[str, str]]:
    """(target page, display label) for every wiki link in text."""
    return [(m.group(1).strip(), (m.group(2) if m.group(2) is not None else m.group(1)).strip())
            for m in LINK.finditer(text)]


def legacy_anchor(heading: str) -> str:
    """MediaWiki 1.35's section anchor for a heading ("BS Weapon (PH)" ->
    "BS_Weapon_.28PH.29"), matching the fragments its redirects use."""
    s = urllib.parse.quote(heading.replace(" ", "_"), safe="-_.~:")
    return s.replace("%", ".")


def from_anchor(fragment: str) -> str:
    return re.sub(r"\.([0-9A-F]{2})", lambda m: chr(int(m.group(1), 16)), fragment).replace("_", " ")


def page_url(title: str, anchor: str | None = None) -> str:
    url = SITE + urllib.parse.quote(title.replace(" ", "_"), safe="/():-_,'")
    return url + "#" + anchor if anchor else url


# --- weapons ----------------------------------------------------------------

def split_template_args(body: str) -> list[str]:
    """Split a template's arguments on top-level pipes (not those inside
    [[links]] or nested {{templates}})."""
    args, depth, cur, i = [], 0, "", 0
    while i < len(body):
        two = body[i:i + 2]
        if two in ("[[", "{{"):
            depth += 1; cur += two; i += 2; continue
        if two in ("]]", "}}"):
            depth -= 1; cur += two; i += 2; continue
        if body[i] == "|" and depth == 0:
            args.append(cur); cur = ""; i += 1; continue
        cur += body[i]; i += 1
    args.append(cur)
    return args


def find_templates(text: str, name: str) -> list[str]:
    """Bodies of every {{name|…}} call, matching nested braces."""
    out, start = [], 0
    opener = "{{" + name + "|"
    while (i := text.find(opener, start)) != -1:
        depth, j = 0, i
        while j < len(text):
            if text.startswith("{{", j):
                depth += 1; j += 2
            elif text.startswith("}}", j):
                depth -= 1; j += 2
                if depth == 0:
                    break
            else:
                j += 1
        out.append(text[i + len(opener):j - 2])
        start = j
    return out


def family_name(heading: str) -> str:
    return " ".join(ACRONYMS.get(w, w) for w in heading.title().split())


def parse_weapon_chart(text: str) -> list[dict]:
    text = current_text(text)
    weapons = []
    # Walk section by section so each weapon keeps its family heading.
    parts = re.split(r"^==\s*(.+?)\s*==\s*$", text, flags=re.M)
    for family, body in zip(parts[1::2], parts[2::2]):
        for row in find_templates(body, "n5_weaponrow"):
            a = [x.strip() for x in split_template_args(row)]
            a += [""] * (14 - len(a))
            # Footnote markers point at the Weaponry/Ammunition chapters, and
            # the odd "(Note …)" is wiki commentary, not a trait.
            trait_text = re.sub(r"\[\*+\]", "", a[13])
            trait_text = re.sub(r"\(Note [^)]*\)", "", trait_text)
            traits = [t.strip() for t in plain(trait_text).split(",") if t.strip()]
            weapons.append({
                "name": plain(a[0]),
                "family": family_name(family),
                "ranges": dict(zip(RANGE_BANDS, a[1:8])),
                "PS": a[8], "B": a[9], "Ammo": plain(a[10]),
                "Save Type": plain(a[11]), "Needed Saves": plain(a[12]),
                "Traits": ", ".join(traits),
                "links": [t for t, _ in link_targets(a[0]) + link_targets(trait_text)],
            })
    return weapons


# --- rules ------------------------------------------------------------------

SKILLBOX = re.compile(r"\{\{\s*css_skillbox\s*\|[^|}\n]*\|[^|}\n]*\|\s*([^|}\n]+?)\s*\}\}", re.I)
SKILL_LABEL = re.compile(r"\{\{\s*skill-label\s*\|\s*([^}\n]+?)\s*\}\}", re.I)


def classify(text: str) -> tuple[str | None, str | None]:
    """The rule's type and label line, from its skill box."""
    text = current_text(text)
    rtype = labels = None
    if m := SKILLBOX.search(text):
        rtype = re.sub(r"\s*/\s*", " / ", m.group(1).strip().title()).replace("Aro", "ARO")
    if m := SKILL_LABEL.search(text):
        labels = plain(m.group(1)).rstrip(".")
        if labels.lower() == "none":
            labels = None
    return rtype, labels


def parse_traits(text: str) -> list[dict]:
    """One rule per === heading === on the Traits page. Each heading links to
    a category whose name is what the wiki's redirects point at."""
    traits = []
    for m in re.finditer(r"^===\s*\[\[\s*:Category:([^|\]]+?)\s*\|\s*([^\]]+?)\s*\]\]\s*===\s*$",
                         current_text(text), re.M):
        key, heading = m.group(1).strip(), m.group(2).strip()
        traits.append({"key": key, "name": heading, "family": "Weapon Trait",
                       "type": None, "labels": None,
                       "url": page_url(TRAITS_PAGE, legacy_anchor(heading))})
    return traits


def main() -> None:
    refresh = "--refresh" in sys.argv
    CACHE.mkdir(parents=True, exist_ok=True)

    idx = fetch_pages(list(INDEXES.values()) + ["Weapon Chart", TRAITS_PAGE], refresh)
    weapons, seen = [], {}
    for w in parse_weapon_chart(idx["Weapon Chart"]["text"]):
        # The chart repeats a few rows (AP Rifle); keep the first, and say so
        # if a repeat disagrees with it.
        if w["name"] in seen:
            if w != seen[w["name"]]:
                print(f"Warning: '{w['name']}' appears twice with different stats; kept the first.")
            continue
        seen[w["name"]] = w
        weapons.append(w)
    traits = parse_traits(idx[TRAITS_PAGE]["text"])

    # Rules listed in the navigation templates, named as the template shows
    # them ("Request Reinforcements" lives on the "Infinity Reinforcements" page).
    listed: dict[str, tuple[str, str]] = {}  # link target -> (family, display name)
    for family, tmpl in INDEXES.items():
        for target, label in link_targets(idx[tmpl]["text"]):
            if target in NOT_RULES or target in listed:
                continue
            if family == "Ammunition":
                family_here = "Weaponry" if target in SPECIAL_WEAPONRY else "Ammunition"
            else:
                family_here = family
            # The equipment template has a mangled degree sign in "360° Visor".
            listed[target] = (family_here, label.replace("�", "°"))
    # Everything weapons link to: traits, states, special weapon pages.
    for w in weapons:
        for target in w["links"]:
            listed.setdefault(target, ("", target))

    pages = fetch_pages(sorted(listed), refresh)

    rules: dict[str, dict] = {}       # rule name -> rule
    resolve: dict[str, str] = {}      # any link target -> rule name
    # Redirects point into a trait's section by its category name ("Disposable")
    # or by its heading ("Suppressive Fire (SF)"); accept either.
    traits_by_key = {}
    for t in traits:
        for k in (t["key"], t["name"], re.sub(r"\s*\(.*\)$", "", t["name"])):
            traits_by_key.setdefault(k.lower(), t)
    missing = []
    for target, (family, label) in listed.items():
        page = pages.get(target)
        if page is None:
            missing.append(target)
            continue
        title, frag = page["title"], page["fragment"]
        if title == TRAITS_PAGE:
            # Redirect into one section of the Traits page.
            key = from_anchor(frag or "").lower()
            if key in traits_by_key:
                resolve[target] = traits_by_key[key]["name"]
            continue
        if title in NOT_RULE_PAGES:
            continue
        # Rules from the skill/equipment lists keep the name the list shows,
        # since one page can hold several (Commlink and Request Reinforcements
        # both live on "Infinity Reinforcements"). Pages reached only from the
        # weapon chart are named by their title.
        name = label if family else title
        # The wiki spells "360° Visor" with a mangled character or an ordinal sign.
        name = name.replace("�", "°").replace("º", "°")
        if name in EXCLUDE_RULES:
            continue
        if name not in rules:
            if not family:
                family = "State" if title.endswith(" State") else "Weaponry"
            rtype, labels = classify(page["text"])
            rules[name] = {"name": name, "family": family, "type": rtype, "labels": labels,
                           "url": page_url(title, legacy_anchor(from_anchor(frag)) if frag else None),
                           "page": target}
        resolve[target] = name

    all_rules = list(rules.values()) + [{k: v for k, v in t.items() if k != "key"} for t in traits]
    # A trait sharing a skill's name ("Intuitive Attack") gets "(Trait)" so the
    # two stay distinguishable in NewRecruit.
    skill_names = {r["name"].lower() for r in rules.values()}
    for t in traits:
        base = re.sub(r"\s*\(.*\)$", "", t["name"])
        if base.lower() in skill_names:
            new = base + " (Trait)"
            for r in all_rules:
                if r["name"] == t["name"] and r["family"] == "Weapon Trait":
                    r["name"] = new
            for k, v in resolve.items():
                if v == t["name"]:
                    resolve[k] = new

    for w in weapons:
        w["rules"] = sorted({resolve[t] for t in w.pop("links") if t in resolve})

    OUT.write_text(json.dumps({
        "source": SITE,
        "attribution": "Infinity and all associated names and game data are © Corvus Belli S.L.",
        "weapons": weapons,
        "rules": all_rules,
        "missing_pages": missing,
    }, indent=2, ensure_ascii=False), encoding="utf-8")

    fams: dict[str, int] = {}
    for r in all_rules:
        fams[r["family"]] = fams.get(r["family"], 0) + 1
    print(f"{len(weapons)} weapon profiles, {len(all_rules)} rules: "
          + ", ".join(f"{n} {f}" for f, n in fams.items()))
    if missing:
        print(f"{len(missing)} linked pages not found on the wiki: {', '.join(missing)}")
    print(f"Wrote {OUT.relative_to(HERE)}")


if __name__ == "__main__":
    main()
