# Dogs of War — Points Formula (v0.1)

A general cost model for pricing chassis, pilot packages, Elite Guns and weapons in Requisition. It's inferred from N5's own prices: Corvus Belli doesn't publish its formula, and it varies by army, so treat these as rules of thumb, not exact costs.

## How it was found

Every single-model loadout in the official Infinity Army data was collected (2026-10-14): 2,904 loadouts with their N5 points. A ridge regression then estimated what N5 charges for each part of a profile:
- the troop type;
- each attribute point;
- each Order type;
- each skill, piece of equipment and weapon seen in at least 8 loadouts.

**How good it is.** The model explains 95% of the variation in N5 points, and is off by **about 2 points** for a typical loadout:

| Troop type | Loadouts | Median N5 points | Typical error |
|---|---|---|---|
| LI | 834 | 18 | 1.8 |
| MI | 762 | 25 | 1.7 |
| HI | 581 | 36 | 2.4 |
| SK | 244 | 25 | 1.7 |
| REM | 339 | 15 | 1.9 |
| WB | 120 | 14 | 2.2 |
| TAG | 14 | 62 | 4.0 |

Factions price the same things slightly differently, and that variation is most of the remaining error.

## The formula

**Cost = troop-type base + attributes + Orders + skills and equipment + weapons**

| Part | N5 points |
|---|---|
| **Attributes** (per point) | ARM **2.5**, BS **0.8**, WIP **0.6**, PH **0.5**, BTS **0.3**, CC **≈0** |
| **Wounds** (per point of VITA or STR) | **≈10** |
| **MOV** (per inch, both values added) | **0.5** |
| **Silhouette** | ≈0 |
| **Orders** | Regular **+4**, Tactical **+4**, Lieutenant **+3**, Irregular **+1.5**, Impetuous **−6** |
| **Troop-type base** | LI −28.4, MI −30.6, HI −32.9, TAG −31.8, SK −27.2, REM −28.8 |

The type bases look odd on their own because the attributes carry most of the cost. They only mean something once the full profile is added up.

What stands out:
- **Toughness is expensive.** A point of ARM costs three times a point of BS, and every wound costs about 10.
- **CC is close to free.** N5 doesn't charge for it, so melee value comes through skills such as Martial Arts and weapons instead.
- **Weapons and skills are smaller than they feel.** Most cost 0–8 points. The heavy hitters are an HMG or AP HMG (8–9), Spitfires (6–8), Plasma Rifle (7), Missile Launcher (6), No Wound Incapacitation (5) and Multispectral Visor L2–L3 (5–6.5).

## Worked examples

| Example | Model's estimate (N5 points) |
|---|---|
| Line light infantry: MOV 4-4, CC 13, BS 11, PH 10, WIP 13, ARM 1, BTS 0, VITA 1, Regular; Combi Rifle, Pistol, CC Weapon | 12 |
| Heavy infantry: MOV 4-2, CC 15, BS 13, PH 13, WIP 13, ARM 4, BTS 3, VITA 2, Regular; Combi Rifle, Pistol, CC Weapon | 28 |
| Same heavy infantry with Heavy Machine Gun instead of Combi Rifle | 34 |
| Our S7 baseline TAG (Regular + Tactical, Courage, GizmoKit, ECM: Guided) with a Heavy Machine Gun and Heavy Pistol | 64 |

## Requisition

**Proposal: 1 Requisition ≈ 1 N5 point.** It matches the anchors in `00-foundations.md` §4 without any scaling:
- **Elite Guns:** a heavy-infantry specialist with a support weapon is about 34 points. The Elite Gun anchor is about 33.
- **TAGs:** the S7 baseline TAG with an HMG is about 64 points. The "solid TAG + pilot" anchor is about 85, which leaves about 20–25 for the pilot.

How to use it:
- **Chassis:** price each S6/S7/S8 chassis on its baseline stat line, then price each component by what it changes. For example, extra armour costs about 2.5 per point of ARM, and jump jets cost what Super-Jump costs.
- **Pilot training packages:** keep packages loosely equal by building each to about the same total, say 3–5 points. For example, +3 BS (2.5) plus a minor skill, or one major skill on its own.
- **Elite Guns:** price each archetype's full profile with the formula, then round to a price band.
- **Hired Guns** stay free (#35). The model values a line trooper at about 12, which is part of why the in-play cap (#41) matters.
- **Small table:** on the 3'×3' table, discount long-range weapons (the Sniper, Missile Launcher and HMG families) below these N5 values (#41).

## Reference tables

These are the model's implied prices in N5 points. "Seen in" is the number of loadouts each estimate rests on, so items seen fewer times are rougher. Negative values usually mean the item comes bundled with a drawback the model can't see.

### Weapons

| Item | Points | Seen in |
|---|---|---|
| AP Heavy Machine Gun | +8.1 | 31 |
| Feuerbach | +7.8 | 23 |
| AP Spitfire | +7.7 | 52 |
| Portable Autocannon | +7.6 | 8 |
| Heavy Machine Gun | +7.5 | 119 |
| Plasma Rifle | +7.0 | 30 |
| Spitfire | +6.2 | 96 |
| Missile Launcher | +5.6 | 62 |
| MULTI Sniper Rifle | +5.5 | 67 |
| Mk12 | +5.2 | 33 |
| Red Fury | +4.8 | 75 |
| MULTI Marksman Rifle | +4.3 | 69 |
| T2 Sniper Rifle | +3.6 | 8 |
| AP + DA CC Weapon | +3.6 | 31 |
| Eclipse Grenades | +3.3 | 17 |
| Light Rocket Launcher | +3.1 | 17 |
| Kobra Pistol | +3.0 | 32 |
| E/M Carbine | +2.9 | 43 |
| K1 Combi Rifle | +2.9 | 20 |
| Chest Mine | +2.9 | 11 |
| Shock Marksman Rifle | +2.7 | 22 |
| Smoke Grenades | +2.6 | 96 |
| MULTI Rifle | +2.5 | 200 |
| AP Sniper Rifle | +2.3 | 14 |
| Breaker Combi Rifle | +2.3 | 37 |
| K1 Sniper Rifle | +2.2 | 8 |
| Viral CC Weapon | +2.1 | 21 |
| MULTI Pistol | +2.0 | 99 |
| Armed Turret | +1.9 | 16 |
| WildParrot | +1.9 | 9 |
| AP Marksman Rifle | +1.7 | 20 |
| E/Mitter | +1.7 | 79 |
| Combi Rifle | +1.5 | 404 |
| Smoke Grenade Launcher | +1.5 | 38 |
| Viral Rifle | +1.3 | 25 |
| Heavy Shotgun | +1.3 | 24 |
| Zapper | +1.1 | 129 |
| Grenade Launcher | +1.1 | 20 |
| Jammer | +1.0 | 9 |
| Heavy Pistol | +1.0 | 348 |
| AP CC Weapon | +1.0 | 92 |
| E/M Grenade Launcher | +1.0 | 11 |
| AP + Shock CC Weapon | +0.9 | 25 |
| Vulkan Shotgun | +0.8 | 44 |
| Viral Pistol | +0.8 | 48 |
| AP Rifle | +0.8 | 34 |
| AP Mine | +0.7 | 72 |
| T2 Rifle | +0.6 | 19 |
| Monofilament CC Weapon | +0.6 | 63 |
| AP Heavy Pistol | +0.5 | 82 |
| E/M Mine | +0.5 | 65 |
| Thunderbolt | +0.5 | 49 |
| DA CC Weapon | +0.5 | 280 |
| EXP CC Weapon | +0.5 | 49 |
| Disco Baller | +0.3 | 59 |
| Heavy Rocket Launcher | +0.3 | 60 |
| Assault Pistol | +0.3 | 92 |
| Cybermine | +0.3 | 40 |
| Breaker Pistol | +0.3 | 254 |
| Drop Bears | +0.2 | 49 |
| Silenced Pistol | +0.2 | 123 |
| Nanopulser | +0.2 | 243 |
| Shock Mine | +0.2 | 156 |
| PARA Mine | +0.2 | 30 |
| Mine Dispenser | +0.2 | 23 |
| T2 Boarding Shotgun | +0.1 | 10 |
| D-Charges | +0.1 | 651 |
| Akrylat-Kanone | +0.1 | 32 |
| Pistol | +0.1 | 1199 |
| Pitcher | -0.1 | 65 |
| Plasma Carbine | -0.1 | 15 |
| E/M CC Weapon | -0.1 | 92 |
| Boarding Pistol | -0.2 | 285 |
| Light Shotgun | -0.2 | 249 |
| Madtraps | -0.2 | 10 |
| Flammenspeer | -0.2 | 36 |
| Pulzar | -0.2 | 215 |
| Light Flamethrower | -0.3 | 54 |
| Viral Mine | -0.4 | 20 |
| Light Riotstopper | -0.4 | 37 |
| Adhesive Launcher Rifle | -0.4 | 65 |
| Blitzen | -0.5 | 33 |
| Shock CC Weapon | -0.5 | 117 |
| Rifle | -0.5 | 115 |
| Grenades | -0.5 | 58 |
| Flash Pulse | -0.8 | 407 |
| Chain-colt | -0.8 | 110 |
| Crazykoala | -0.8 | 18 |
| Breaker Rifle | -0.9 | 10 |
| Heavy Riotstopper | -0.9 | 46 |
| Panzerfaust | -0.9 | 127 |
| E/M Grenades | -1.0 | 37 |
| Boarding Shotgun | -1.1 | 295 |
| Submachine Gun | -1.1 | 262 |
| Trench-Hammer | -1.2 | 18 |
| Contender | -1.3 | 36 |
| E/Marat | -1.5 | 64 |
| Tactical Bow | -1.8 | 16 |
| Stun Pistol | -1.8 | 16 |
| Heavy Flamethrower | -1.8 | 104 |
| AP Submachine Gun | -1.8 | 100 |
| PARA CC Weapon | -1.9 | 515 |
| Chain Rifle | -2.0 | 128 |
| CC Weapon | -2.5 | 1606 |

### Skills

| Item | Points | Seen in |
|---|---|---|
| Mnemonica | +10.8 | 11 |
| Total Reaction | +5.4 | 27 |
| No Wound Incapacitation | +4.8 | 349 |
| Chain of Command | +4.3 | 70 |
| Strategos L1 | +4.1 | 17 |
| Engineer | +4.1 | 153 |
| Hidden Deployment | +3.6 | 140 |
| Marksmanship | +3.6 | 78 |
| Martial Arts L4 | +3.5 | 52 |
| Hacker | +3.5 | 322 |
| Neurocinetics | +3.0 | 21 |
| Infiltration | +2.8 | 204 |
| Triangulated Fire | +2.8 | 61 |
| Impersonation | +2.6 | 8 |
| Decoy | +2.6 | 85 |
| Forward Deployment | +2.4 | 234 |
| Parachutist | +2.4 | 137 |
| Protheion | +2.2 | 20 |
| Booty | +2.0 | 41 |
| Camouflage | +2.0 | 342 |
| Mimetism | +2.0 | 1113 |
| Combat Jump | +2.0 | 94 |
| Dogged | +1.9 | 130 |
| Warhorse | +1.9 | 325 |
| NCO | +1.9 | 179 |
| Regeneration | +1.9 | 70 |
| BS Attack | +1.6 | 549 |
| Sixth Sense | +1.6 | 130 |
| Forward Observer | +1.6 | 261 |
| Guard | +1.6 | 16 |
| Berserk | +1.4 | 128 |
| MediKit | +1.4 | 45 |
| Doctor | +1.4 | 70 |
| CC Attack | +1.3 | 147 |
| Minelayer | +1.2 | 134 |
| Specialist Operative | +1.2 | 376 |
| Transmutation | +1.1 | 17 |
| Strategic Deployment | +1.1 | 28 |
| Martial Arts L3 | +1.0 | 208 |
| Counterintelligence | +1.0 | 56 |
| Immunity | +0.9 | 895 |
| Discover | +0.8 | 50 |
| Courage | +0.8 | 1369 |
| Inspiring Leadership | +0.7 | 14 |
| Climbing Plus | +0.7 | 221 |
| Super-Jump | +0.6 | 271 |
| Surprise Attack | +0.6 | 395 |
| Dodge | +0.5 | 993 |
| Combat Instinct | +0.5 | 236 |
| Martial Arts L1 | +0.4 | 83 |
| Natural Born Warrior | +0.4 | 116 |
| Stealth | +0.4 | 943 |
| Terrain | +0.3 | 1069 |
| FT Master | +0.2 | 36 |
| Religious Troop | +0.2 | 538 |
| Infinity Team-Ops | +0.2 | 164 |
| Shasvastii | +0.1 | 79 |
| Tactical Awareness | +0.0 | 169 |
| Impetuous | -0.2 | 109 |
| Climb | -0.3 | 10 |
| Journalist | -0.3 | 10 |
| Limited Cover | -0.3 | 55 |
| Aerial | -0.6 | 11 |
| Number 2 | -0.7 | 133 |
| No Cover | -0.7 | 130 |
| Martial Arts L2 | -0.7 | 162 |
| Sensor | -0.8 | 105 |
| Tech-recovery | -0.9 | 16 |
| Peripheral | -1.1 | 102 |
| MetaChemistry | -1.2 | 35 |
| TAGCom | -1.2 | 11 |
| Paramedic | -1.2 | 100 |
| Technorganic | -1.7 | 25 |
| Remote Presence | -1.8 | 291 |
| Lieutenant | -1.9 | 198 |
| Jump | -2.1 | 55 |
| Gizmokit | -2.7 | 23 |
| Frenzy | -4.9 | 158 |
| G: Jumper | -11.2 | 9 |

### Equipment

| Item | Points | Seen in |
|---|---|---|
| Multispectral Visor L3 | +6.7 | 14 |
| Multispectral Visor L2 | +5.1 | 101 |
| Nanoscreen | +4.0 | 40 |
| Multispectral Visor L1 | +3.4 | 219 |
| MediKit | +2.6 | 174 |
| Hacking Device Plus | +2.5 | 26 |
| 360º Visor | +1.9 | 167 |
| Hacking Device | +1.2 | 177 |
| ECM: Hacker | +1.1 | 107 |
| Repeater | +1.1 | 110 |
| X Visor | +0.9 | 182 |
| Albedo | +0.8 | 152 |
| Holomask | +0.8 | 41 |
| Bangbomb | +0.6 | 72 |
| Deactivator | +0.5 | 205 |
| TinBot: Firewall | +0.1 | 66 |
| Holoprojector | -0.0 | 27 |
| Deployable Repeater | -0.2 | 65 |
| Deployable Cover | -0.3 | 16 |
| GizmoKit | -0.3 | 190 |
| Biometric Visor | -0.9 | 62 |
| Killer Hacking Device | -1.1 | 111 |
| Motorcycle | -1.7 | 35 |
| ECM: Guided | -1.8 | 22 |
| Baggage | -2.7 | 26 |
