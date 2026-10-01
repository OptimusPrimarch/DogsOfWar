# Dogs of War — New Recruit Catalogue Structure (v0.1 draft)

A blueprint for building the Dogs of War list builder in the **New Recruit (NR) Data Editor**. Game rules live in `00-foundations.md`. This document covers how to represent them as catalogue data.

Status tags match the foundations doc: **PROPOSED** / **OPEN** / **LOCKED**.

---

## 1. The editor's building blocks, in database terms

A catalogue is a small database. If you know SQL, most of it maps directly.

| Editor concept | What it is | SQL analogy |
|---|---|---|
| **Game system file** (`.gst`) | Shared definitions every catalogue uses | Schema plus lookup tables |
| **Catalogue file** (`.cat`) | The selectable content (units, options) | Data rows |
| **Cost type** | A number every entry can carry, totalled across a list (Credits, Command Tokens, Capacity) | A numeric column that gets `SUM()`med |
| **Profile type** | The column layout of a stat line (e.g. MOV, CC, BS…) | A table definition |
| **Profile** | One stat line using a profile type | A row in that table |
| **Category** | A tag on entries. Lists group by category, and limits can count by it. | A lookup/tag column you `GROUP BY` |
| **Force entry** | The "army" container a list is built inside | The parent table of a list |
| **Selection entry** | Anything a player can pick. Type is `unit`, `model`, or `upgrade`. | A row a player inserts |
| **Selection entry group** | A pick-list of entries, e.g. "Left Arm hardpoint" | A set of allowed values |
| **Shared entry / group** | Defined once in a library, reused anywhere | A table you join to |
| **Entry link** | "Offer that shared entry here" | A foreign key |
| **Info link** | "Show that shared rule or profile here" | A foreign key to reference data |
| **Constraint** | A min/max limit on a count or a cost, within a scope | A `CHECK` constraint |
| **Modifier** (+ **condition** / **repeat**) | Changes a value when something is true, optionally once per occurrence | A computed column or trigger |
| **Scope** | Where a limit or condition counts: self, parent, force, roster, a category… | The `WHERE` clause |
| **"And all child selections"** | Include everything nested underneath | A recursive query over the subtree |

### Features we use that only New Recruit has
These don't work in the old BattleScribe app. That's fine, because New Recruit is our only target.

| Feature | Why we need it |
|---|---|
| **Error / warning / info modifiers** | Custom messages such as "Over Capacity". This is how we enforce TAG Capacity. |
| **Custom messages on constraints** | Messages like "Elite limit: {current}/{value}" instead of the default text |
| **`exactly` constraint type** | Cleaner than a matching min and max pair |
| **Extra modifier operations** | Multiply, divide, cumulative add, and more, if pricing ever needs them |
| **`limit::Credits` query** | Lets rules react to the Allocation the player chose (60 or 100), if we ever need that |

---

## 2. Files and repository layout — PROPOSED

```
DogsOfWar/
├── Dogs of War.gst          ← game system: types, categories, force entry, shared library
├── Mercenary Company.cat    ← the company: chassis, pilots, Elites, Troopers
├── README.md
└── design/
```

- **New Recruit only finds `.gst` and `.cat` files at the repo root.** Keep them there.
- **Save uncompressed** (`.gst` / `.cat`, not `.gstz` / `.catz`). The uncompressed files are plain XML, so Git can show line-by-line changes between versions. A compressed file shows up as one opaque blob.
- **One catalogue for now.** If you later want company archetypes with different Elite pools, each becomes its own `.cat` sharing the same `.gst`.
- **Expect to share it by link.** New Recruit only lists games in its official directory if they aren't a homebrew of an existing system. Dogs of War probably won't qualify. Players add it with **Add or Remove games → Add from Github → `OptimusPrimarch/DogsOfWar`**.

---

## 3. Cost types — PROPOSED

| Cost type | Visible | Default limit | Used for |
|---|---|---|---|
| **Credits** | Yes | 100 (players change it to 60 when creating the list) | Everything purchasable: the Allocation |
| **Command Tokens** | Yes | The starting pool (TBD) | Pre-game spends only, such as expanding the Elite cap. The roster shows what's left to start the game with. |
| **Capacity** | Yes | None | TAG components. There's one custom TAG per list, so the list total equals that TAG's Capacity used, which gives a free running total. |

Command Tokens spent during the game (drop pods, replacement TAGs, calldowns) aren't tracked by the list builder.

---

## 4. Profile types — PROPOSED

Use the column order of the current N5 profile charts, so Infinity players read the stat lines instantly.

| Profile type | Columns | Used by |
|---|---|---|
| **Trooper** | MOV, CC, BS, PH, WIP, ARM, BTS, W, S, Orders | Pilots on foot, Elites, Troopers |
| **TAG** | MOV, CC, BS, PH, WIP, ARM, BTS, STR, S, Capacity | Chassis |
| **Weapon** | Copy the N5 weapon chart columns exactly (range bands, burst, damage, ammo, traits) | Every weapon |
| **Signature** | Effect, Uses | Signature slot options |

- **Orders** holds Regular, Irregular, or Regular + Tactical Awareness, so the activation economy is visible on every card.
- Skills and equipment are **rules**, not profiles (see §8).
- For reference, the old community Infinity N3 data used three profile types: Wounds and Structure stat lines (MOV, CC, BS, PH, WIP, ARM, BTS, W or STR, S, AVA, Cost, SWC), and Weapon (B, DAM, Ammo, Special). Ours follows the same idea, updated for N5.

---

## 5. Categories — PROPOSED

There are two kinds, kept separate on purpose.

**Phase categories** are *primary*. They decide where a unit appears in the roster, so the list reads in activation order.

| Category | Contains |
|---|---|
| **Company** | Briefing, Expanded Contract |
| **Pilot Phase** | Chassis + pilot entries, second pilot |
| **Elite Phase** | Elites |
| **Trooper Phase** | Troopers |

**Slot categories** are *secondary*. They exist so limits can count them.

| Category | Counted by |
|---|---|
| **Custom TAG** | Exactly 1 per company |
| **Elite** | The Elite cap. The second pilot is in the Pilot Phase category *and* the Elite category, so it acts in the Pilot phase but counts toward the Elite cap. |
| **Lieutenant** | Exactly 1 |
| **NCO** | Price only, for now |
| **Specialist** | Reference for scenarios. Elites that are specialists, plus Corpsman and Spotter. |
| **Deployed** | The 10-infantry starting cap |

This split is the key idea of the whole layout: **where a unit acts** (phase) and **which limits it counts toward** (slot) are separate tags.

---

## 6. Entry tree — PROPOSED

```
Mercenary Company  (force entry)
│
├── Company Briefing            [Company]           auto-added (min 1); reference only, 0 cost
│     └── rules: phase order, Deployment (Tactical), Jockey, Mount/Dismount (N4 port),
│         stock TAG lineup with Command Token prices
│
├── Expanded Contract (+1 Elite) [Company]          costs Command Tokens; repeatable
│
├── <Chassis name> (S6 / S7 / S8)   [Pilot Phase, Custom TAG]   one entry per chassis
│     ├── TAG profile (includes its Capacity limit), Chassis Trait rule
│     ├── Hardpoint: <mount name> (Light|Medium|Heavy)   group, max 1   ← one group per mount
│     │     └── links to the shared weapon groups this size may take
│     ├── Systems                    group, max N        → links to shared Systems
│     ├── Signature                  group, exactly 1    → links to shared Signature options
│     └── Pilot                      link to shared Pilot, exactly 1
│           ├── Skills               group
│           ├── Sidearm              group, exactly 1
│           ├── Gear                 group, 1–2
│           └── Lieutenant / NCO     upgrades (credits)
│
├── <Elite name>                 [Elite Phase, Elite, Deployed (+Specialist)]
│     ├── Trooper profile, fixed weapons and skills
│     ├── Kit                        group, max 1   → links to shared Elite Kit
│     ├── Lieutenant                 upgrade, only on Elites allowed to be Lieutenant
│     └── Start in Reserve           upgrade, 0 cost → removes the Deployed category
│
├── Second Pilot                 [Pilot Phase, Elite, Deployed]
│     └── link to shared Pilot (same options as the TAG pilot)
│
└── Trooper — <template>         [Trooper Phase, Deployed (+Specialist)]   one entry per template
      └── info link to the shared Trooper profile; template weapons
```

Why these choices:
- **The pilot sits inside the chassis.** The pilot and TAG activate together and print as one unit card. A chassis can't be left without a pilot.
- **There's one entry per chassis,** not one generic "TAG" entry, because each chassis has its own hardpoint layout and Capacity. Every chassis links to the same shared weapon and system libraries, so nothing is duplicated.
- **Each Trooper template is its own entry.** The roster then reads "Trooper — Gunner" instead of a generic Trooper with an option ticked. All templates share one profile through an info link, so a stat change is made once.
- **The shared Pilot is defined once.** The TAG pilot and the second pilot both link to it.

---

## 7. How each list-building rule is enforced — PROPOSED

| Rule (from foundations) | Mechanism |
|---|---|
| Allocation of 60 or 100 credits | Credits roster limit, set when creating the list |
| Exactly 1 custom TAG | Custom TAG category: `exactly 1`, scope force |
| Exactly 1 Lieutenant | Lieutenant category: `exactly 1`, scope force |
| Up to 5 Elites, including reserves | Elite category: `max 5`, scope force. A modifier adds +1 to that max for each Expanded Contract in the force (a repeat). |
| Up to 10 infantry at the start | Deployed category: `max 10`, scope force. "Start in Reserve" triggers a modifier on its Elite that removes the Deployed category. |
| Pre-game Command Token spends | Command Tokens roster limit = starting pool; Expanded Contract costs Command Tokens |
| One weapon per mount | Each hardpoint group: `max 1` |
| Mount size (a mount takes its size or smaller) | Which shared size groups the hardpoint links to. A Medium mount links to Light and Medium. |
| **TAG Capacity** | **Error modifier on the chassis.** Condition: *Capacity, scope self, all child selections, greater than N* → error "Over Capacity (max N)". N is fixed per chassis. *(Prototype first; see §10.)* |
| Exactly 1 Signature | Signature group: `exactly 1` |
| Elite kit: 1 extra item | Kit group: `max 1` |
| Pilot gear: 1–2 | Gear group: `min 1, max 2` |
| NCO costs more than Lieutenant | Prices only |
| Corpsman and Spotter are specialists | Specialist category on those two template entries |

---

## 8. The shared library (in the `.gst`) — PROPOSED

| Shared item | Contents |
|---|---|
| **Weapon entries** | One per N5 weapon: profile only, **no price** |
| **Weapon groups by size** | `Weapons: Light`, `Weapons: Medium`, `Weapons: Heavy`. They contain links to weapon entries, and the links carry the price (see below). |
| **Systems** | TAG system components |
| **Signature options** | Signature-slot abilities |
| **Elite Kit** | The kit pool Elites choose 1 from |
| **Pilot** | The full pilot build (skills, sidearm, gear, Lieutenant / NCO) |
| **Trooper profile** | The one shared Trooper stat line |
| **Rules: N5 references** | Skills and equipment by name, plus publication and page, with no rules text copied |
| **Rules: Dogs of War** | Our own rules, in our own words: Deployment (Tactical), Jockey, phase order, and N4 ports (each marked as an N4 port) |
| **Publications** | "Infinity N5 Core Rules" (Corvus Belli) and "Dogs of War" (this repo) |

### Price on the link, not on the weapon
A weapon is defined **once** (its profile), but it can be offered in several places at different prices. For example, a Spitfire on a TAG mount costs Credits **and** Capacity; as Elite kit it costs only Credits.

So the price lives **where it's offered.** Each link to a weapon carries a *Set cost* modifier for that context. Modifiers on a link change the target for that link only.

SQL analogy: the weapon table has no price column. Price lives in the junction table between "weapon" and "where it's offered."

---

## 9. Text and IP hygiene — PROPOSED

- **N5 content:** names, stat values, and a publication + page reference. Don't paste rules text. Players need the N5 rules anyway.
- **Our content:** written in our own words.
- **N4 ports:** mark them in the rule name or description, e.g. "Mount/Dismount (N4)", matching the ports table in `00-foundations.md` §6.1.

---

## 10. First prototype: TAG Capacity — PROPOSED

Build this throwaway test before anything else. It checks the one rule that depends on an untested editor feature.

1. Create a test game system with two cost types: **Credits** and **Capacity**.
2. Add one entry, "Test Chassis" (type `unit`). Its Capacity limit is 5.
3. Inside it, add a group "Hardpoints" with three upgrades, each costing **Capacity 2**. Allow up to 3 selections.
4. On "Test Chassis", add a modifier:
   - **Field:** error. **Operation:** Add. **Message:** "Over Capacity (max 5)".
   - **Condition:** Capacity, in **Self**, **and all child selections**, filter **any**, **greater than** 5.
5. Load it in New Recruit and build a list:
   - Pick 2 upgrades (Capacity 4). Expect **no error**.
   - Pick all 3 (Capacity 6). Expect **"Over Capacity"**.

**If the error doesn't fire,** try these fallbacks in order:
- **(B)** Put a constraint on the "Hardpoints" group instead: `max 5`, field Capacity, scope parent, all child selections, with a custom message.
- **(C)** Since every list has exactly one custom TAG, put a force-level limit on a "TAG Component" category's Capacity. Set its value from the chosen chassis with modifiers.
- **(D)** Drop numeric Capacity and rely on hardpoint slots alone.

---

## 11. Suggested build order

1. **Capacity prototype** (§10).
2. **`.gst` skeleton:** cost types, profile types, categories, the force entry and its limits.
3. **Library basics:** N5 rule references, the Trooper profile, a handful of weapons in the size groups.
4. **Troopers.** They're the simplest: 0 credits, no options.
5. **Elites:** kit, Lieutenant, Start in Reserve.
6. **One chassis end to end,** including the pilot and Signature.
7. **The remaining chassis,** which are mostly copies of the first with different hardpoints.
8. **Briefing and Expanded Contract.**
9. **Playtest lists.** Later, generate cards from the `.gst` and `.cat` files.

---

## 12. Open questions

1. **Trooper reinforcements:** can an arriving Trooper take any template, or only templates from your starting lineup? If only the starting lineup, the roster needs nothing more. If any template, the Briefing should list them all.
2. **Stock TAG lineup:** reference only (in the Briefing), or selectable in the list so players can pre-plan a reserve TAG?
3. **Allocation size:** does 60 vs 100 change anything besides credits, such as the Elite cap or the Command Token pool? If so, `limit::Credits` can drive it.
4. **Launch scope:** how many chassis per silhouette (S6, S7, S8) for the first playable version?
