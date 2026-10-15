# Dogs of War — Pilot Baseline (v0.1)

Decision 48: every pilot starts on one **trained-pilot line**, above the Hired Gun floor (#47). Pilots build up from it with training packages (#44), and equipment is chosen separately.

**Source.** Every non-TAG profile N5 attaches to a TAG unit, meaning its operators and pilots, from the official Infinity Army data (2026-10-14). There are only **8**, because N5's TAGs are mostly remote-operated, so treat this as a small sample. Five are LI, two HI and one MI.

## The survey

| | Median | Most common | Range |
|---|---|---|---|
| MOV | 4-4 | 4-4 (5), 6-2 (3) | |
| CC | 13 | 13 (5) | 13–22 |
| BS | 12 | 12 (3), 13 (3) | 11–13 |
| PH | 10 | 10 (5) | 10–13 |
| WIP | 13 | 13 (all 8) | |
| ARM | 1 | 1 (5) | 1–4 |
| BTS | 3 | 3 (all 8) | |
| S | 2 | 2 (all 8) | |

- **Skills:** Courage (7 of 8), Specialist Operative (6), Tactical Awareness (6) and Mimetism (5).
- **Wounds** read as 3–4, but that's an artefact: an operator shares its TAG's STR through Escape System.

## The trained-pilot line

| MOV | CC | BS | PH | WIP | ARM | BTS | VITA | S | Orders |
|---|---|---|---|---|---|---|---|---|---|
| 4-4 | 15 | 12 | 11 | 13 | 1 | 3 | 1 | 2 | Regular + Tactical Awareness |

- **Skills:** Courage, Tactical Awareness and Specialist Operative. Specialist Operative can be swapped for Doctor, Engineer, Hacker, Forward Observer and so on (#36).
- **Kit:** Pistol and CC Weapon. Sidearms and gear are bought separately.
- **Above the survey:** CC 15 and PH 11, one point above the Hired Gun floor in each (decided 2026-10-14), so a pilot is clearly better trained than a hired trooper. By the formula this costs about +0.5.
- **VITA 1**, the same as the floor. A second wound is a natural training package.

## Cost

By `03-points-formula.md` the line is worth about **20–21 Requisition**. At about 4 per training package (#44):

| | Packages | Requisition |
|---|---|---|
| Rookie | 1 | ~24 |
| Seasoned | 2 | ~28 |
| Veteran | 3 | ~32 |
| Any pilot with the extra package | +1 | +~4 |

A Veteran with the extra package and gear lands near the "fully kitted pilot" target of about 35–38 (`points-cheatsheet.md`).

## Training packages (v0.1)

Each package adds the stats and skills listed. A pilot can take each package once. Rookies take 1, Seasoned 2, Veterans 3, and any pilot can buy an **Extra Training Package** for 4 Requisition (#44). In the catalogue, picking a package raises the pilot's stat line directly.

**Value** is by `03-points-formula.md`. CC is counted at 0.25 a point, because the formula prices it at almost nothing and that would make melee packages look free. The target is about 4–5 per package.

| Package | Stats | Skills and equipment | Value |
|---|---|---|---|
| **Marksman** | BS +1 | Marksmanship | ~4.4 |
| **Duelist** | CC +6, PH +2 | Martial Arts L3, Dogged | ~5.4 |
| **Field Medic** | WIP +1, CC +3 | Doctor, Martial Arts L2, MediKit | ~5.9 |
| **Netrunner** | BTS +3 | Hacker, Hacking Device | ~5.6 |
| **Bruiser** | CC +3, BS +1, PH +1, ARM +2 | — | ~7.1 |
| **Combat Engineer** | WIP +1 | Engineer, GizmoKit | ~4.8 |
| **Spotter** | BS +1 | Forward Observer, Sixth Sense | ~4.0 |
| **Freerunner** | PH +3, CC +5 | Climbing Plus, Super-Jump, Mimetism (-3) | ~6.2 |
| **Ghost** | PH +1 | Mimetism (-6), Stealth | ~4.5 |
| **Hard to Kill** | — | No Wound Incapacitation | ~4.9 |

Rebalanced 2026-10-14. Packages now range from about 4 to 7. The Bruiser is still the priciest, because ARM +2 alone is about 5; watch it in playtest.

Medic and Hacker packages replace the separate specialist swap in #36: a pilot keeps Specialist Operative and gains the specialist skill from the package.
