# Dogs of War

An **unofficial, non-commercial, fan-made** mercenary-company game mode for *Infinity N5*. It's made as a love letter to Corvus Belli.

Not affiliated with or endorsed by Corvus Belli S.L. *Infinity* and all related names are the property of Corvus Belli S.L.

## What it is

Players command mercenary companies. Each company has:
- **One custom TAG**, assembled from a chassis (S6, S7, or S8), components, and a Signature slot, plus a fully custom **pilot**.
- Up to **5 Elite Guns**: specialists.
- **Hired Guns** as free standard issue. Up to 5 infantry can be on the table at once.

Each round runs in phases: **Impetuous → Pilot → Elite Guns → Hired Guns → Reinforcement**.

Unique systems:
- Reinforcements and Speedball drop pods.
- TAGs called in by their pilots, and shared reserve TAGs.
- Pilots who can dismount, and jockey enemy TAGs. This deliberately brings back N4's Pilot rule, which N5 dropped.

You need the Infinity N5 rules to play. They're free on the official [Infinity wiki](https://infinitythewiki.com). This mode documents only what it changes or adds: start with [`rules/core-rules.md`](rules/core-rules.md).

## Repository layout

| Path | Contents |
|---|---|
| `Dogs of War.gst` | The New Recruit game system: currencies, categories and limits, the force, company-wide items, every rule, and the full N5 armory. **Generated**; must stay at the repo root. |
| `Mercenary Company.cat` | The company catalogue: pilots, TAG chassis, Elite Guns and Hired Guns. **Generated**; must stay at the repo root. |
| `data/` | **The source of the catalogue.** `system.json` (currencies, categories, limits, stat layouts), `company.json` (units and their options), `rules.json` (our own rules as they appear in-app). |
| `rules/core-rules.md` | The rules: how Dogs of War changes and adds to N5, with links to every N5 chapter. |
| `rules/armory.md` | Every weapon, skill, piece of equipment and hacking program, plus our own rules, with short summaries and links. Generated. |
| `rules/n5-index.md` | Every page of the official N5 rules on the wiki, chapter by chapter. Generated. |
| `rules/summaries.json` | Our one-line summaries of the N5 rules, used in the catalogue and in `armory.md`. |
| `design/` | Design documents. Start with `00-foundations.md`; the list-builder blueprint is `01-catalogue-structure.md`. |
| `tools/` | The build (`build.py`), the wiki import (`wiki_import.py`), the coverage check (`check_coverage.py`), and the BattleScribe schema the build validates against (`schema/`). |

## Using the list builder

Open New Recruit and choose **Add or Remove games → Add from Github**. Enter `OptimusPrimarch/DogsOfWar`.

## Maintaining the catalogue

**The catalogue is generated.** `Dogs of War.gst` and `Mercenary Company.cat` are rebuilt from scratch from `data/`, the N5 armory and the rule summaries. Make changes in those files, then rebuild. Anything edited directly in the New Recruit Editor is lost on the next build, so use the editor to look and test, not to change.

```
python tools/build.py
```

The build:
- writes both files in the BattleScribe 2.03 XML New Recruit reads, and checks every id and link;
- validates both against the official schema, if the `xmlschema` package is installed (`pip install xmlschema`);
- raises each file's revision when its content changes, so New Recruit picks up the update;
- refreshes `rules/armory.md` and `rules/n5-index.md`;
- lists the placeholders still to design.

Close the New Recruit Editor before building, because it saves its in-memory copy over the files.

**Editing the company (`data/company.json`).** Each unit has:
- a category;
- a cost in Requisition, Command Tokens or Capacity;
- a profile;
- skills and equipment written the way a profile prints them ("Dodge (PH=11)"). Each one links to its rule, with the bracketed part shown after the name;
- fixed weapons;
- option lists. A price goes on each option, not on the weapon, so the same weapon can cost different amounts in different places. An option can also change the weapon's stats there (`"mods": {"PS": "-1"}`).

Upgrades can add a category (Lieutenant) or remove one (Start in Reserve takes an Elite Gun out of the Deployed limit). A TAG chassis with a `capacity` caps the Capacity of everything mounted on it. The `_howto` block at the top of the file sums this up.

**Updating the N5 armory** (after new errata):

```
python tools/wiki_import.py --refresh
python tools/build.py
python tools/check_coverage.py
```

- `wiki_import.py` pulls the N5 armory from the wiki into `tools/wiki/n5_data.json`:
  - the Weapon Chart, with the deployed-item stat lines;
  - every common skill, special skill, piece of equipment, hacking program, ammunition type, special weapon, weapon trait, label and game state;
  - the Hacking Devices and Martial Arts levels;
  - an index of every rules page.

  It takes its lists from both the wiki's menus and its categories. The raw pages are cached in `tools/wiki/cache/`, which isn't committed.
- `check_coverage.py` reads the wiki's own lists from that cache and confirms each item is in the built game system.
- Tri-Core, an N4 Fireteam rule the wiki marks as gone from N5, is left out (`EXCLUDE_RULES` in `wiki_import.py`).

**Editing locally with New Recruit.** Make the New Recruit data folder a link to your clone, so New Recruit reads the repo's files directly:

```
mklink /J "%USERPROFILE%\Documents\NewRecruit\data\Dogs of War" "C:\path\to\DogsOfWar"
```

## Status

Early design. Nothing is balanced yet. The units in `data/company.json` are placeholders carried over from the first attempt, until the chassis, pilots, Elite Guns and Hired Guns are designed.
