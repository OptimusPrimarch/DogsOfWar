# Dogs of War

An **unofficial, non-commercial, fan-made** mercenary-company game mode for *Infinity N5*. It's made as a love letter to Corvus Belli.

Not affiliated with or endorsed by Corvus Belli S.L. *Infinity* and all related names are the property of Corvus Belli S.L.

## What it is

Players command mercenary companies. Each company has:
- **One custom TAG**, assembled from a chassis (S6, S7, or S8), components, and a Signature slot, plus a fully custom **pilot**.
- Up to **5 Elite** specialists.
- **Troopers** as free standard issue. Up to 10 infantry can be on the table at once.

Each round runs in phases: **Impetuous → Pilot → Elite → Trooper → Reinforcement**.

Unique systems:
- Reinforcements and Speedball drop pods.
- Replacement TAGs.
- Pilots who can dismount, and jockey enemy TAGs.

You need the Infinity N5 rules to play. They're free on the official [Infinity wiki](https://infinitythewiki.com). This mode documents only what it changes or adds: start with [`rules/core-rules.md`](rules/core-rules.md).

## Repository layout

| Path | Contents |
|---|---|
| `rules/core-rules.md` | The rules: how Dogs of War changes and adds to N5, with links to every N5 chapter. |
| `rules/armory.md` | Every weapon, skill and piece of equipment in the catalogue, with a short summary and a link to its official rule. Generated; don't edit by hand. |
| `rules/summaries.json` | Our one-line summaries of the N5 rules, used in the catalogue and in `armory.md`. |
| `design/` | Design documents. Start with `00-foundations.md`; the list-builder blueprint is `01-catalogue-structure.md`. |
| `Dogs of War.json` | The New Recruit game system. It must stay at the repo root. |
| `tools/` | Scripts that import the N5 armory from the wiki and build it into the game system. See below. |

## Using the list builder

Once the catalogue is published, open New Recruit and choose **Add or Remove games → Add from Github**. Enter `OptimusPrimarch/DogsOfWar`.

## Maintaining the catalogue

**Editing locally.** Clone this repo. Then make the New Recruit data folder `Documents\NewRecruit\data\Dogs of War` a link to the clone, so the New Recruit Editor works on the repo's own file:

```
mklink /J "%USERPROFILE%\Documents\NewRecruit\data\Dogs of War" "C:\path\to\DogsOfWar"
```

**Updating the N5 armory** (after new errata, or after editing `rules/summaries.json`). Close the New Recruit Editor first, because it would save its in-memory copy over the build.

```
python tools/wiki_import.py --refresh
python tools/build_gst.py
```

- `wiki_import.py` pulls the Weapon Chart and every skill, equipment, ammunition, trait and state page from the wiki into `tools/wiki/n5_data.json`. The raw pages are cached in `tools/wiki/cache/`, which isn't committed.
- `build_gst.py` writes that data into `Dogs of War.json`:
  - Weapon profiles, including MULTI weapons as one row with every ammo option.
  - Rules, each with its summary and its wiki link.
  - A selectable entry for every weapon, special skill and piece of equipment, gathered in `Armory: …` groups.
  - A fresh `rules/armory.md`.
- Everything imported is tagged with the *Infinity N5 Wiki* publication, which is how the next build finds and replaces it. Hand-made entries are never touched, unless a hand-made weapon has the same name as a wiki weapon. To keep a hand-tuned copy of a wiki weapon, rename it.
- Faction-named skills are left out (see `EXCLUDE_RULES` in `wiki_import.py`).

## Status

Early design. Nothing is balanced yet.
