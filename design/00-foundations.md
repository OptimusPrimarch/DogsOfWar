# Dogs of War — Infinity N5 Mercenary Game Mode (v0.10 draft)

A **non-commercial, fan-made game mode for Infinity N5**, intended as a love letter to Corvus Belli.

**How to read this doc:** N5 is the baseline for everything. This document records only:
1. What we **change** from N5.
2. What we **add** on top.

Anything not mentioned here follows N5. We reference N5 rules rather than reproducing them.

Status tags:
- **LOCKED**: agreed.
- **PROPOSED**: my recommendation, waiting on your call.
- **OPEN**: needs discussion.
- **CUT**: removed.

---

## Decision log

| # | Topic | Decision | Status |
|---|---|---|---|
| 1 | Baseline | Infinity N5: dice, attributes, weapons, range bands, AROs, armor, states. Specific N4 rules are brought back where N5 dropped something we need (§6.1). | **LOCKED** |
| 2 | Identity | Mercenary-company game mode in the Infinity universe. Non-commercial. No satire unless the setting supports it. | **LOCKED** |
| 3 | Rounds | 3 | **LOCKED** |
| 4 | Turn structure | Phases: Pilot → Elite → Trooper → Reinforcement. In each phase, one player takes a standard active turn, then the other. Only models of that phase's type spend Orders. | **LOCKED** |
| 5 | Order economy | Option C: the Regular pool is recounted at the start of each player's turn within a phase, minus Orders already spent this round. Tracked with tokens. Troopers are Irregular. The Lieutenant Order can be spent in any phase. | **LOCKED** (§2.1) |
| 5a | Initiative | The initiative player goes first in every phase. Scenarios scored at the end of the round or game, plus AROs, offset the advantage (as in N5). | **LOCKED** |
| 5b | Impetuous | First in the round, before the Pilot phase | **LOCKED** |
| 6 | Lieutenant | Costs credits on any eligible model, the pilot included. NCO costs more. Using the Lieutenant Order reveals who the Lieutenant is, which is the counterweight. | **LOCKED** |
| 7 | Command Tokens | Fixed N5 pool, slightly enlarged, so they dwindle over the game. Expanded uses. | **LOCKED** |
| 8 | Suppressive Fire | N5 state, unchanged, including how long it lasts (believed to be until the model next activates; check the N5 text) | **LOCKED** |
| 9 | Force cap | 1 TAG or pilot + 10 infantry on the table. A second pilot (Elite) may also call in a reserve TAG, for most of your Command Tokens. | **LOCKED** |
| 10 | Allocation | 60–100 credits | **LOCKED** |
| 11 | Elites | Up to 5, including reserves. Profile + 1 kit. Cap expandable with Command Tokens. A second pilot is an expensive Elite option. | **LOCKED** |
| 12 | Troopers | 0 credits; Irregular; shared profile; equipment templates. Corpsman and Spotter are specialists. Renamed from "Grunts," which is an existing Infinity unit. | **LOCKED** |
| 13 | Fireteams | Dropped | **LOCKED** |
| 14 | Reinforcement | Arrive in the Reinforcement phase and act with their own Orders. Arriving isn't an action. | **LOCKED** (leaning) |
| 15 | Arrival methods | Drop pod (Command Token), else Deployment (Tactical), else deployment zone | **LOCKED** |
| 16 | Deployment (Tactical) | New skill; every reinforcing model has it | **LOCKED** |
| 17 | Calldowns | Orbital and aerial, with Speedballs as the baseline | **LOCKED** |
| 18 | Replacement TAG | Stock lineup costed in Command Tokens; called in by a pilot | **LOCKED** |
| 19 | Pilots | Fully custom. Mount and dismount use N4's rules, made free with any movement skill. Eject uses N5's Transmutation (Escape System). Jockey enemy TAGs with WIP vs WIP. Can steal unmanned TAGs. | **LOCKED** |
| 20 | TAG chassis | S6, S7, S8. Built from components. No Heat. | **LOCKED** |
| 21 | Signature slot | Every TAG gets one slot for its "special cool thing." Not called an ultimate; most options have no prerequisites. | **LOCKED** |
| 22 | Miniatures | Corvus Belli miniatures recommended; N5 silhouettes for every unit | **LOCKED** |
| 23 | Board | 36"×36", very dense | **LOCKED** |
| 24 | Victory | Objectives | **LOCKED** |
| 25 | Mode | PvP first. PvPvE is the very last thing we add; it might be static emplacements that ARO, like the Qaz creatures in some scenarios. | **LOCKED** (PvPvE deferred) |
| 26 | List-building tool | New Recruit catalogue as the source of truth, hosted in a new public repo, **Dogs of War**. Cards generated from it later. | **LOCKED** (§8) |

---

## 1. Identity — LOCKED

**What the mode adds to Infinity:** a mercenary company you build to your heart's content.
- A **custom TAG**, assembled from chassis, components, and a Signature slot.
- A **custom pilot**.
- A pool of **Elite specialists**, modeled on the specialists in standard Infinity armies.
- **Troopers** as standard issue.

How it differs from *Infinity Deathmatch: TAG Raid*, Corvus Belli's official TAG-centered free-for-all:

| | TAG Raid | This mode |
|---|---|---|
| Format | 2–4 player free-for-all | 1v1, or 1v1 plus AI hostiles |
| Focus | TAGs are the stars | One TAG supporting up to 10 infantry |
| Engine | CodeOne | Full N5, with phases |
| Building | Not confirmed whether TAGs can be customized | TAGs built from components; custom pilots; specialist pool |
| Unique systems | Multiplayer | Reinforcements, Speedball calldowns, replacement TAGs, pilots who dismount and jockey enemy TAGs |

---

## 2. Round structure — LOCKED (details PROPOSED)

In every phase, the initiative player takes a standard N5 active turn, and the opponent reacts with AROs. Then the roles swap. Only models of that phase's type may spend Orders.

| # | Phase | Who spends Orders | Notes |
|---|---|---|---|
| 0 | **Start of round** | Nobody | Initiative |
| 1 | **Impetuous** | Impetuous troops | First in the round, regardless of phase |
| 2 | **Pilot** | Pilots and the TAG they're in | Includes a second pilot taken as an Elite |
| 3 | **Elite** | Elites | |
| 4 | **Trooper** | Troopers | The standard N5 turn. Renamed from "Tactical" so it isn't confused with N5's Tactical Phase, the start-of-turn bookkeeping step. |
| 5 | **Reinforcement** | New arrivals | Arrivals deploy, then act with their own Orders. Arriving isn't an action. |

### 2.1 Order economy — LOCKED: Option C, with Troopers Irregular

| Source | Type | Spent by | When |
|---|---|---|---|
| Pilot | Regular (pool) | Whoever is eligible in the current phase | Any phase |
| Each Elite | Regular (pool) | Whoever is eligible in the current phase | Any phase |
| Pilot's Tactical Awareness | Irregular | The pilot (and their TAG) | Pilot phase |
| Lieutenant Order | Special | The Lieutenant (N5) | **Any phase** (the exception) |
| Each Trooper | Irregular | That Trooper only | Trooper phase |

**Available pool at the start of each phase** = Regular Orders from your surviving Pilot and Elites − Regular Orders you've already spent this round. It can't go below 0.

- Leftover pool Orders carry down to the Trooper phase. N5 lets Irregular troopers receive Regular Orders from the pool.
- The TAG's ceiling in the Pilot phase is: the pool (pilot + Elites) + Tactical Awareness, + the Lieutenant Order if the pilot is the Lieutenant. With 5 Elites that's up to 7–8 Orders. Every one of them leaves an Elite standing idle.
- Bookkeeping stays small: the pool is at most about 6 Orders, because Troopers track their own.

**LOCKED: token method (same result, no arithmetic)**
1. At the start of the round, take one Order token for each Regular model.
2. Discard a token whenever you spend a Regular Order.
3. At the start of **each of your turns** within a phase, discard one unspent token for each Regular model you lost since your previous turn. If you have no tokens left, you lose nothing more.

**LOCKED: each player counts at the start of their own turn within a phase,** as in N5. A first-player TAG that kills Elites also costs the opponent those Orders. AROs and scenario design keep this in check. *(We considered and rejected a simultaneous count for both players.)*

**LOCKED: the initiative player goes first in every phase.** As in N5, scenarios scored at the end of the round or game offset the first-mover advantage.

---

## 3. Orders and command — LOCKED

| Rule | Detail |
|---|---|
| **Lieutenant** | Required. Costs credits. The pilot and some Elites can take it. Using the Lieutenant Order reveals the Lieutenant (N5). |
| **NCO** | Costs more credits than Lieutenant |
| **Command Tokens** | The N5 pool, slightly enlarged. They are not regained. Uses: everything N5 allows, plus drop pods, replacement TAGs, expanding the Elite cap, and calldowns. |

---

## 4. Force building — LOCKED

| Slot | Rule |
|---|---|
| **Allocation** | 60 or 100 credits |
| **Pilot + TAG** | One. Pilot fully custom. TAG = chassis + components + Signature. |
| **Elites** | Up to 5, including reserves. Fixed profile + 1 kit. Cap expandable with Command Tokens. |
| **Second pilot** | An expensive Elite option. They can spend **most of your Command Tokens** to call in a reserve TAG from the stock lineup, as early as the first Pilot phase. This allows two TAGs on the table. Intended; both players have the option. |
| **Troopers** | 0 credits. Fill the remaining infantry slots. |
| **On-table cap** | 1 TAG or pilot + 10 infantry. A reserve TAG called in by a second pilot is the only way to field a second TAG. |

**PROPOSED:** seed Elite and component prices from N5 points (roughly N5 points ÷ 3, rounded), then simplify into price bands where equal cost means roughly equal power.

---

## 5. Reinforcement and calldowns — LOCKED

- **Timing:** reinforcements arrive in the **Reinforcement phase**, then act with their own Orders.
- **Throttle:** the 10-model cap is the only limit.

**Arrival methods.** Use the first that applies:
1. **Drop pod (costs a Command Token):** anywhere on the board. It scatters and damages whatever it lands on. Speedballs are the baseline.
2. **Deployment (Tactical):** a new skill that every reinforcing model has. The model must be placed within Zone of Control of an allied model and out of line of sight of every enemy.
3. **Deployment zone:** only if neither of the above is possible.

**Reserves:**
- **Elites** come only from reserves built before the game.
- **Trooper** reserves are unlimited.

**Replacement TAG:**
- Choose from a stock lineup, each TAG costed in Command Tokens. Price them so a TAG takes **most of the pool**.
- A pilot calls it in during the Pilot phase. This can be a surviving first pilot replacing a lost TAG, or a second pilot calling in a reserve TAG.
- **PROPOSED:** it lands in that round's Reinforcement phase.

**Calldowns:** orbital and aerial support, built on the Speedball baseline.

---

## 6. Pilots and TAGs — LOCKED

| Rule | Detail |
|---|---|
| **Mount / dismount** | N4's rules (ported, §6.1), with our change: free with any movement skill |
| **Eject** | N5's **Transmutation (Escape System)** (called Escape System in N4). The profile the TAG turns into is the company's custom pilot. |
| **Jockey** | Pilots only. End any movement in base contact with an enemy TAG, then roll WIP vs WIP face-to-face. |
| **Unmanned TAGs** | A pilot can climb into an enemy TAG whose pilot has dismounted, and take it |

**TAG builder:**
- **Chassis** in three sizes: S6, S7, S8.
- **Weapon and system components** on mounts.
- **Signature slot:** one special ability or signature piece of gear. Most options have no prerequisites.
- **Capacity** keeps each build coherent. Credits keep the whole force balanced.
- No Heat.

**Pilots — PROPOSED:**
- Skills + sidearm + 1–2 gear.
- When dismounted, the pilot fights as an infantry model.

---

### 6.1 Rules ported from N4 — LOCKED

N5 stays the baseline, because it's the edition Corvus Belli maintains. When N5 dropped a rule we need, we bring the N4 version back and list it here. Each entry names the rule, why we need it, and anything we change about it.

| N4 rule | Why we need it | Our changes |
|---|---|---|
| Pilot mount/dismount (manned TAGs) | N5 removed it, and pilots getting in and out is core to this mode | Mounting and dismounting is free with any movement skill. Pilots may also mount enemy TAGs (jockeying and stealing unmanned TAGs, see above). |

## 7. Elites and Troopers — LOCKED (lists PROPOSED)

**Elite pool:** Hacker, Doctor, Engineer, Forward Observer, Paramedic, Sniper, Missile Launcher, an Officer who can be Lieutenant, Heavy Infantry, and a **second pilot**.

**Troopers:** one shared profile. Templates change equipment only.

| Template | Equipment | Specialist? |
|---|---|---|
| Rifleman | Combi Rifle | |
| Gunner | Spitfire | |
| Grenadier | Light Grenade Launcher | |
| AT Gunner | Panzerfaust | |
| Corpsman | Paramedic + lighter weapon | Yes |
| Spotter | Forward Observer + lighter weapon | Yes |

---

## 8. List-building tool — LOCKED: New Recruit first, cards later

### Recommendation
Build the **New Recruit catalogue as the single source of truth**. Generate printable cards from it later.

| | New Recruit catalogue | Hand-built cards |
|---|---|---|
| Rule enforcement | The builder enforces the Allocation, Elite cap, slots, and Capacity | Players check legality by hand |
| Changing a price | Edit once; every list updates | Reprint every affected card |
| Sharing | Players load it from a GitHub repo, on web or mobile | Print-and-play files |
| At the table | Text roster, less tactile | Tactile, and you physically "assemble" the TAG |
| Polish for the love letter | Functional | High |

**Why not choose:** cards made by hand alongside the catalogue would mean two copies of the same data to keep in sync. Instead, the catalogue files (.gst / .cat) are structured data, so a script can read them and lay out unit, weapon, and component cards once balance settles. Cards become a generated output, never a second copy.

The full catalogue blueprint is in [`01-catalogue-structure.md`](01-catalogue-structure.md).

### How New Recruit shapes the design
- **Write rules as data constraints wherever possible:** slot counts, min/max limits, cost limits. Prose exceptions are hard to enforce in a builder.
- **Cost types:** Credits, and Command Tokens (for pre-game spends like Elite cap expansion). Capacity could be a third cost type limited per TAG. **Prototype this early** to confirm the editor can cap a cost within one unit.
- **Expanding the Elite cap:** an option that costs Command Tokens and raises the Elite limit. The editor's modifiers should handle this.
- **Profile layouts:** set up N5-style unit attributes and weapon profiles once, and reuse them everywhere.

### Hosting
- New Recruit loads any GitHub repo with the .gst/.cat files **at the repo root**, via "Add or Remove games" → "Add from Github."
- **LOCKED:** the public repo **OptimusPrimarch/DogsOfWar** holds both the catalogue (.gst/.cat at the root) and the design docs (in `design/`).
- This repo is the single home for the design docs. The old copy in `project-blaster` is an archive.

---

## 9. Cut list

| Cut | Why |
|---|---|
| Helldivers theme and satire | Satire stays only where the Infinity setting supports it |
| TAG Heat | Not in N5 |
| Primers and Detonators | Only Anthem's chassis variety was kept |
| "Ultimate" / Core abilities | Replaced by the Signature slot |
| Size-agnostic bases; true line of sight for TAGs | Replaced by Corvus Belli miniatures and N5 silhouettes |
| Command Points (CP) | Replaced by Command Tokens |
| Our Overwatch rule | Replaced by N5 Suppressive Fire |
| "Rally" reinforcement | Replaced by Deployment (Tactical) |
| Fireteams | Simplicity |
| Free Lieutenant on the pilot | The Lieutenant now costs credits |
| Order economy options A and B | Chose C, with Troopers Irregular |
| The names "Grunt" and "Tactical" (phase) | Clash with an existing Infinity unit and with N5's Tactical Phase |

---

## 10. Open questions

1. **PvPvE:** deferred to last. Starting idea: static hostile emplacements that only ARO.

## 11. Numbers to set during balancing

- Command Token starting pool (the N5 pool, slightly enlarged).
- Command Token prices: drop pod, each stock TAG ("most of the pool"), Elite cap expansion.
- Credit prices for pilots, Elites, kit, Lieutenant, NCO, chassis, components, and Signature options.
- Capacity per chassis (S6, S7, S8).
