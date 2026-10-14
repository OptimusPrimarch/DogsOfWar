# Dogs of War — New Recruit Catalogue Structure (v0.2 draft)

A blueprint for building the Dogs of War list builder in the **New Recruit (NR) Data Editor**. Game rules live in `00-foundations.md`. This document covers how to represent them as catalogue data.

Status tags match the foundations doc: **PROPOSED** / **OPEN** / **LOCKED**.

---

## 1. The editor's building blocks, in database terms

A catalogue is a small database. If you know SQL, most of it maps directly.

| Editor concept | What it is | SQL analogy |
|---|---|---|
| **Game system file** (`.gst`) | Shared definitions every catalogue uses | Schema plus lookup tables |
| **Catalogue file** (`.cat`) | The selectable content (units, options) | Data rows |
| **Cost type** | A number every entry can carry, totalled across a list (Requisition, Command Tokens, Capacity) | A numeric column that gets `SUM()`med |
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
| **`limit::Requisition` query** | Lets rules react to the Allocation the player chose (60 or 100), if we ever need that |

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

## 3. Cost types — Requisition LOCKED, the rest PROPOSED

| Cost type | Visible | Default limit | Used for |
|---|---|---|---|
| **Requisition** | Yes | 100 (players change it to 60 when creating the list) | Everything purchasable: the Allocation |
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
| **Hacking Program Profile** *(built)* | Attack MOD, Opp. MOD, PS, Burst, Target, Skill Type, Special | Hacking programs, from the wiki's Hacking Programs Chart |
| **Martial Arts Profile** *(built)* | Attack MOD, Opponent MOD, Burst MOD | Martial Arts L1–L5 |
| **Deployable Profile** *(built)* | ARM, BTS, STR, S | Mines and devices once they're on the table |

- **Orders** holds Regular, Irregular, or Regular + Tactical Awareness, so the activation economy is visible on every card.
- Skills and equipment are **rules**, not profiles (see §8).
- For reference, the old community Infinity N3 data used three profile types: Wounds and Structure stat lines (MOV, CC, BS, PH, WIP, ARM, BTS, W or STR, S, AVA, Cost, SWC), and Weapon (B, DAM, Ammo, Special). Ours follows the same idea, updated for N5.

---

## 5. Categories — main four LOCKED (2026-10-14), the rest PROPOSED

**Unit categories (LOCKED)** are *primary*. Each unit has one, and it decides where the unit appears in the roster. **The phases match them**, so the list reads in activation order. These are the categories the catalogue already uses.

| Category | Contains | Acts in | Limit in the catalogue |
|---|---|---|---|
| **TAG** | The custom TAG chassis | Pilot phase, with its pilot | Exactly 1 |
| **Pilot** | The pilot, and a second pilot | Pilot phase | 1–2 |
| **Elite** | Elites | Elite phase | Up to 5 |
| **Trooper** | Troopers | Trooper phase | Up to 10 |

**Other categories (PROPOSED)** are *secondary*. They exist so limits and scenario rules can count them.

| Category | Counted by |
|---|---|
| **Company** | Briefing and Expanded Contract, which aren't units |
| **Elite** (as a secondary category) | Put on the second pilot, so it counts toward the Elite cap while acting in the Pilot phase |
| **Lieutenant** | Exactly 1 |
| **NCO** | Price only, for now |
| **Specialist** | Reference for scenarios. Elites that are specialists, plus Corpsman and Spotter. |
| **Deployed** | The 10-infantry starting cap |

---

## 6. Entry tree — LOCKED (pilot and TAG are separate entries)

```
Mercenary Company  (force entry)
│
├── Company Briefing            [Company]           auto-added (min 1); reference only, 0 cost
│     └── rules: phase order, Deployment (Tactical), Jockey, Mount/Dismount (N4 port),
│         stock TAG lineup (universal, reference only) with Command Token prices
│
├── Expanded Contract (+1 Elite) [Company]          costs Command Tokens; repeatable
│
├── Pilot                        [Pilot]                              exactly 1
│     └── link to shared Pilot build
│           ├── Trooper profile (the pilot on foot)
│           ├── Skills               group
│           ├── Sidearm              group, exactly 1
│           ├── Gear                 group, 1–2
│           └── Lieutenant / NCO     upgrades (Requisition)
│
├── <Chassis name> (S6 / S7 / S8)   [TAG]                              exactly 1 across all chassis
│     ├── TAG profile (includes its Capacity limit), Chassis Trait rule
│     ├── Hardpoint: <mount name> (Light|Medium|Heavy)   group, max 1   ← one group per mount
│     │     └── links to the shared weapon groups this size may take
│     ├── Systems                    group, max N        → links to shared Systems
│     └── Signature                  group, exactly 1    → links to shared Signature options
│
├── Second Pilot                 [Pilot, Elite, Deployed]              optional
│     └── link to the same shared Pilot build
│
├── <Elite name>                 [Elite, Deployed (+Specialist)]
│     ├── Trooper profile, fixed weapons and skills
│     ├── Kit                        group, max 1   → links to shared Elite Kit
│     ├── Lieutenant                 upgrade, only on Elites allowed to be Lieutenant
│     └── Start in Reserve           upgrade, 0 cost → removes the Deployed category
│
└── Trooper — <template>         [Trooper, Deployed (+Specialist)]   one entry per template
      └── info link to the shared Trooper profile; template weapons
```

### Why the pilot and TAG are separate
- **It matches the table.** The pilot becomes its own model whenever they dismount, jockey an enemy TAG, or eject (Transmutation turns the TAG into the pilot's profile). Separate entries mean separate cards, one per physical model.
- **Each card stays readable.** The pilot card holds skills and gear. The TAG card holds hardpoints, systems, and Signature. Nesting them made one very long card.
- **Validation loses nothing.** There's exactly one primary pilot and exactly one custom TAG per company, so which pilot drives which TAG is never ambiguous, and nothing has to link them. The second pilot never gets a custom TAG, only stock TAGs called in during the game.
- **Both act in the Pilot phase,** and the roster lists the TAG and Pilot categories together at the top.

### Why the rest is built this way
- **There's one entry per chassis,** not one generic "TAG" entry, because each chassis has its own hardpoint layout and Capacity. Every chassis links to the same shared weapon and system libraries, so nothing is duplicated.
- **Launch scope is 5 chassis:** up to 2 at S6, up to 2 at S7, and 1 at S8.
- **Each Trooper template is its own entry.** The roster then reads "Trooper — Gunner" instead of a generic Trooper with an option ticked. All templates share one profile through an info link, so a stat change is made once.
- **The shared Pilot build is defined once.** The Pilot and the Second Pilot both link to it.
- **Stock TAGs are reference only,** in the Briefing. They're universal, and they're bought with Command Tokens during the game, not in the list.

---

## 7. How each list-building rule is enforced — PROPOSED

| Rule (from foundations) | Mechanism |
|---|---|
| Allocation of 60 or 100 Requisition | Requisition roster limit, set when creating the list |
| Exactly 1 custom TAG | TAG category: `exactly 1`, scope force |
| 1 pilot for it, plus an optional second pilot | Pilot category: `min 1`, `max 2`, scope force |
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
| **Pilot build** | The full pilot build (profile, skills, sidearm, gear, Lieutenant / NCO). Linked by both the Pilot and the Second Pilot. |
| **Stock TAG lineup** | Profiles for the universal stock TAGs. Shown in the Briefing, never selectable. |
| **Trooper profile** | The one shared Trooper stat line |
| **Rules: N5 references** | Every N5 skill, piece of equipment, weapon trait, ammunition type and state: name, type, a one-line summary in our own words, and a link to the official rule. No rules text copied. Built by `tools/build_gst.py`. |
| **Armory entries** *(built)* | A selectable entry for every N5 weapon (all its modes, plus its trait rules), special skill and piece of equipment, with no price. There's also an entry for each hacking program, and Martial Arts comes as one entry per level (L1–L5). They're gathered in five groups, `Armory: Ranged Weapons`, `Armory: CC Weapons`, `Armory: Special Skills`, `Armory: Equipment` and `Armory: Hacking Programs`, ready to link and price. Skills and equipment that attack with range bands (Forward Observer, MediKit…) carry their weapon profile. Hacking Devices list their programs, and mines and deployable devices carry their deployed stat line. |
| **Rules: Dogs of War** | Our own rules, in our own words: Deployment (Tactical), Jockey, phase order, and N4 ports (each marked as an N4 port) |
| **Publications** | "Infinity N5 Core Rules" (Corvus Belli) and "Dogs of War" (this repo) |

### Price on the link, not on the weapon
A weapon is defined **once** (its profile), but it can be offered in several places at different prices. For example, a Spitfire on a TAG mount costs Requisition **and** Capacity; as Elite kit it costs only Requisition.

So the price lives **where it's offered.** Each link to a weapon carries a *Set cost* modifier for that context. Modifiers on a link change the target for that link only.

SQL analogy: the weapon table has no price column. Price lives in the junction table between "weapon" and "where it's offered."

---

## 9. Text and IP hygiene — PROPOSED

- **N5 content:** names, stat values, a one-line summary in our own words, and a link to the official rule on the wiki. Don't paste rules text. Players need the N5 rules anyway. The summaries live in `rules/summaries.json`.
- **Our content:** written in our own words.
- **N4 ports:** mark them in the rule name or description, e.g. "Mount/Dismount (N4)", matching the ports table in `00-foundations.md` §6.1.

---

## 10. First prototype: TAG Capacity — PROPOSED

Build this throwaway test before anything else. It checks the one rule that depends on an untested editor feature.

1. Create a test game system with two cost types: **Requisition** and **Capacity**.
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
4. **Troopers.** They're the simplest: 0 Requisition, no options.
5. **Elites:** kit, Lieutenant, Start in Reserve.
6. **The Pilot build** and the Pilot and Second Pilot entries that link to it.
7. **One chassis end to end:** hardpoints, systems, Signature, Capacity.
8. **The remaining chassis** (5 at launch), which are mostly copies of the first with different hardpoints.
9. **Briefing** (with the stock TAG lineup) **and Expanded Contract.**
10. **Playtest lists.** Later, generate cards from the `.gst` and `.cat` files.

---

## 12. Open questions

1. **Trooper reinforcements:** can an arriving Trooper take any template, or only templates from your starting lineup? If only the starting lineup, the roster needs nothing more. If any template, the Briefing should list them all.
2. **Allocation size:** does 60 vs 100 change anything besides Requisition, such as the Elite cap or the Command Token pool? If so, `limit::Requisition` can drive it.
3. **File format for Add from Github:** the game system is currently `Dogs of War.json`, the NewRecruit Editor's JSON format, at the repo root. §2 assumes `.gst`/`.cat`. Test whether New Recruit's Add from Github loads the JSON. If it doesn't, save the system as `.gst` (XML) and point `tools/build_gst.py` at that.
4. ~~**The built file vs this blueprint.**~~ **Resolved 2026-10-14:** keep Requisition and the TAG / Pilot / Elite / Trooper categories, with phases matching the categories (§3, §5).
