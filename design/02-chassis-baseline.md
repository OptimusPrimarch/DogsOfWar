# Dogs of War — Chassis Baseline (v0.1)

Decision 39: each TAG chassis starts from the **average N5 TAG of its Silhouette**, then gets tuned into its own design. This doc records those averages.

**Source and method.** All TAG-type profiles from the official Infinity Army data, across every active army (2026-10-14). Units that appear in several armies are counted once. MOV is converted to inches. Only averages and counts are recorded here, so no unit is named.

## Stat lines

| | Profiles | MOV | CC | BS | PH | WIP | ARM | BTS | STR | N5 points (median, range) |
|---|---|---|---|---|---|---|---|---|---|---|
| **S6** | 17 | 6-4 | 19 | 14 | 14 | 13 | 6 | 6 | 3 | 63 (49–93) |
| **S7** | 29 | 6-4 | 19 | 14 | 16 | 13 | 7 | 6 | 3 | 63 (48–122) |
| **S8** | **1** | 6-4 | 16 | 14 | 17 | 14 | 8 | 6 | 3 | 71 (71–72) |

Values are rounded averages. MOV is the most common value: 12 of 17 at S6 and 22 of 29 at S7 are 6-4.

How the stats spread:
- **ARM:** S6 is tight at 6. S7 splits evenly between 7 and 8 (11 profiles each), with outliers from 4 to 10.
- **BTS:** almost always 6, sometimes 9.
- **STR:** 3 on almost every TAG, 4 on three.
- **S6 and S7 are close.** S7 is a little tougher (ARM 7 against 6, PH 16 against 14) and otherwise the same.
- **S8 is a single TAG**, so its row describes one design, not an average. Treat it as one reference point and extrapolate from S7 rather than copying it.

## Standard kit

How many TAGs of each Silhouette carry each item. Dodge and BS Attack are common skills, so they're left out.

| | Skills | Equipment |
|---|---|---|
| **S6** | Tactical Awareness 17/17, Courage 13/17, GizmoKit 13/17, Remote Presence 10/17, Terrain 5/17 | ECM: Guided 15/17, ECM: Hacker 3/17 |
| **S7** | GizmoKit 29/29, Tactical Awareness 26/29, Courage 17/29, CC Attack 10/29, Remote Presence 8/29, Transmutation 7/29, Immunity 7/29 | ECM: Guided 25/29, ECM: Hacker 7/29, Repeater 3/29 |
| **S8** | Tactical Awareness, GizmoKit, Terrain, Religious Troop | 360° Visor, ECM: Guided, ECM: Hacker, Baggage |

**Suggested baseline kit for every chassis:** Tactical Awareness, Courage, GizmoKit and ECM: Guided, plus our Transmutation (Escape System) and Peripheral (Synchronized). Remote Presence is left out: N5 TAGs are remote-operated, and ours are crewed (decision 32).

## Weapons N5 TAGs carry most

These are a starting point for the hardpoint lists.

- **S6:** Heavy Flamethrower, Heavy Rocket Launcher, Heavy Machine Gun, AP Heavy Machine Gun, MULTI Marksman Rifle, Panzerfaust, AP Spitfire, Spitfire, CC Weapon, AP CC Weapon.
- **S7:** Heavy Flamethrower, AP Spitfire, MULTI Heavy Machine Gun, AP CC Weapon, Panzerfaust, Heavy Rocket Launcher, DA CC Weapon, Thunderbolt, Heavy Shotgun, Hyper-Rapid Magnetic Cannon.

## Next steps

1. Launch scope is five chassis (decision 20): two at S6, two at S7, one at S8. Each pair should move off the baseline in opposite directions, for example a fast light-armour design and a slow heavy-armour one.
2. Set each chassis's Capacity, its mounts and their sizes, and its Systems and Signature options.
3. Price them with the Requisition anchors in `00-foundations.md` §4.
