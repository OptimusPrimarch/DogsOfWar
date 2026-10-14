"""Check that everything the wiki lists made it into the catalogue.

Reads the wiki's own lists straight from the page cache (its menus,
categories and charts), independently of wiki/n5_data.json, and looks for
each item in the built game system: as a rule, a profile or a selectable
entry. Prints anything missing; exits with status 1 if something is.

    python tools/check_coverage.py                  # the repo's game system
    python tools/check_coverage.py path/to/file.gst

Run wiki_import.py first (it fills the cache), then build.py.
"""

import json
import re
import sys
import xml.etree.ElementTree as ET
from pathlib import Path

from wiki_import import (BASE_DEVICE, DEVICES_PAGE, EXCLUDE_RULES, INDEXES, LABELS_PAGE,
                         MARTIAL_ARTS_PAGE, NOT_RULES, PROGRAMS_PAGE, TRAITS_PAGE, WEAPON_CHART,
                         cache_path, current_text, link_targets, parse_glossary, parse_weapon_chart,
                         plain, wiki_table, wiki_tables)

HERE = Path(__file__).resolve().parent
TARGET = HERE.parent / "Dogs of War.gst"


def norm(s: str) -> str:
    return re.sub(r"[^a-z0-9]", "", s.lower().replace("º", "").replace("°", ""))


def cached(title: str):
    path = cache_path(title)
    if not path.exists():
        raise SystemExit(f"'{title}' isn't in the cache. Run wiki_import.py first.")
    return json.loads(path.read_text(encoding="utf-8"))


def main() -> None:
    target = Path(sys.argv[1]) if len(sys.argv) > 1 else TARGET
    root = ET.parse(target).getroot()
    ns = {"b": root.tag.split("}")[0].strip("{")}
    rules = {norm(r.get("name")) for r in root.iterfind("b:sharedRules/b:rule", ns)}
    profiles = {norm(p.get("name")) for p in root.iterfind("b:sharedProfiles/b:profile", ns)}
    entries = {norm(e.get("name")) for e in root.iterfind("b:sharedSelectionEntries/b:selectionEntry", ns)}
    skipped = {norm(n) for n in EXCLUDE_RULES}
    missing: dict[str, list[str]] = {}

    def need(what: str, name: str, found: bool) -> None:
        if not found and norm(name) not in skipped:
            missing.setdefault(what, []).append(name)

    # Rules from every menu and category.
    for family, (menu, cat) in INDEXES.items():
        names = [label for t, label in link_targets(cached(menu)["text"]) if t not in NOT_RULES]
        names += [t for t in cached("_list_cat_" + cat) if t not in NOT_RULES]
        for n in dict.fromkeys(names):
            need(f"{family} rules", n, norm(n) in rules)
    for page, family, suffix in ((TRAITS_PAGE, "Weapon Trait", "Trait"), (LABELS_PAGE, "Label", "Label")):
        for g in parse_glossary(cached(page)["text"], page, family):
            base = re.sub(r"\s*\(.*\)$", "", g["heading"])
            need(f"{family}s", g["heading"],
                 norm(g["heading"]) in rules or norm(f"{base} ({suffix})") in rules)

    # Every weapon on the chart, as a profile (MULTI modes fold into one).
    for w in parse_weapon_chart(cached(WEAPON_CHART)["text"]):
        base = re.sub(r"\s*\((?:Anti-materiel|AP|Shock) Mode\)$", "", w["name"])
        need("Weapon profiles", w["name"], norm(w["name"]) in profiles or norm(base) in profiles)
        weapon = re.sub(r"\s*\([^)]*Mode\)$", "", w["name"])
        need("Weapon entries", weapon, norm(weapon) in entries or w["name"] == "Suppressive Fire Mode")

    # Hacking programs, devices, Martial Arts levels, deployed items.
    head, rows = wiki_table(current_text(cached(PROGRAMS_PAGE)["text"]), "Attack MOD")
    for r in rows:
        n = plain(r[0])
        need("Hacking programs", n, norm(n) in profiles and norm(n) in rules and norm(n) in entries)
    head, rows = wiki_table(current_text(cached(DEVICES_PAGE)["text"]), "Program 1")
    for r in rows:
        n = plain(r[0])
        need("Hacking devices", n, norm(n) in entries and (n == BASE_DEVICE or norm(n) in rules))
    head, rows = wiki_table(current_text(cached(MARTIAL_ARTS_PAGE)["text"]), "Attack MOD")
    for r in rows:
        n = f"Martial Arts L{plain(r[0])}"
        need("Martial Arts levels", n, norm(n) in profiles and norm(n) in entries)
    chart = current_text(cached(WEAPON_CHART)["text"])
    for head, rows in wiki_tables(chart, "Deployable"):
        for r in rows:
            n = plain(r[0])
            need("Deployed items", n, any(p.startswith(norm(n)) and p.endswith("deployed") for p in profiles))

    if missing:
        for what, names in missing.items():
            print(f"Missing {what}: {', '.join(dict.fromkeys(names))}")
        sys.exit(1)
    print(f"Everything the wiki lists is in the catalogue: {len(rules)} rules, {len(profiles)} profiles, "
          f"{len(entries)} selectable entries. Left out on purpose: {', '.join(sorted(EXCLUDE_RULES))}.")


if __name__ == "__main__":
    main()
