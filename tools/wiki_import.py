"""Pull the N5 armory from the Infinity wiki (infinitythewiki.com) into
wiki/n5_data.json:

- every weapon on the Weapon Chart, plus the deployables' stat lines;
- every common skill, special skill, piece of equipment, hacking program,
  supportware program, ammunition type, special weapon, weapon trait, label
  and game state, with its type, label line and a link to the full rule;
- the Hacking Device table, the Hacking Programs Chart and the Martial Arts
  levels;
- an index of every page of the wiki's rules, chapter by chapter.

Rule lists come from both the wiki's navigation menus and its categories,
since each misses a few pages the other has.

What is extracted is game data, names and labels, never rules prose. The
rules text stays on the wiki (it is Corvus Belli's), and the catalogue
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

# Each rule family's navigation menu and wiki category.
INDEXES = {
    "Common Skill": ("Template:N5-section-common-skills", "Common Skills"),
    "Special Skill": ("Template:N5-section-special-skills", "Special Skills"),
    "Equipment": ("Template:N5-section-equipment", "Equipment"),
    "Ammunition": ("Template:N5-section-ammo-and-weaponry", "Ammunition and Weaponry"),
    "State": ("Template:N5-section-game-states", "Game States"),
}
# Single rules outside those lists, and the family each belongs to.
EXTRA_RULES = {"Hacking Area": "Hacking"}
TRAITS_PAGE, LABELS_PAGE = "Traits", "Labels"
PROGRAMS_PAGE, DEVICES_PAGE, BASE_DEVICE = "Hacking Programs Chart", "Hacking Device", "Hacking Device"
MARTIAL_ARTS_PAGE, WEAPON_CHART = "Martial Arts", "Weapon Chart"
SUPPORTWARE = "Supportware"            # category of the support hacking programs
MAIN_SECTIONS = "Template:Section-main-sections"
# Links in the menus that are chapters, overviews or charts, not rules.
NOT_RULES = {
    "Common Skills", "Special Skills", "Equipment", "Ammunition and Weaponry",
    "Ammunition", "Weaponry", "Weapon Chart", "Alternative Weapon Chart",
    "Ammunition Summary Chart", "Game States and Glossary", "States", "Terminology",
    "Alignment", "Labels", "Traits",
}
# Pages a link can redirect into that are chapters, not rules of their own.
NOT_RULE_PAGES = {"Skills and Equipment Module"}
# Rules left out of the catalogue. Tri-Core is still in the wiki's Special
# Skills category, but its page says it's an N4 rule (a Fireteam bonus) that
# no longer exists in N5.
EXCLUDE_RULES = {"Tri-Core"}
# In the ammo-and-weaponry lists, these are special weapons with their own
# rules pages rather than ammunition types.
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
    for t in dict.fromkeys(titles):
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


def listing(name: str, params: dict, key: str, refresh: bool) -> list[str]:
    """Page titles from a paged API list (category members, all pages),
    cached like pages."""
    path = cache_path("_list_" + name)
    if path.exists() and not refresh:
        return json.loads(path.read_text(encoding="utf-8"))
    titles, cont = [], {}
    while True:
        d = api({"action": "query", **params, **cont})
        titles += [p["title"] for p in d["query"][key]]
        if "continue" not in d:
            break
        cont = d["continue"]
        time.sleep(1)
    path.write_text(json.dumps(titles, ensure_ascii=False), encoding="utf-8")
    return titles


def category(name: str, refresh: bool) -> list[str]:
    return listing("cat_" + name, {"list": "categorymembers", "cmtitle": "Category:" + name,
                                   "cmnamespace": "0", "cmlimit": "500"}, "categorymembers", refresh)


# --- wikitext helpers -------------------------------------------------------

LINK = re.compile(r"\[\[\s*([^\]|]+?)\s*(?:\|\s*([^\]]*?)\s*)?\]\]")


def current_text(text: str) -> str:
    """Drop superseded pre-errata copies and unwrap errata highlight markers,
    leaving the rules as they currently stand."""
    text = re.sub(r"\{\{original\}\}.*?\{\{original-end\}\}", "", text, flags=re.S)
    text = re.sub(r"\{\{originalhighblock\}\}.*?\{\{originalhighblock-end\}\}", "", text, flags=re.S)
    text = re.sub(r"\{\{\s*(?:errata|original)highlight\w*(?:-end)?\s*\}\}", "", text, flags=re.I)
    text = re.sub(r"\{\{\s*erratahighblock(?:-end)?\s*\}\}", "", text, flags=re.I)
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
    if "#" in title and anchor is None:
        title, frag = title.split("#", 1)
        anchor = legacy_anchor(frag)
    url = SITE + urllib.parse.quote(title.replace(" ", "_"), safe="/():-_,'")
    return url + "#" + anchor if anchor else url


def clean_name(name: str) -> str:
    # The wiki spells "360° Visor" with a mangled character or an ordinal sign.
    return name.replace("�", "°").replace("º", "°")


def wiki_tables(text: str, header_cell: str) -> list[tuple[list[str], list[list[str]]]]:
    """Every {| … |} table whose header row has header_cell: its header cells
    and its rows of raw (wikitext) cells."""
    found = []
    for m in re.finditer(r"\{\|(.*?)\n\|\}", text, re.S):
        header, rows = [], []
        for chunk in re.split(r"\n\|-[^\n]*", m.group(1))[1:]:
            chunk = chunk.strip()
            if chunk.startswith("!"):
                if "colspan" not in chunk and not header:
                    header = [c.strip() for c in re.split(r"!!|\n!", chunk.lstrip("!"))]
            elif chunk.startswith("|"):
                rows.append([c.strip() for c in re.split(r"\|\||\n\|", chunk[1:])])
        if header_cell in header:
            found.append((header, rows))
    return found


def wiki_table(text: str, header_cell: str) -> tuple[list[str], list[list[str]]]:
    """The first table whose header row has header_cell."""
    return (wiki_tables(text, header_cell) or [([], [])])[0]


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


def section(text: str, heading: str) -> str:
    """The body of the == heading == section of a page."""
    m = re.search(r"^(=+)\s*" + re.escape(heading) + r"\s*\1\s*$(.*?)(?=^=+[^=\n]+=+\s*$|\Z)",
                  text, re.M | re.S)
    return m.group(2) if m else ""


def parse_glossary(text: str, page: str, family: str) -> list[dict]:
    """One rule per === heading === on the Traits or Labels page. Each
    heading links to a category, whose name is what redirects point at."""
    out = []
    for m in re.finditer(r"^===\s*\[\[\s*:Category:([^|\]]+?)\s*\|\s*([^\]]+?)\s*\]\]\s*===\s*$",
                         current_text(text), re.M):
        key, heading = m.group(1).strip(), m.group(2).strip()
        out.append({"key": key, "heading": heading, "name": heading, "family": family,
                    "type": None, "labels": None, "url": page_url(page, legacy_anchor(heading))})
    return out


def menu_links(text: str) -> list[tuple[str, str]]:
    return [(t, l) for t, l in link_targets(text) if t not in NOT_RULES]


def chapter_index(refresh: bool) -> list[dict]:
    """Every chapter of the wiki's rules and the pages its menu lists."""
    main = fetch_pages([MAIN_SECTIONS], refresh)[MAIN_SECTIONS]["text"]
    chapters = [t for t, _ in link_targets(main) if t != "Main Sections"]
    pages = fetch_pages(chapters, refresh)
    menus = {}
    for ch in chapters:
        text = (pages.get(ch) or {}).get("text", "")
        names = re.findall(r"\{\{\s*((?:n5-)?section-[^|}]*?)\s*\}\}", text)
        menus[ch] = ["Template:" + n[0].upper() + n[1:] for n in dict.fromkeys(names)
                     if n != "section-main-sections"]
    templates = fetch_pages(sorted({t for ts in menus.values() for t in ts}), refresh)
    index = []
    for ch in chapters:
        if not pages.get(ch):
            continue
        # A chapter's own menu names it in bold; other menus on its page
        # (the special skills list on Infinity Reinforcements) don't count.
        own = [templates[t]["text"] for t in menus[ch]
               if templates.get(t) and f"'''[[{ch}]]'''" in templates[t]["text"]]
        links, seen = [], set()
        for text in own:
            for target, label in link_targets(text):
                if target in seen or target == ch or target in chapters \
                        or target.startswith((":", "Category:")):
                    continue
                seen.add(target)
                links.append({"title": label.replace("_", " "), "url": page_url(target.replace("_", " "))})
        index.append({"chapter": ch, "url": page_url(pages[ch]["title"]), "pages": links})
    return index


def main() -> None:
    refresh = "--refresh" in sys.argv
    CACHE.mkdir(parents=True, exist_ok=True)

    menus = [m for m, _ in INDEXES.values()]
    idx = fetch_pages(menus + [WEAPON_CHART, TRAITS_PAGE, LABELS_PAGE, PROGRAMS_PAGE,
                               DEVICES_PAGE, MARTIAL_ARTS_PAGE], refresh)
    weapons, seen = [], {}
    for w in parse_weapon_chart(idx[WEAPON_CHART]["text"]):
        # The chart repeats a few rows (AP Rifle); keep the first, and say so
        # if a repeat disagrees with it.
        if w["name"] in seen:
            if w != seen[w["name"]]:
                print(f"Warning: '{w['name']}' appears twice with different stats; kept the first.")
            continue
        seen[w["name"]] = w
        weapons.append(w)
    # The chart ends with stat lines for deployed mines and devices, split
    # over more than one table.
    chart = current_text(idx[WEAPON_CHART]["text"])
    deployables = [dict(zip(head, (plain(c) for c in r)))
                   for head, rows in wiki_tables(chart, "Deployable") for r in rows]

    traits = parse_glossary(idx[TRAITS_PAGE]["text"], TRAITS_PAGE, "Weapon Trait")
    labels = parse_glossary(idx[LABELS_PAGE]["text"], LABELS_PAGE, "Label")

    # Rules named in the menus and categories, named as the menu shows them
    # ("Request Reinforcements" lives on the "Infinity Reinforcements" page).
    listed: dict[str, tuple[str, str]] = {}  # link target -> (family, display name)
    for family, (menu, cat) in INDEXES.items():
        entries = menu_links(idx[menu]["text"]) + [(t, t) for t in category(cat, refresh)
                                                   if t not in NOT_RULES]
        for target, label in entries:
            if target in listed:
                continue
            if family == "Ammunition":
                family_here = "Weaponry" if target in SPECIAL_WEAPONRY else "Ammunition"
            else:
                family_here = family
            listed[target] = (family_here, clean_name(label))
    for target, family in EXTRA_RULES.items():
        listed.setdefault(target, (family, target))

    # Hacking programs, from the chart.
    head, rows = wiki_table(current_text(idx[PROGRAMS_PAGE]["text"]), "Attack MOD")
    supportware = set(category(SUPPORTWARE, refresh))
    programs = []
    for r in rows:
        r += [""] * (len(head) - len(r))
        target = link_targets(r[0])[0][0] if link_targets(r[0]) else plain(r[0])
        family = "Supportware" if target in supportware else "Hacking Program"
        listed[target] = (family, plain(r[0]))
        programs.append({"name": plain(r[0]), **{h: plain(c) for h, c in zip(head[1:], r[1:])},
                         "links": [t for t, _ in link_targets(" ".join(r[1:]))]})

    # Hacking Devices: which programs each carries. The variants are
    # sections of the Hacking Device page.
    devices_text = current_text(idx[DEVICES_PAGE]["text"])
    head, rows = wiki_table(devices_text, "Program 1")
    devices = [{"name": plain(r[0]), "programs": [plain(c) for c in r[1:] if link_targets(c)]}
               for r in rows]

    # Martial Arts levels.
    head, rows = wiki_table(current_text(idx[MARTIAL_ARTS_PAGE]["text"]), "Attack MOD")
    martial_arts = [dict(zip(head, (plain(c) for c in r))) for r in rows]

    # Everything weapons and programs link to: traits, labels, states,
    # special weapon pages, ammunition.
    weapon_links = {t for w in weapons for t in w["links"]}
    program_links = {t for p in programs for t in p["links"]}
    pages = fetch_pages(sorted(set(listed) | weapon_links | program_links), refresh)

    rules: dict[str, dict] = {}       # rule name -> rule
    title_rule: dict[str, str] = {}   # page title -> rule name, for the page's main rule
    missing = []

    def add_rule(name, family, page_title, frag, text, target):
        rtype, lbl = classify(text)
        rules[name] = {"name": name, "family": family, "type": rtype, "labels": lbl,
                       "url": page_url(page_title, legacy_anchor(from_anchor(frag)) if frag else None),
                       "page": target}

    for target, (family, label) in listed.items():
        page = pages.get(target)
        if page is None:
            missing.append(target)
            continue
        title, frag = page["title"], page["fragment"]
        if title in (TRAITS_PAGE, LABELS_PAGE) or title in NOT_RULE_PAGES:
            continue
        name = clean_name(label)
        if name in EXCLUDE_RULES or name in rules:
            continue
        add_rule(name, family, title, frag, page["text"], target)
        title_rule.setdefault(title, name)
    # Pages only the weapon chart links to (special weapons, states).
    for target in sorted(weapon_links - set(listed)):
        page = pages.get(target)
        if page is None or page["title"] in title_rule or page["title"] in (TRAITS_PAGE, LABELS_PAGE) \
                or page["title"] in NOT_RULE_PAGES:
            continue
        family = "State" if page["title"].endswith(" State") else "Weaponry"
        add_rule(page["title"], family, page["title"], page["fragment"], page["text"], target)
        title_rule[page["title"]] = page["title"]
    # Hacking Device variants, each a section of the base device's page.
    for d in devices:
        if d["name"] != BASE_DEVICE and d["name"] not in rules:
            rtype, lbl = classify(section(devices_text, d["name"]))
            rules[d["name"]] = {"name": d["name"], "family": "Equipment", "type": rtype, "labels": lbl,
                                "url": page_url(DEVICES_PAGE, legacy_anchor(d["name"])),
                                "page": DEVICES_PAGE, "section": d["name"]}

    # Traits and labels sharing a name with a rule ("Intuitive Attack") get
    # "(Trait)" or "(Label)" so they stay distinguishable in NewRecruit.
    taken = {n.lower() for n in rules}
    for group, suffix in ((traits, "Trait"), (labels, "Label")):
        for g in group:
            base = re.sub(r"\s*\(.*\)$", "", g["name"])
            if base.lower() in taken or g["name"].lower() in taken:
                g["name"] = f"{base} ({suffix})"
        taken |= {g["name"].lower() for g in group}

    def by_key(group):
        # Redirects point into a section by its category name ("Disposable")
        # or by its heading ("Suppressive Fire (SF)"); accept either.
        out = {}
        for g in group:
            for k in (g["key"], g["heading"], g["name"], re.sub(r"\s*\(.*\)$", "", g["heading"])):
                out.setdefault(k.lower(), g["name"])
        return out
    glossary = {TRAITS_PAGE: by_key(traits), LABELS_PAGE: by_key(labels)}

    def resolve(target: str) -> str | None:
        """The rule a link points at, if it points at one."""
        page = pages.get(target)
        if page is None:
            return None
        if page["title"] in glossary:
            return glossary[page["title"]].get(from_anchor(page["fragment"] or "").lower())
        if target in listed and clean_name(listed[target][1]) in rules:
            return clean_name(listed[target][1])
        return title_rule.get(page["title"])

    for w in weapons:
        w["rules"] = sorted({r for t in w.pop("links") if (r := resolve(t))})
    for p in programs:
        p["rules"] = sorted({r for t in p.pop("links") if (r := resolve(t))} - {p["name"]})

    all_rules = list(rules.values()) + [{k: v for k, v in g.items() if k not in ("key", "heading")}
                                        for g in traits + labels]

    # The full index of the wiki's rules pages, chapter by chapter, plus the
    # pages no chapter menu lists.
    index = chapter_index(refresh)
    indexed = ({urllib.parse.unquote(p["url"][len(SITE):]).split("#")[0].replace("_", " ")
                for ch in index for p in ch["pages"]} | {ch["chapter"] for ch in index})
    used = {r["page"] for r in rules.values()} | {pages[r["page"]]["title"] for r in rules.values()
                                                  if pages.get(r["page"])}
    everything = listing("allpages", {"list": "allpages", "apnamespace": "0",
                                      "apfilterredir": "nonredirects", "aplimit": "500"},
                         "allpages", refresh)
    other = [t for t in everything if t not in indexed and t not in used
             and t not in ("Main Page", "Main Sections") and t not in EXCLUDE_RULES]

    OUT.write_text(json.dumps({
        "source": SITE,
        "attribution": "Infinity and all associated names and game data are © Corvus Belli S.L.",
        "weapons": weapons,
        "deployables": deployables,
        "hacking_programs": programs,
        "hacking_devices": devices,
        "martial_arts": martial_arts,
        "rules": all_rules,
        "index": index,
        "other_pages": [{"title": t, "url": page_url(t)} for t in other],
        "missing_pages": missing,
    }, indent=2, ensure_ascii=False), encoding="utf-8")

    fams: dict[str, int] = {}
    for r in all_rules:
        fams[r["family"]] = fams.get(r["family"], 0) + 1
    print(f"{len(weapons)} weapon profiles, {len(deployables)} deployables, {len(programs)} hacking "
          f"programs, {len(devices)} hacking devices, {len(martial_arts)} Martial Arts levels")
    print(f"{len(all_rules)} rules: " + ", ".join(f"{n} {f}" for f, n in fams.items()))
    print(f"Index: {len(index)} chapters, {sum(len(c['pages']) for c in index)} pages, "
          f"{len(other)} other pages")
    if missing:
        print(f"{len(missing)} linked pages not found on the wiki: {', '.join(missing)}")
    print(f"Wrote {OUT.relative_to(HERE)}")


if __name__ == "__main__":
    main()
