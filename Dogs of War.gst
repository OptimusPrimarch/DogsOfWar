<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<gameSystem id="sys-0ba1-943f-1bdf-3200" name="Dogs of War" revision="11" battleScribeVersion="2.03" authorName="OptimusPrimarch" authorUrl="https://github.com/OptimusPrimarch/DogsOfWar" xmlns="http://www.battlescribe.net/schema/gameSystemSchema">
  <readme>Dogs of War is an unofficial, non-commercial fan game mode for Infinity N5: mercenary companies built around one custom TAG and its pilot. Not affiliated with or endorsed by Corvus Belli S.L.; Infinity and all associated names, rules and game data are (c) Corvus Belli S.L. N5 weapon profiles and rule names come from the official Infinity wiki (https://infinitythewiki.com); rule summaries are our own, and each links to its full official text, which wins wherever the two differ. Dogs of War's own rules: https://github.com/OptimusPrimarch/DogsOfWar/blob/main/rules/core-rules.md</readme>
  <publications>
    <publication id="c98c-3c50-3d4f-04b5" name="Infinity N5 Wiki" shortName="N5 Wiki" publisher="Corvus Belli" publisherUrl="https://infinitythewiki.com" />
    <publication id="991d-8065-dcd4-a396" name="Dogs of War" shortName="DoW" publisher="OptimusPrimarch" publisherUrl="https://github.com/OptimusPrimarch/DogsOfWar" />
  </publications>
  <costTypes>
    <costType id="11c4-ce0d-6227-e31d" name="Requisition" defaultCostLimit="100" hidden="false" />
    <costType id="f3b0-ed43-d671-65c9" name="Command Tokens" defaultCostLimit="-1" hidden="false" />
    <costType id="9760-1ef0-60a7-4540" name="Capacity" defaultCostLimit="-1" hidden="false" />
  </costTypes>
  <profileTypes>
    <profileType id="9015-c633-f9c6-d937" name="Trooper">
      <characteristicTypes>
        <characteristicType id="0f14-8b05-a04e-0c7b" name="MOV" />
        <characteristicType id="f61b-bf6c-b56b-3540" name="CC" />
        <characteristicType id="c5a3-d039-8cfb-d6e3" name="BS" />
        <characteristicType id="0622-6e35-2324-c118" name="PH" />
        <characteristicType id="f1f5-0fb1-2440-a5fb" name="WIP" />
        <characteristicType id="30fe-164f-947f-0ba3" name="ARM" />
        <characteristicType id="1242-78b3-a9ac-5ad5" name="BTS" />
        <characteristicType id="78f8-22ed-b0ec-cc42" name="VITA" />
        <characteristicType id="d23b-1fa5-c26e-cd0e" name="S" />
        <characteristicType id="fe97-34df-d5d8-4f77" name="Orders" />
      </characteristicTypes>
    </profileType>
    <profileType id="da19-1546-508f-1dc4" name="TAG">
      <characteristicTypes>
        <characteristicType id="80be-e2cb-5927-98c3" name="MOV" />
        <characteristicType id="7f81-6698-29b8-57fa" name="CC" />
        <characteristicType id="a4b2-ea3b-d314-a9d0" name="BS" />
        <characteristicType id="f3ec-762a-c84c-d810" name="PH" />
        <characteristicType id="61dd-7489-88eb-68c4" name="WIP" />
        <characteristicType id="ff16-0c92-ce9e-e1c6" name="ARM" />
        <characteristicType id="3c24-00f6-b91a-9687" name="BTS" />
        <characteristicType id="8825-15dd-62d9-aec6" name="STR" />
        <characteristicType id="e584-99d0-09c9-3ec5" name="S" />
        <characteristicType id="e810-2f9c-ade7-d846" name="Capacity" />
      </characteristicTypes>
    </profileType>
    <profileType id="724b-5503-842a-da1d" name="Signature">
      <characteristicTypes>
        <characteristicType id="2b4c-1889-a83e-b341" name="Effect" />
        <characteristicType id="bbcc-59ca-b8e3-092c" name="Uses" />
      </characteristicTypes>
    </profileType>
    <profileType id="823d-0831-7e58-14c1" name="Ranged Weapon">
      <characteristicTypes>
        <characteristicType id="7046-e56f-ef50-74c9" name="8&quot;" />
        <characteristicType id="2ada-ee84-15b1-16de" name="16&quot;" />
        <characteristicType id="a76a-eeaf-1570-194a" name="24&quot;" />
        <characteristicType id="e949-94f9-a0ae-7cfb" name="32&quot;" />
        <characteristicType id="f7a4-faba-99f6-29fb" name="40&quot;" />
        <characteristicType id="91e4-92a2-a53d-3d19" name="48&quot;" />
        <characteristicType id="6afb-0457-2e94-f18a" name="96&quot;" />
        <characteristicType id="76b7-f614-c586-ebbc" name="PS" />
        <characteristicType id="84de-037e-e867-4da8" name="B" />
        <characteristicType id="d983-a03e-e480-712a" name="Ammo" />
        <characteristicType id="2f8f-e4af-90c5-d10c" name="Save Attr." />
        <characteristicType id="efdb-3922-b270-2241" name="Save Rolls" />
        <characteristicType id="766c-53d8-3f54-618d" name="Traits" />
      </characteristicTypes>
    </profileType>
    <profileType id="354b-86b7-6889-2cfb" name="CC Weapon">
      <characteristicTypes>
        <characteristicType id="8a39-81db-8fb4-7a5d" name="PS" />
        <characteristicType id="72d4-548e-6490-4171" name="B" />
        <characteristicType id="2915-1d89-9c05-198e" name="Ammo" />
        <characteristicType id="ab0c-f7a7-8c87-f00d" name="Save Attr." />
        <characteristicType id="e492-5807-b9f5-be97" name="Save Rolls" />
        <characteristicType id="337b-7a28-801d-7808" name="Traits" />
      </characteristicTypes>
    </profileType>
    <profileType id="3ad5-fa92-4523-377e" name="Hacking Program">
      <characteristicTypes>
        <characteristicType id="4b6c-3fd6-2b42-1f9e" name="Attack MOD" />
        <characteristicType id="cb83-ad55-e894-56bd" name="Opp. MOD" />
        <characteristicType id="8c33-a714-8975-d14b" name="PS" />
        <characteristicType id="d98a-b2cb-9190-5fbd" name="Burst" />
        <characteristicType id="6c84-83ff-69f2-6eec" name="Target" />
        <characteristicType id="8ffe-05cb-ef94-65c1" name="Skill Type" />
        <characteristicType id="90b5-3067-d7ae-e321" name="Special" />
      </characteristicTypes>
    </profileType>
    <profileType id="0e7f-f8f1-9e45-3b46" name="Martial Arts">
      <characteristicTypes>
        <characteristicType id="05fa-dfa4-8605-370f" name="Attack MOD" />
        <characteristicType id="534b-6794-d1a4-267f" name="Opponent MOD" />
        <characteristicType id="8042-b86e-642d-2051" name="Burst MOD" />
      </characteristicTypes>
    </profileType>
    <profileType id="2564-34d2-56a8-c283" name="Deployable">
      <characteristicTypes>
        <characteristicType id="e2e6-6087-7dae-458b" name="ARM" />
        <characteristicType id="2add-4cfc-b090-a1a7" name="BTS" />
        <characteristicType id="1211-9944-a753-8db7" name="STR" />
        <characteristicType id="3b73-88da-5889-e0e9" name="S" />
      </characteristicTypes>
    </profileType>
  </profileTypes>
  <categoryEntries>
    <categoryEntry id="ffaf-2784-a2f4-b6f0" name="TAG" hidden="false">
      <rules>
        <rule id="1c9c-815a-1bdd-0599" name="TAG" hidden="false">
          <description>The company's custom TAG. Acts in the Pilot phase, with its pilot.</description>
        </rule>
      </rules>
    </categoryEntry>
    <categoryEntry id="87f9-8f57-f1d0-ce32" name="Pilot" hidden="false">
      <rules>
        <rule id="f145-3c0b-1663-dcda" name="Pilot" hidden="false">
          <description>Acts in the Pilot phase. A second pilot also counts toward the Elite limit.</description>
        </rule>
      </rules>
    </categoryEntry>
    <categoryEntry id="acbf-f945-7e91-b604" name="Elite" hidden="false">
      <rules>
        <rule id="92d3-723b-52fd-8162" name="Elite" hidden="false">
          <description>Acts in the Elite phase.</description>
        </rule>
      </rules>
    </categoryEntry>
    <categoryEntry id="2577-fd16-96b1-2450" name="Trooper" hidden="false">
      <rules>
        <rule id="2903-2935-3eef-9fa0" name="Trooper" hidden="false">
          <description>Acts in the Trooper phase.</description>
        </rule>
      </rules>
    </categoryEntry>
    <categoryEntry id="0978-343d-4afd-0b44" name="Company" hidden="false">
      <rules>
        <rule id="13d1-52a5-d055-48b7" name="Company" hidden="false">
          <description>Company-wide items: the briefing and contract extras. Not units.</description>
        </rule>
      </rules>
    </categoryEntry>
    <categoryEntry id="2430-c218-c4e8-3966" name="Lieutenant" hidden="false">
      <rules>
        <rule id="9c92-e8eb-56d8-0b3a" name="Lieutenant" hidden="false">
          <description>Exactly one per company.</description>
        </rule>
      </rules>
    </categoryEntry>
    <categoryEntry id="dc03-a4ce-a40d-849a" name="Specialist" hidden="false">
      <rules>
        <rule id="b625-c973-e922-31a8" name="Specialist" hidden="false">
          <description>Counts as a Specialist for scenarios.</description>
        </rule>
      </rules>
    </categoryEntry>
    <categoryEntry id="1654-8554-b1ff-a897" name="Deployed" hidden="false">
      <rules>
        <rule id="b2db-3164-77e5-bcb0" name="Deployed" hidden="false">
          <description>Infantry on the table at the start of the game: 10 at most. Elites starting in reserve don't count.</description>
        </rule>
      </rules>
    </categoryEntry>
  </categoryEntries>
  <forceEntries>
    <forceEntry id="3997-c043-7dd1-4bc8" name="Mercenary Company" hidden="false">
      <infoLinks>
        <infoLink id="4934-ff6d-9cfa-f0b6" name="Round Structure" hidden="false" targetId="40e0-a1b9-eb7e-ac6e" type="rule" />
        <infoLink id="4f3f-1ab0-f9fa-4d0e" name="Order Pool" hidden="false" targetId="243e-b87f-aa0a-cc0d" type="rule" />
      </infoLinks>
      <categoryLinks>
        <categoryLink id="1c0a-c5f0-a75c-0900" name="TAG" hidden="false" targetId="ffaf-2784-a2f4-b6f0" primary="false">
          <constraints>
            <constraint id="1e81-54fd-9a4a-adf5" type="min" value="1" field="selections" scope="parent" shared="true" includeChildSelections="true" />
            <constraint id="5f90-a6c8-2412-aeb9" type="max" value="1" field="selections" scope="parent" shared="true" includeChildSelections="true" />
          </constraints>
        </categoryLink>
        <categoryLink id="4c83-61c4-2bf8-3a8c" name="Pilot" hidden="false" targetId="87f9-8f57-f1d0-ce32" primary="false">
          <constraints>
            <constraint id="108e-b050-e9dd-249c" type="min" value="1" field="selections" scope="parent" shared="true" includeChildSelections="true" />
            <constraint id="12e6-82e6-c922-942e" type="max" value="2" field="selections" scope="parent" shared="true" includeChildSelections="true" />
          </constraints>
        </categoryLink>
        <categoryLink id="5bfd-9360-0ff3-f4d3" name="Elite" hidden="false" targetId="acbf-f945-7e91-b604" primary="false">
          <modifiers>
            <modifier type="increment" field="8119-5e7c-0dcc-9304" value="1">
              <repeats>
                <repeat field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="5aad-527f-ebd4-3213" repeats="1" roundUp="false" />
              </repeats>
            </modifier>
            <modifier type="decrement" field="8119-5e7c-0dcc-9304" value="1">
              <conditions>
                <condition type="atLeast" value="2" field="selections" scope="force" childId="87f9-8f57-f1d0-ce32" shared="true" includeChildSelections="true" />
              </conditions>
            </modifier>
          </modifiers>
          <constraints>
            <constraint id="8119-5e7c-0dcc-9304" type="max" value="5" field="selections" scope="parent" shared="true" includeChildSelections="true" />
          </constraints>
        </categoryLink>
        <categoryLink id="2844-3310-b3ef-b443" name="Trooper" hidden="false" targetId="2577-fd16-96b1-2450" primary="false" />
        <categoryLink id="9f67-50bb-33e7-a4bd" name="Company" hidden="false" targetId="0978-343d-4afd-0b44" primary="false" />
        <categoryLink id="0c98-5937-1bf0-c137" name="Lieutenant" hidden="false" targetId="2430-c218-c4e8-3966" primary="false">
          <constraints>
            <constraint id="23b2-fba6-b920-6cab" type="min" value="1" field="selections" scope="parent" shared="true" includeChildSelections="true" />
            <constraint id="0653-6fd1-7bbc-e80c" type="max" value="1" field="selections" scope="parent" shared="true" includeChildSelections="true" />
          </constraints>
        </categoryLink>
        <categoryLink id="d986-19ca-2578-9316" name="Specialist" hidden="false" targetId="dc03-a4ce-a40d-849a" primary="false" />
        <categoryLink id="5130-ee5d-3a83-3f4b" name="Deployed" hidden="false" targetId="1654-8554-b1ff-a897" primary="false">
          <constraints>
            <constraint id="ee3a-de10-fdf9-7625" type="max" value="10" field="selections" scope="parent" shared="true" includeChildSelections="true" />
          </constraints>
        </categoryLink>
      </categoryLinks>
    </forceEntry>
  </forceEntries>
  <selectionEntries>
    <selectionEntry id="5ac6-9d3a-90ff-33dc" name="Company Briefing" publicationId="991d-8065-dcd4-a396" hidden="false" collective="false" import="true" type="upgrade">
      <constraints>
        <constraint id="b6a2-6a49-6926-82af" type="min" value="1" field="selections" scope="force" shared="true" includeChildSelections="true" />
        <constraint id="440b-6f21-0320-d41d" type="max" value="1" field="selections" scope="force" shared="true" includeChildSelections="true" />
      </constraints>
      <infoLinks>
        <infoLink id="32de-ac90-1bfc-eb23" name="Round Structure" hidden="false" targetId="40e0-a1b9-eb7e-ac6e" type="rule" />
        <infoLink id="0cca-5f0c-6a79-a3a8" name="Order Pool" hidden="false" targetId="243e-b87f-aa0a-cc0d" type="rule" />
        <infoLink id="c701-4cca-1e8f-356b" name="Command Tokens" hidden="false" targetId="4b1a-a6ff-0ec8-3dfd" type="rule" />
        <infoLink id="a5d8-8fa2-6431-999c" name="Reinforcements" hidden="false" targetId="b3ea-8b45-a666-1699" type="rule" />
        <infoLink id="7481-a41d-aea7-96e2" name="Deployment (Tactical)" hidden="false" targetId="c1d9-fa17-1341-02f7" type="rule" />
        <infoLink id="7772-56cb-a6c4-128f" name="Replacement TAGs" hidden="false" targetId="854f-48f0-28b2-06b7" type="rule" />
        <infoLink id="3e70-61ee-715d-34d6" name="Mount and Dismount (N4)" hidden="false" targetId="9be1-1acb-7ccf-06d3" type="rule" />
        <infoLink id="937b-98d3-631a-64b5" name="Jockey" hidden="false" targetId="22e3-0707-4bd8-3acb" type="rule" />
        <infoLink id="f83f-27c7-3441-a1b5" name="Unmanned TAGs" hidden="false" targetId="104b-90c4-6e9d-1575" type="rule" />
        <infoLink id="867d-b479-413f-dbca" name="Eject" hidden="false" targetId="a13e-0cf9-2fdb-667c" type="rule" />
      </infoLinks>
      <categoryLinks>
        <categoryLink id="8523-84e9-659c-169b" name="Company" hidden="false" targetId="0978-343d-4afd-0b44" primary="true" />
      </categoryLinks>
    </selectionEntry>
    <selectionEntry id="5aad-527f-ebd4-3213" name="Expanded Contract" publicationId="991d-8065-dcd4-a396" hidden="false" collective="false" import="true" type="upgrade">
      <categoryLinks>
        <categoryLink id="1243-8568-be26-8bed" name="Company" hidden="false" targetId="0978-343d-4afd-0b44" primary="true" />
      </categoryLinks>
    </selectionEntry>
  </selectionEntries>
  <sharedSelectionEntries>
    <selectionEntry id="4ad9-6ecc-7339-e1f4" name="Tactical Bow" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="4c24-8aea-46fa-1087" name="Tactical Bow" hidden="false" targetId="ae4d-afba-b05a-7236" type="profile" />
        <infoLink id="b096-dd2d-884e-889a" name="Anti-materiel" hidden="false" targetId="e196-fa3f-b53c-73ee" type="rule" />
        <infoLink id="6a23-7b3c-6d6a-4d98" name="Silent (X)" hidden="false" targetId="8107-bbbe-ba62-8ded" type="rule" />
      </infoLinks>
    </selectionEntry>
    <selectionEntry id="c4bf-010d-9d26-034c" name="Viral Tactical Bow" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="6a02-7670-ac23-619c" name="Viral Tactical Bow" hidden="false" targetId="7b4f-6540-f6a3-f347" type="profile" />
        <infoLink id="1390-3bb6-05ca-193f" name="BioWeapon" hidden="false" targetId="857d-68c2-aa74-da8f" type="rule" />
        <infoLink id="4ad7-8f48-94dd-b058" name="Silent (X)" hidden="false" targetId="8107-bbbe-ba62-8ded" type="rule" />
      </infoLinks>
    </selectionEntry>
    <selectionEntry id="b7eb-9f37-69b6-81e3" name="E/M Carbine" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="dd82-cceb-2917-0b56" name="E/M Carbine" hidden="false" targetId="c1e0-fe7b-305e-f72f" type="profile" />
        <infoLink id="315e-0c76-ddf8-6550" name="Non-Lethal" hidden="false" targetId="d803-d330-3780-823e" type="rule" />
      </infoLinks>
    </selectionEntry>
    <selectionEntry id="9d8b-eeef-3c70-b578" name="Plasma Carbine" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="123d-0e96-6909-15a0" name="Plasma Carbine (Blast Mode)" hidden="false" targetId="17a1-55c1-7ef6-c105" type="profile" />
        <infoLink id="6046-9dab-20ce-3268" name="Plasma Carbine (Hit Mode)" hidden="false" targetId="37cd-060d-7c52-7779" type="profile" />
        <infoLink id="e103-e92f-8c98-1ec1" name="Combined Saving Roll" hidden="false" targetId="30dc-566e-e55e-3203" type="rule" />
        <infoLink id="c2b0-acf1-dee7-0d8b" name="Impact Template" hidden="false" targetId="d515-904e-7f49-17b1" type="rule" />
      </infoLinks>
    </selectionEntry>
    <selectionEntry id="6770-94b2-3be4-4ce1" name="AP CC Weapon" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="3944-daf5-29cb-d8a6" name="AP CC Weapon" hidden="false" targetId="90ae-0bbf-2d91-d8e2" type="profile" />
        <infoLink id="fa21-5696-8446-ac16" name="CC" hidden="false" targetId="9297-b5bd-8bc3-59b1" type="rule" />
      </infoLinks>
    </selectionEntry>
    <selectionEntry id="c107-f28c-c7bc-8870" name="AP+DA CC Weapon" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="359b-c552-796c-29c6" name="AP+DA CC Weapon" hidden="false" targetId="2cc9-bb7e-8ba3-8713" type="profile" />
        <infoLink id="7e33-e481-6a34-bd36" name="Anti-materiel" hidden="false" targetId="e196-fa3f-b53c-73ee" type="rule" />
        <infoLink id="3d85-05f4-88ea-4ccd" name="CC" hidden="false" targetId="9297-b5bd-8bc3-59b1" type="rule" />
      </infoLinks>
    </selectionEntry>
    <selectionEntry id="f6f6-2472-647c-d099" name="AP+EXP CC Weapon" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="cc7a-49c6-0d93-ee2f" name="AP+EXP CC Weapon" hidden="false" targetId="d97b-91f6-c5a5-6027" type="profile" />
        <infoLink id="f848-6824-31b1-4a7f" name="Anti-materiel" hidden="false" targetId="e196-fa3f-b53c-73ee" type="rule" />
        <infoLink id="38b6-7d8f-d46a-6ced" name="CC" hidden="false" targetId="9297-b5bd-8bc3-59b1" type="rule" />
      </infoLinks>
    </selectionEntry>
    <selectionEntry id="b456-959a-418b-f2be" name="AP+Shock CC Weapon" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="16c9-7d66-54c1-c1f3" name="AP+Shock CC Weapon" hidden="false" targetId="c67e-2e2a-2f12-1542" type="profile" />
        <infoLink id="415a-4d97-6ea9-c563" name="CC" hidden="false" targetId="9297-b5bd-8bc3-59b1" type="rule" />
      </infoLinks>
    </selectionEntry>
    <selectionEntry id="4a3a-2212-6f9d-1740" name="AP+T2 CC Weapon" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="f4fe-96bd-1c7a-754c" name="AP+T2 CC Weapon" hidden="false" targetId="6559-e2de-b9a6-0a34" type="profile" />
        <infoLink id="5655-74d9-4afb-3ce7" name="Anti-materiel" hidden="false" targetId="e196-fa3f-b53c-73ee" type="rule" />
        <infoLink id="ef28-9e4c-3b04-4c27" name="CC" hidden="false" targetId="9297-b5bd-8bc3-59b1" type="rule" />
      </infoLinks>
    </selectionEntry>
    <selectionEntry id="39ab-422e-8144-9c33" name="CC Weapon" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="6f2b-0275-d392-f444" name="CC Weapon" hidden="false" targetId="5a72-f250-090b-8603" type="profile" />
        <infoLink id="e478-0b34-3ca9-51a9" name="CC" hidden="false" targetId="9297-b5bd-8bc3-59b1" type="rule" />
      </infoLinks>
    </selectionEntry>
    <selectionEntry id="5299-664a-2608-6e49" name="DA CC Weapon" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="9bb4-4ec2-4081-3d39" name="DA CC Weapon" hidden="false" targetId="5eb7-9f0c-4fa1-a4b1" type="profile" />
        <infoLink id="74d1-8854-8b25-a02b" name="Anti-materiel" hidden="false" targetId="e196-fa3f-b53c-73ee" type="rule" />
        <infoLink id="b940-4e4c-d372-dcef" name="CC" hidden="false" targetId="9297-b5bd-8bc3-59b1" type="rule" />
      </infoLinks>
    </selectionEntry>
    <selectionEntry id="1288-4a1e-7752-1d93" name="E/M CC Weapon" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="1b68-d3be-ea8a-5b09" name="E/M CC Weapon" hidden="false" targetId="99df-aeee-d111-4e5a" type="profile" />
        <infoLink id="76ea-a05b-bdc0-8b20" name="CC" hidden="false" targetId="9297-b5bd-8bc3-59b1" type="rule" />
      </infoLinks>
    </selectionEntry>
    <selectionEntry id="4ec1-e361-456b-773e" name="EXP CC Weapon" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="5cbc-307e-1490-61bf" name="EXP CC Weapon" hidden="false" targetId="9b0b-9b31-c6df-2a3f" type="profile" />
        <infoLink id="553f-a128-ac74-85cb" name="Anti-materiel" hidden="false" targetId="e196-fa3f-b53c-73ee" type="rule" />
        <infoLink id="a25c-fd48-b039-34e1" name="CC" hidden="false" targetId="9297-b5bd-8bc3-59b1" type="rule" />
      </infoLinks>
    </selectionEntry>
    <selectionEntry id="6c9b-31f2-d298-75cb" name="Monofilament CC Weapon" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="dd74-2ae2-2250-45eb" name="Monofilament CC Weapon" hidden="false" targetId="5d61-e2aa-7291-3855" type="profile" />
        <infoLink id="e363-4ec6-2383-a2ce" name="CC" hidden="false" targetId="9297-b5bd-8bc3-59b1" type="rule" />
        <infoLink id="7165-d443-03a3-0942" name="Dead State" hidden="false" targetId="4bbb-f9a5-e18f-1905" type="rule" />
        <infoLink id="1e85-3dcc-0064-4b27" name="State" hidden="false" targetId="a15e-7481-0da9-5e08" type="rule" />
      </infoLinks>
    </selectionEntry>
    <selectionEntry id="3312-1242-a6ad-2d56" name="PARA CC Weapon" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="38a9-aa9d-f8da-01db" name="PARA CC Weapon" hidden="false" targetId="9346-cb70-99d2-a7f9" type="profile" />
        <infoLink id="1ebb-07c9-76b5-cbd5" name="CC" hidden="false" targetId="9297-b5bd-8bc3-59b1" type="rule" />
        <infoLink id="dac3-15fe-f123-7f9d" name="Immobilized-A State" hidden="false" targetId="92d0-fd93-3458-e1a5" type="rule" />
        <infoLink id="f7fc-e34c-767b-1b97" name="Non-Lethal" hidden="false" targetId="d803-d330-3780-823e" type="rule" />
        <infoLink id="94f9-aa29-2f1d-1d07" name="State" hidden="false" targetId="a15e-7481-0da9-5e08" type="rule" />
      </infoLinks>
    </selectionEntry>
    <selectionEntry id="859e-9cd1-b333-2b4e" name="Shock CC Weapon" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="3c09-990d-336a-f7e8" name="Shock CC Weapon" hidden="false" targetId="700d-8b0e-7aa9-6bb5" type="profile" />
        <infoLink id="5eca-722b-4dee-c795" name="CC" hidden="false" targetId="9297-b5bd-8bc3-59b1" type="rule" />
      </infoLinks>
    </selectionEntry>
    <selectionEntry id="487f-e905-7e84-e295" name="T2 CC Weapon" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="e746-d148-34d5-1bba" name="T2 CC Weapon" hidden="false" targetId="287e-3cc2-d884-fdc3" type="profile" />
        <infoLink id="ce34-6163-dd2b-0569" name="Anti-materiel" hidden="false" targetId="e196-fa3f-b53c-73ee" type="rule" />
        <infoLink id="d983-e2d8-fb8e-2bcc" name="CC" hidden="false" targetId="9297-b5bd-8bc3-59b1" type="rule" />
      </infoLinks>
    </selectionEntry>
    <selectionEntry id="4b20-e819-edc1-19e6" name="Trench-Hammer" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="631a-ff44-c023-ab09" name="Trench-Hammer (BS Mode)" hidden="false" targetId="bffa-b232-2470-76a9" type="profile" />
        <infoLink id="202c-2e25-78df-50f0" name="Trench-Hammer (CC Mode)" hidden="false" targetId="f7c3-7e7f-64b7-43cf" type="profile" />
        <infoLink id="5253-8cb4-b360-c0fe" name="Anti-materiel" hidden="false" targetId="e196-fa3f-b53c-73ee" type="rule" />
        <infoLink id="e072-ffee-f6dc-5521" name="BS Weapon (PH)" hidden="false" targetId="e484-20cb-65f9-bd30" type="rule" />
        <infoLink id="2ecd-0c7d-3594-dbad" name="CC" hidden="false" targetId="9297-b5bd-8bc3-59b1" type="rule" />
        <infoLink id="c058-bfe6-d210-b5bf" name="Mixed Weapons" hidden="false" targetId="4c56-e5ad-a1f0-7281" type="rule" />
      </infoLinks>
    </selectionEntry>
    <selectionEntry id="a1a0-f232-e587-df79" name="Viral CC Weapon" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="fce7-19ba-5449-f347" name="Viral CC Weapon" hidden="false" targetId="53a1-e17e-684d-ba7a" type="profile" />
        <infoLink id="dd0b-13b8-d3bc-13cd" name="BioWeapon" hidden="false" targetId="857d-68c2-aa74-da8f" type="rule" />
        <infoLink id="b651-4274-2acd-bffe" name="CC" hidden="false" targetId="9297-b5bd-8bc3-59b1" type="rule" />
      </infoLinks>
    </selectionEntry>
    <selectionEntry id="2f24-4d63-7ffa-f5b0" name="Vorpal CC Weapon" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="cbee-c34e-f364-ec91" name="Vorpal CC Weapon (BS Mode)" hidden="false" targetId="a7ca-a764-92e7-7a46" type="profile" />
        <infoLink id="5ef7-0325-b2f4-52fb" name="Vorpal CC Weapon (CC Mode)" hidden="false" targetId="37a0-1d21-2e91-b7dc" type="profile" />
        <infoLink id="60a0-6e82-f2c9-b85d" name="BS Weapon (PH)" hidden="false" targetId="e484-20cb-65f9-bd30" type="rule" />
        <infoLink id="7628-eea6-c768-f2b4" name="CC" hidden="false" targetId="9297-b5bd-8bc3-59b1" type="rule" />
        <infoLink id="6ccc-a591-2833-222b" name="Dead State" hidden="false" targetId="4bbb-f9a5-e18f-1905" type="rule" />
        <infoLink id="3abb-ee94-5f20-8c69" name="Mixed Weapons" hidden="false" targetId="4c56-e5ad-a1f0-7281" type="rule" />
        <infoLink id="c333-4675-5f2f-3961" name="State" hidden="false" targetId="a15e-7481-0da9-5e08" type="rule" />
      </infoLinks>
    </selectionEntry>
    <selectionEntry id="493b-6abc-9926-f246" name="Akrylat-Kanone" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="b7e8-ce09-87cd-2eea" name="Akrylat-Kanone" hidden="false" targetId="48c5-57e1-5fd1-38e6" type="profile" />
        <infoLink id="38a7-4b00-c6a1-b691" name="Disposable (X)" hidden="false" targetId="8b2d-eeb9-e446-9928" type="rule" />
        <infoLink id="b9aa-3968-e1ab-bf5f" name="Immobilized-A State" hidden="false" targetId="92d0-fd93-3458-e1a5" type="rule" />
        <infoLink id="30be-4625-c0ca-890c" name="Non-Lethal" hidden="false" targetId="d803-d330-3780-823e" type="rule" />
        <infoLink id="0797-2f89-0b4c-e5f1" name="State" hidden="false" targetId="a15e-7481-0da9-5e08" type="rule" />
      </infoLinks>
    </selectionEntry>
    <selectionEntry id="25b9-3990-8cbc-2312" name="Blitzen" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="b3f8-87c7-b5e7-f306" name="Blitzen" hidden="false" targetId="b1fa-86c7-4d3d-99ff" type="profile" />
        <infoLink id="32e3-fbc7-6fc5-6601" name="Disposable (X)" hidden="false" targetId="8b2d-eeb9-e446-9928" type="rule" />
        <infoLink id="4339-c816-072e-6698" name="Non-Lethal" hidden="false" targetId="d803-d330-3780-823e" type="rule" />
      </infoLinks>
    </selectionEntry>
    <selectionEntry id="a366-f46a-0ee9-9859" name="Flammenspeer" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="8494-d65e-b18d-664b" name="Flammenspeer (Blast Mode)" hidden="false" targetId="2469-da08-2a5c-34d9" type="profile" />
        <infoLink id="27e1-5f53-ffaa-a1bb" name="Flammenspeer (Hit Mode)" hidden="false" targetId="c44d-c707-463e-65ae" type="profile" />
        <infoLink id="8fef-c035-8cba-fe62" name="Continuous Damage" hidden="false" targetId="88e9-ae8b-2910-5ad7" type="rule" />
        <infoLink id="6e69-b194-1328-847f" name="Disposable (X)" hidden="false" targetId="8b2d-eeb9-e446-9928" type="rule" />
        <infoLink id="9f07-93be-830a-66dc" name="Impact Template" hidden="false" targetId="d515-904e-7f49-17b1" type="rule" />
      </infoLinks>
    </selectionEntry>
    <selectionEntry id="9cdb-f473-3781-63a4" name="Panzerfaust" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="6306-e961-030b-fb6f" name="Panzerfaust" hidden="false" targetId="3996-c9e2-a9bd-8b1a" type="profile" />
        <infoLink id="b63d-ef71-917f-3feb" name="Anti-materiel" hidden="false" targetId="e196-fa3f-b53c-73ee" type="rule" />
        <infoLink id="f376-e7ee-dbd2-39a5" name="Disposable (X)" hidden="false" targetId="8b2d-eeb9-e446-9928" type="rule" />
      </infoLinks>
    </selectionEntry>
    <selectionEntry id="0be8-1bfa-88a5-cea2" name="Heavy Flamethrower" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="4e89-2318-dad3-16df" name="Heavy Flamethrower" hidden="false" targetId="750b-a173-a42a-e72c" type="profile" />
        <infoLink id="05d7-5773-7b85-5e1d" name="Continuous Damage" hidden="false" targetId="88e9-ae8b-2910-5ad7" type="rule" />
        <infoLink id="491e-0f63-d8bd-f471" name="Direct Template" hidden="false" targetId="4577-cc2e-4bd4-74e1" type="rule" />
        <infoLink id="901a-7b08-adae-3494" name="Intuitive Attack (Trait)" hidden="false" targetId="5583-38f0-d3ae-fac6" type="rule" />
      </infoLinks>
    </selectionEntry>
    <selectionEntry id="7f86-7262-3c16-af6d" name="Light Flamethrower" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="30f2-abe2-46ff-ef95" name="Light Flamethrower" hidden="false" targetId="1b8f-69f7-6d26-dbe9" type="profile" />
        <infoLink id="da33-5ead-69c7-63d5" name="Continuous Damage" hidden="false" targetId="88e9-ae8b-2910-5ad7" type="rule" />
        <infoLink id="e7a5-0894-47aa-4ce5" name="Direct Template" hidden="false" targetId="4577-cc2e-4bd4-74e1" type="rule" />
        <infoLink id="783b-89c1-f56d-9dd3" name="Intuitive Attack (Trait)" hidden="false" targetId="5583-38f0-d3ae-fac6" type="rule" />
      </infoLinks>
    </selectionEntry>
    <selectionEntry id="0f3b-40af-11e7-69d3" name="Eclipse Grenades" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="314e-7557-46e6-fe21" name="Eclipse Grenades" hidden="false" targetId="da14-407a-7165-4562" type="profile" />
        <infoLink id="7a2d-f663-6126-05c4" name="BS Weapon (PH)" hidden="false" targetId="e484-20cb-65f9-bd30" type="rule" />
        <infoLink id="2a35-afbb-d0ec-df55" name="Impact Template" hidden="false" targetId="d515-904e-7f49-17b1" type="rule" />
        <infoLink id="29e5-39c1-2585-4493" name="Non-Lethal" hidden="false" targetId="d803-d330-3780-823e" type="rule" />
        <infoLink id="43c8-a8f7-bfff-b462" name="Reflective" hidden="false" targetId="a5c2-9e7d-b60b-fa4b" type="rule" />
        <infoLink id="6bae-62a8-89da-da73" name="Speculative Attack" hidden="false" targetId="16d3-83ad-2f43-af1e" type="rule" />
        <infoLink id="8318-b44a-9279-05c5" name="Targetless" hidden="false" targetId="956f-7124-cea8-5050" type="rule" />
      </infoLinks>
    </selectionEntry>
    <selectionEntry id="2594-52c6-4cb2-6749" name="E/M Grenades" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="6afb-b32d-6423-ff29" name="E/M Grenades" hidden="false" targetId="2e27-c99d-b43a-b73c" type="profile" />
        <infoLink id="39f8-8e6f-0977-1eee" name="BS Weapon (PH)" hidden="false" targetId="e484-20cb-65f9-bd30" type="rule" />
        <infoLink id="9011-580e-d1b5-9c1e" name="Impact Template" hidden="false" targetId="d515-904e-7f49-17b1" type="rule" />
        <infoLink id="ad21-182e-c439-4c3f" name="Non-Lethal" hidden="false" targetId="d803-d330-3780-823e" type="rule" />
        <infoLink id="2067-1ee8-71ec-d40f" name="Speculative Attack" hidden="false" targetId="16d3-83ad-2f43-af1e" type="rule" />
      </infoLinks>
    </selectionEntry>
    <selectionEntry id="da1f-02d1-acbc-dc7d" name="Grenades" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="f7f8-068d-2af5-99f4" name="Grenades" hidden="false" targetId="c641-4fa9-59e7-846b" type="profile" />
        <infoLink id="ff9c-191a-0cf8-617f" name="BS Weapon (PH)" hidden="false" targetId="e484-20cb-65f9-bd30" type="rule" />
        <infoLink id="07dc-6bdd-6426-3150" name="Impact Template" hidden="false" targetId="d515-904e-7f49-17b1" type="rule" />
        <infoLink id="38a7-a688-ce6c-41d5" name="Speculative Attack" hidden="false" targetId="16d3-83ad-2f43-af1e" type="rule" />
      </infoLinks>
    </selectionEntry>
    <selectionEntry id="fd5b-c8e7-4bb0-436c" name="Smoke Grenades" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="3d14-a2d4-7789-54f5" name="Smoke Grenades" hidden="false" targetId="a978-a0bc-be17-13b5" type="profile" />
        <infoLink id="48ee-5803-c62c-8d0b" name="BS Weapon (PH)" hidden="false" targetId="e484-20cb-65f9-bd30" type="rule" />
        <infoLink id="a761-783f-ba48-2dbb" name="Impact Template" hidden="false" targetId="d515-904e-7f49-17b1" type="rule" />
        <infoLink id="bf89-5bb7-6d28-6000" name="Non-Lethal" hidden="false" targetId="d803-d330-3780-823e" type="rule" />
        <infoLink id="d9ef-5198-cd5c-6087" name="Speculative Attack" hidden="false" targetId="16d3-83ad-2f43-af1e" type="rule" />
        <infoLink id="daca-c328-be71-91f5" name="Targetless" hidden="false" targetId="956f-7124-cea8-5050" type="rule" />
      </infoLinks>
    </selectionEntry>
    <selectionEntry id="e319-ac06-127a-94a9" name="Eclipse Grenade Launcher" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="94c1-2949-6b2f-13cd" name="Eclipse Grenade Launcher" hidden="false" targetId="235a-a3ee-c833-134c" type="profile" />
        <infoLink id="ee73-04e0-39cb-27cf" name="Impact Template" hidden="false" targetId="d515-904e-7f49-17b1" type="rule" />
        <infoLink id="226f-9b18-a0c5-15f2" name="Non-Lethal" hidden="false" targetId="d803-d330-3780-823e" type="rule" />
        <infoLink id="ca44-10e3-b232-40a4" name="Reflective" hidden="false" targetId="a5c2-9e7d-b60b-fa4b" type="rule" />
        <infoLink id="fb15-8be2-2ced-e84d" name="Speculative Attack" hidden="false" targetId="16d3-83ad-2f43-af1e" type="rule" />
        <infoLink id="680d-ddd8-45fc-b843" name="Targetless" hidden="false" targetId="956f-7124-cea8-5050" type="rule" />
      </infoLinks>
    </selectionEntry>
    <selectionEntry id="bd02-7eab-9857-7471" name="E/M Grenade Launcher" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="e918-41c3-b319-af3e" name="E/M Grenade Launcher" hidden="false" targetId="1125-d96c-22e0-44c0" type="profile" />
        <infoLink id="398e-bcee-e5ec-8790" name="Impact Template" hidden="false" targetId="d515-904e-7f49-17b1" type="rule" />
        <infoLink id="34f8-0d85-e169-a4b5" name="Non-Lethal" hidden="false" targetId="d803-d330-3780-823e" type="rule" />
        <infoLink id="82c1-ac02-d5d9-fcb2" name="Speculative Attack" hidden="false" targetId="16d3-83ad-2f43-af1e" type="rule" />
      </infoLinks>
    </selectionEntry>
    <selectionEntry id="cba0-180d-f396-02a8" name="Grenade Launcher" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="0e13-3281-942b-76aa" name="Grenade Launcher" hidden="false" targetId="dd79-f402-c653-fc6d" type="profile" />
        <infoLink id="b2d8-d007-90e8-d2a3" name="Impact Template" hidden="false" targetId="d515-904e-7f49-17b1" type="rule" />
        <infoLink id="9ce8-2285-b64d-1b73" name="Speculative Attack" hidden="false" targetId="16d3-83ad-2f43-af1e" type="rule" />
      </infoLinks>
    </selectionEntry>
    <selectionEntry id="b49d-d2f0-0b12-7ba7" name="Smoke Grenade Launcher" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="1d9d-f26f-fd4e-ecc6" name="Smoke Grenade Launcher" hidden="false" targetId="d52a-292b-b65a-f37b" type="profile" />
        <infoLink id="4ab9-bd33-e19d-2b59" name="Impact Template" hidden="false" targetId="d515-904e-7f49-17b1" type="rule" />
        <infoLink id="5554-0ad5-61da-f7b4" name="Non-Lethal" hidden="false" targetId="d803-d330-3780-823e" type="rule" />
        <infoLink id="5bac-dde8-5daf-a1ec" name="Speculative Attack" hidden="false" targetId="16d3-83ad-2f43-af1e" type="rule" />
        <infoLink id="b5b0-1c4e-dcf9-8cfb" name="Targetless" hidden="false" targetId="956f-7124-cea8-5050" type="rule" />
      </infoLinks>
    </selectionEntry>
    <selectionEntry id="6348-2f1f-5928-d925" name="AP Heavy Machine Gun" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="bf1d-e460-49dd-792a" name="AP Heavy Machine Gun" hidden="false" targetId="4e73-eef5-ee11-3b4c" type="profile" />
        <infoLink id="fd9a-4bf8-a7b7-0315" name="Suppressive Fire (Trait)" hidden="false" targetId="5f14-9dd9-f80b-6451" type="rule" />
      </infoLinks>
    </selectionEntry>
    <selectionEntry id="7664-8f67-e819-8e35" name="Heavy Machine Gun" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="a56c-d6b5-4cf7-382d" name="Heavy Machine Gun" hidden="false" targetId="8412-d672-8525-7d7c" type="profile" />
        <infoLink id="9ab0-0a13-2d2a-ffa1" name="Suppressive Fire (Trait)" hidden="false" targetId="5f14-9dd9-f80b-6451" type="rule" />
      </infoLinks>
    </selectionEntry>
    <selectionEntry id="e44b-8368-1ced-e2b4" name="MULTI Heavy Machine Gun" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="77b5-db29-25e5-dab9" name="MULTI Heavy Machine Gun" hidden="false" targetId="f6f6-ace9-3b38-1323" type="profile" />
        <infoLink id="c663-c5c2-7923-9da9" name="Anti-materiel" hidden="false" targetId="e196-fa3f-b53c-73ee" type="rule" />
        <infoLink id="a909-7982-9849-ebff" name="Suppressive Fire (Trait)" hidden="false" targetId="5f14-9dd9-f80b-6451" type="rule" />
      </infoLinks>
    </selectionEntry>
    <selectionEntry id="b275-230e-afc1-86a2" name="AP Marksman Rifle" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="5e71-d06f-ed36-b12e" name="AP Marksman Rifle" hidden="false" targetId="0bde-d960-9411-155c" type="profile" />
        <infoLink id="8e02-dc05-8f4a-110b" name="Suppressive Fire (Trait)" hidden="false" targetId="5f14-9dd9-f80b-6451" type="rule" />
      </infoLinks>
    </selectionEntry>
    <selectionEntry id="90b9-44df-34d5-5c38" name="Breaker Marksman Rifle" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="bdcd-e73d-d3f9-26dd" name="Breaker Marksman Rifle" hidden="false" targetId="8781-86f0-c36b-9197" type="profile" />
        <infoLink id="0853-5eff-c468-1b04" name="Suppressive Fire (Trait)" hidden="false" targetId="5f14-9dd9-f80b-6451" type="rule" />
      </infoLinks>
    </selectionEntry>
    <selectionEntry id="5bce-4bc3-60c4-90f2" name="K1 Marksman Rifle" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="935f-470d-e035-b1f1" name="K1 Marksman Rifle" hidden="false" targetId="4083-42a5-bd91-03dd" type="profile" />
        <infoLink id="9a3d-abcf-f34e-d210" name="Anti-materiel" hidden="false" targetId="e196-fa3f-b53c-73ee" type="rule" />
        <infoLink id="1a2c-8010-4af3-d565" name="Suppressive Fire (Trait)" hidden="false" targetId="5f14-9dd9-f80b-6451" type="rule" />
      </infoLinks>
    </selectionEntry>
    <selectionEntry id="031d-f805-76d6-a13d" name="Marksman Rifle" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="81d4-4208-fb3a-8b96" name="Marksman Rifle" hidden="false" targetId="8cf7-1d3f-d176-c1ab" type="profile" />
        <infoLink id="d920-a283-156c-2508" name="Suppressive Fire (Trait)" hidden="false" targetId="5f14-9dd9-f80b-6451" type="rule" />
      </infoLinks>
    </selectionEntry>
    <selectionEntry id="cdf5-1285-ea29-ce27" name="MULTI Marksman Rifle" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="3c1a-b7fc-1866-5b20" name="MULTI Marksman Rifle" hidden="false" targetId="fa7c-2e11-c7a5-b49a" type="profile" />
        <infoLink id="9dd1-aec8-f92f-2aab" name="Anti-materiel" hidden="false" targetId="e196-fa3f-b53c-73ee" type="rule" />
        <infoLink id="27f6-f1ac-2eee-7f4f" name="Suppressive Fire (Trait)" hidden="false" targetId="5f14-9dd9-f80b-6451" type="rule" />
      </infoLinks>
    </selectionEntry>
    <selectionEntry id="6c30-03d6-06ea-ee34" name="Shock Marksman Rifle" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="06b2-83c1-46fa-2610" name="Shock Marksman Rifle" hidden="false" targetId="dad7-02f5-1b4a-c07f" type="profile" />
        <infoLink id="bd9c-85c3-9818-43cf" name="Suppressive Fire (Trait)" hidden="false" targetId="5f14-9dd9-f80b-6451" type="rule" />
      </infoLinks>
    </selectionEntry>
    <selectionEntry id="a336-49e1-8acd-fedb" name="T2 Marksman Rifle" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="9bb2-7863-5ebf-1ca9" name="T2 Marksman Rifle" hidden="false" targetId="f7c9-40ad-80a5-1011" type="profile" />
        <infoLink id="6b1b-f77a-641b-98d4" name="Anti-materiel" hidden="false" targetId="e196-fa3f-b53c-73ee" type="rule" />
        <infoLink id="315b-199e-28a7-6c9a" name="Suppressive Fire (Trait)" hidden="false" targetId="5f14-9dd9-f80b-6451" type="rule" />
      </infoLinks>
    </selectionEntry>
    <selectionEntry id="b888-74b4-d0c8-2586" name="Viral Marksman Rifle" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="cea6-fe45-4c89-18a3" name="Viral Marksman Rifle" hidden="false" targetId="0938-8f16-0d2f-cd91" type="profile" />
        <infoLink id="e04f-f40f-1ab1-5a7e" name="BioWeapon" hidden="false" targetId="857d-68c2-aa74-da8f" type="rule" />
        <infoLink id="6a58-4f5f-37dc-f9b4" name="Suppressive Fire (Trait)" hidden="false" targetId="5f14-9dd9-f80b-6451" type="rule" />
      </infoLinks>
    </selectionEntry>
    <selectionEntry id="3d44-40e1-afca-1481" name="AP Mines" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="252c-92cd-1693-8e33" name="AP Mines" hidden="false" targetId="fa25-5e75-7d54-7a2e" type="profile" />
        <infoLink id="88d1-0673-06f8-3d5d" name="AP Mine (deployed)" hidden="false" targetId="6882-394c-af16-280b" type="profile" />
        <infoLink id="6319-6c1c-c98d-ce57" name="Concealed" hidden="false" targetId="fd9a-f945-a26b-9789" type="rule" />
        <infoLink id="cc10-bb60-aeea-bceb" name="Deployable" hidden="false" targetId="357f-b859-148b-1db0" type="rule" />
        <infoLink id="b9d2-3344-e6c1-9b0b" name="Direct Template" hidden="false" targetId="4577-cc2e-4bd4-74e1" type="rule" />
        <infoLink id="221f-0eb4-ce7f-b321" name="Disposable (X)" hidden="false" targetId="8b2d-eeb9-e446-9928" type="rule" />
        <infoLink id="b65a-e66a-f934-e9d0" name="Intuitive Attack (Trait)" hidden="false" targetId="5583-38f0-d3ae-fac6" type="rule" />
        <infoLink id="01fb-579d-a34f-6281" name="Mines" hidden="false" targetId="40b0-7bdb-3b3c-2148" type="rule" />
      </infoLinks>
    </selectionEntry>
    <selectionEntry id="6e64-827b-2285-1c33" name="Chest Mines" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="fd69-12b6-37a4-abba" name="Chest Mines (BS Mode)" hidden="false" targetId="5b86-3e50-f20f-08e0" type="profile" />
        <infoLink id="7831-b69c-5b65-c9b6" name="Chest Mines (CC Mode)" hidden="false" targetId="340e-e1bf-6918-4c5d" type="profile" />
        <infoLink id="0d60-4453-e13d-fbde" name="Chest Mines" hidden="false" targetId="22f6-8099-655c-c066" type="rule" />
        <infoLink id="05d7-f680-bf3f-fcd7" name="Direct Template" hidden="false" targetId="4577-cc2e-4bd4-74e1" type="rule" />
        <infoLink id="b2a5-4c63-9c7b-faa2" name="Disposable (X)" hidden="false" targetId="8b2d-eeb9-e446-9928" type="rule" />
        <infoLink id="3b0b-c6ee-8bbb-80b2" name="Double Shot" hidden="false" targetId="de00-dbcc-e17d-a405" type="rule" />
        <infoLink id="0a6a-4b2f-cbfd-922c" name="Intuitive Attack (Trait)" hidden="false" targetId="5583-38f0-d3ae-fac6" type="rule" />
      </infoLinks>
    </selectionEntry>
    <selectionEntry id="993e-89ba-6c32-815e" name="Cybermines" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="6523-b2e4-611b-ff21" name="Cybermines" hidden="false" targetId="bf48-9c6a-1c06-684b" type="profile" />
        <infoLink id="a0be-3479-7f02-8e6c" name="Cybermine (deployed)" hidden="false" targetId="78e9-02c5-3a85-3496" type="profile" />
        <infoLink id="e285-909a-ba34-a3f0" name="Comms Attack" hidden="false" targetId="4899-55d1-2017-b7ca" type="rule" />
        <infoLink id="a908-6faa-078c-d81b" name="Concealed" hidden="false" targetId="fd9a-f945-a26b-9789" type="rule" />
        <infoLink id="8c71-11ef-8426-0080" name="Deployable" hidden="false" targetId="357f-b859-148b-1db0" type="rule" />
        <infoLink id="5c03-3514-be69-dc5f" name="Direct Template" hidden="false" targetId="4577-cc2e-4bd4-74e1" type="rule" />
        <infoLink id="b38b-0921-496a-7bc8" name="Disposable (X)" hidden="false" targetId="8b2d-eeb9-e446-9928" type="rule" />
        <infoLink id="08cb-00a9-3306-658c" name="Immobilized-B State" hidden="false" targetId="7e54-dbab-8645-2573" type="rule" />
        <infoLink id="f21d-6425-c286-4e91" name="Intuitive Attack (Trait)" hidden="false" targetId="5583-38f0-d3ae-fac6" type="rule" />
        <infoLink id="f1da-922c-279b-3fa9" name="Mines" hidden="false" targetId="40b0-7bdb-3b3c-2148" type="rule" />
        <infoLink id="e24e-6e2f-146e-08e8" name="Non-Lethal" hidden="false" targetId="d803-d330-3780-823e" type="rule" />
        <infoLink id="df2e-508f-5ed9-5c71" name="State" hidden="false" targetId="a15e-7481-0da9-5e08" type="rule" />
        <infoLink id="e7a3-22df-89f1-a924" name="Stunned State" hidden="false" targetId="8ffa-6d42-5f8c-5e77" type="rule" />
      </infoLinks>
    </selectionEntry>
    <selectionEntry id="bd1c-123f-7d16-7f0c" name="Drop Bears" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="830d-208f-1fdb-bb10" name="Drop Bears (BS Mode)" hidden="false" targetId="3337-bcce-e223-170e" type="profile" />
        <infoLink id="8058-8ffd-a93e-4a74" name="Drop Bears (Deployable Mode)" hidden="false" targetId="c0b4-89a8-c021-d548" type="profile" />
        <infoLink id="ee37-0301-ad38-734d" name="Drop Bear (deployed)" hidden="false" targetId="0ee4-13ac-3fa0-de6b" type="profile" />
        <infoLink id="84b6-911f-7b67-529b" name="BS Weapon (PH)" hidden="false" targetId="e484-20cb-65f9-bd30" type="rule" />
        <infoLink id="01e2-63d7-0785-e4b8" name="Deployable" hidden="false" targetId="357f-b859-148b-1db0" type="rule" />
        <infoLink id="87d4-b0b9-02fe-c3bc" name="Direct Template" hidden="false" targetId="4577-cc2e-4bd4-74e1" type="rule" />
        <infoLink id="8448-53bb-5015-715b" name="Disposable (X)" hidden="false" targetId="8b2d-eeb9-e446-9928" type="rule" />
        <infoLink id="ebd7-c1a3-d459-360b" name="Drop Bears" hidden="false" targetId="df3c-1c46-be9f-1d23" type="rule" />
        <infoLink id="c466-d5d1-0a54-a1eb" name="Intuitive Attack (Trait)" hidden="false" targetId="5583-38f0-d3ae-fac6" type="rule" />
        <infoLink id="af88-7940-bf3c-05e3" name="Speculative Attack" hidden="false" targetId="16d3-83ad-2f43-af1e" type="rule" />
        <infoLink id="a9b1-a597-2c0c-356d" name="Targetless" hidden="false" targetId="956f-7124-cea8-5050" type="rule" />
      </infoLinks>
    </selectionEntry>
    <selectionEntry id="4375-6232-733b-a5fd" name="E/M Mines" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="bcea-f537-3cd7-864b" name="E/M Mines" hidden="false" targetId="f948-4dd0-e51f-fa35" type="profile" />
        <infoLink id="5804-4d8d-b8d7-0ef1" name="E/M Mine (deployed)" hidden="false" targetId="1ecf-0146-2470-c559" type="profile" />
        <infoLink id="8b59-e611-3244-de8d" name="Concealed" hidden="false" targetId="fd9a-f945-a26b-9789" type="rule" />
        <infoLink id="29da-45ff-6902-d017" name="Deployable" hidden="false" targetId="357f-b859-148b-1db0" type="rule" />
        <infoLink id="0e05-a202-1e3e-f803" name="Direct Template" hidden="false" targetId="4577-cc2e-4bd4-74e1" type="rule" />
        <infoLink id="1882-567f-7fbb-4657" name="Disposable (X)" hidden="false" targetId="8b2d-eeb9-e446-9928" type="rule" />
        <infoLink id="1dc4-8d0f-6316-9abd" name="Intuitive Attack (Trait)" hidden="false" targetId="5583-38f0-d3ae-fac6" type="rule" />
        <infoLink id="cd80-319f-7f6a-9474" name="Mines" hidden="false" targetId="40b0-7bdb-3b3c-2148" type="rule" />
        <infoLink id="7c7b-ef54-321e-5d51" name="Non-Lethal" hidden="false" targetId="d803-d330-3780-823e" type="rule" />
      </infoLinks>
    </selectionEntry>
    <selectionEntry id="c455-d446-a37e-7d49" name="Mine Dispenser" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="7fcd-794d-02c9-c437" name="Mine Dispenser" hidden="false" targetId="1c3c-f9bd-8d3d-a34d" type="profile" />
        <infoLink id="4a74-d936-2db4-36fe" name="Disposable (X)" hidden="false" targetId="8b2d-eeb9-e446-9928" type="rule" />
        <infoLink id="a24a-9164-c6ab-f1c1" name="Double Shot" hidden="false" targetId="de00-dbcc-e17d-a405" type="rule" />
        <infoLink id="5dbb-6229-5a72-11a5" name="Mine Dispenser" hidden="false" targetId="0fb2-12d0-889c-5b96" type="rule" />
        <infoLink id="2cc8-bfa5-2f8b-6e20" name="Speculative Attack" hidden="false" targetId="16d3-83ad-2f43-af1e" type="rule" />
        <infoLink id="2ba6-94cf-f2e2-be0d" name="Targetless" hidden="false" targetId="956f-7124-cea8-5050" type="rule" />
      </infoLinks>
    </selectionEntry>
    <selectionEntry id="31f5-a96a-993d-26e6" name="Monofilament Mines" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="6252-da4e-1375-1398" name="Monofilament Mines" hidden="false" targetId="2e26-3cae-b610-f257" type="profile" />
        <infoLink id="6cf7-d582-2dfa-62cb" name="Monofilament Mine (deployed)" hidden="false" targetId="7666-2c55-eb5a-b504" type="profile" />
        <infoLink id="f882-99da-0cc1-2134" name="Concealed" hidden="false" targetId="fd9a-f945-a26b-9789" type="rule" />
        <infoLink id="43af-c01a-673f-e117" name="Dead State" hidden="false" targetId="4bbb-f9a5-e18f-1905" type="rule" />
        <infoLink id="66ef-71cf-3f31-72a2" name="Deployable" hidden="false" targetId="357f-b859-148b-1db0" type="rule" />
        <infoLink id="5a08-1a23-9d7d-fe41" name="Direct Template" hidden="false" targetId="4577-cc2e-4bd4-74e1" type="rule" />
        <infoLink id="b301-3990-dbe6-c943" name="Disposable (X)" hidden="false" targetId="8b2d-eeb9-e446-9928" type="rule" />
        <infoLink id="0379-25bf-6d1b-a918" name="Intuitive Attack (Trait)" hidden="false" targetId="5583-38f0-d3ae-fac6" type="rule" />
        <infoLink id="f70d-1814-93b3-54da" name="Mines" hidden="false" targetId="40b0-7bdb-3b3c-2148" type="rule" />
        <infoLink id="755b-b5e0-f268-f152" name="State" hidden="false" targetId="a15e-7481-0da9-5e08" type="rule" />
      </infoLinks>
    </selectionEntry>
    <selectionEntry id="886b-1454-375e-3669" name="PARA Mines" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="a912-a491-5426-c5df" name="PARA Mines" hidden="false" targetId="1b77-db78-12ca-81ff" type="profile" />
        <infoLink id="23d3-761b-7d8a-063e" name="PARA Mine (deployed)" hidden="false" targetId="c56c-38ad-b390-93cc" type="profile" />
        <infoLink id="7d6f-16b9-47ac-8a3d" name="Concealed" hidden="false" targetId="fd9a-f945-a26b-9789" type="rule" />
        <infoLink id="512a-9013-f912-ff19" name="Deployable" hidden="false" targetId="357f-b859-148b-1db0" type="rule" />
        <infoLink id="0d69-595a-ce27-20af" name="Direct Template" hidden="false" targetId="4577-cc2e-4bd4-74e1" type="rule" />
        <infoLink id="86c9-4e07-bf1d-0a14" name="Disposable (X)" hidden="false" targetId="8b2d-eeb9-e446-9928" type="rule" />
        <infoLink id="079c-f29a-b071-ce72" name="Intuitive Attack (Trait)" hidden="false" targetId="5583-38f0-d3ae-fac6" type="rule" />
        <infoLink id="768b-77d2-79b5-78f2" name="Mines" hidden="false" targetId="40b0-7bdb-3b3c-2148" type="rule" />
        <infoLink id="a047-4365-8868-29f4" name="Non-Lethal" hidden="false" targetId="d803-d330-3780-823e" type="rule" />
      </infoLinks>
    </selectionEntry>
    <selectionEntry id="47b9-0f54-b834-abfc" name="Shock Mines" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="4cbf-e040-cb75-0c9a" name="Shock Mines" hidden="false" targetId="2dc0-76e3-a949-58ef" type="profile" />
        <infoLink id="9030-670e-c156-8a7d" name="Shock Mine (deployed)" hidden="false" targetId="2622-f22f-60ef-be34" type="profile" />
        <infoLink id="3661-f13f-bbd0-4fb1" name="Concealed" hidden="false" targetId="fd9a-f945-a26b-9789" type="rule" />
        <infoLink id="d067-7aad-c092-e8f1" name="Deployable" hidden="false" targetId="357f-b859-148b-1db0" type="rule" />
        <infoLink id="fb1f-5a02-ccaf-2f7b" name="Direct Template" hidden="false" targetId="4577-cc2e-4bd4-74e1" type="rule" />
        <infoLink id="4166-f5df-9757-cd66" name="Disposable (X)" hidden="false" targetId="8b2d-eeb9-e446-9928" type="rule" />
        <infoLink id="ac98-07df-7788-1fe1" name="Intuitive Attack (Trait)" hidden="false" targetId="5583-38f0-d3ae-fac6" type="rule" />
        <infoLink id="20d2-7c45-56ec-fc91" name="Mines" hidden="false" targetId="40b0-7bdb-3b3c-2148" type="rule" />
      </infoLinks>
    </selectionEntry>
    <selectionEntry id="268a-f3a0-63ff-d6c8" name="Viral Mines" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="1caf-3fd4-bbf4-ca86" name="Viral Mines" hidden="false" targetId="6908-4686-2a74-f69e" type="profile" />
        <infoLink id="471b-e5a2-1e60-b303" name="Viral Mine (deployed)" hidden="false" targetId="c3fb-6110-bca1-c26c" type="profile" />
        <infoLink id="b9d9-0d31-5965-e753" name="BioWeapon" hidden="false" targetId="857d-68c2-aa74-da8f" type="rule" />
        <infoLink id="075c-24d9-4eec-2b1b" name="Concealed" hidden="false" targetId="fd9a-f945-a26b-9789" type="rule" />
        <infoLink id="aae4-347c-7649-ed43" name="Deployable" hidden="false" targetId="357f-b859-148b-1db0" type="rule" />
        <infoLink id="62aa-539d-fb7b-51e8" name="Direct Template" hidden="false" targetId="4577-cc2e-4bd4-74e1" type="rule" />
        <infoLink id="913f-6fdd-4c9c-ab72" name="Disposable (X)" hidden="false" targetId="8b2d-eeb9-e446-9928" type="rule" />
        <infoLink id="5c0d-980f-f108-bdf6" name="Intuitive Attack (Trait)" hidden="false" targetId="5583-38f0-d3ae-fac6" type="rule" />
        <infoLink id="48dd-fcab-8a5f-7e53" name="Mines" hidden="false" targetId="40b0-7bdb-3b3c-2148" type="rule" />
      </infoLinks>
    </selectionEntry>
    <selectionEntry id="933e-cce1-2c0f-0f67" name="WildParrot" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="8ddf-fad8-d75a-d422" name="WildParrot" hidden="false" targetId="06dd-ed46-c2f7-81c9" type="profile" />
        <infoLink id="3599-3ace-e9cd-d855" name="WildParrot (deployed)" hidden="false" targetId="0151-42b6-693b-fe14" type="profile" />
        <infoLink id="b8c8-b284-5ee2-dfd3" name="Deployable" hidden="false" targetId="357f-b859-148b-1db0" type="rule" />
        <infoLink id="e769-ea96-b187-02dd" name="Direct Template" hidden="false" targetId="4577-cc2e-4bd4-74e1" type="rule" />
        <infoLink id="6837-4df5-ff67-acdf" name="Disposable (X)" hidden="false" targetId="8b2d-eeb9-e446-9928" type="rule" />
        <infoLink id="18cb-825d-f20a-014f" name="Intuitive Attack (Trait)" hidden="false" targetId="5583-38f0-d3ae-fac6" type="rule" />
        <infoLink id="6dd1-9b49-c481-84e0" name="Non-Lethal" hidden="false" targetId="d803-d330-3780-823e" type="rule" />
        <infoLink id="10b5-6f84-fbeb-1f07" name="Perimeter" hidden="false" targetId="1a45-8ac4-80d6-5b7e" type="rule" />
        <infoLink id="6d91-39ec-2735-b2ed" name="WildParrot" hidden="false" targetId="d549-7f58-d394-c53b" type="rule" />
      </infoLinks>
    </selectionEntry>
    <selectionEntry id="eba8-92f9-c2e1-6666" name="PT: Endgame" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="447d-957d-3a4c-ed21" name="PT: Endgame" hidden="false" targetId="91ad-5255-a2ee-78c6" type="profile" />
        <infoLink id="dbcc-61af-b478-60e5" name="BS Weapon (WIP)" hidden="false" targetId="64df-5f16-6f83-af68" type="rule" />
        <infoLink id="2434-6e99-a134-da6b" name="Comms Attack" hidden="false" targetId="4899-55d1-2017-b7ca" type="rule" />
        <infoLink id="6b17-6c94-a587-98de" name="Disposable (X)" hidden="false" targetId="8b2d-eeb9-e446-9928" type="rule" />
        <infoLink id="ad36-168d-ccea-c897" name="Double Shot" hidden="false" targetId="de00-dbcc-e17d-a405" type="rule" />
        <infoLink id="20dc-febc-f996-c0cd" name="Target (Attribute)" hidden="false" targetId="dde6-0d19-eea0-be11" type="rule" />
      </infoLinks>
    </selectionEntry>
    <selectionEntry id="acba-8209-3963-23b0" name="PT: Eraser" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="6afb-15d9-1c5b-907c" name="PT: Eraser" hidden="false" targetId="3601-9370-7e23-baef" type="profile" />
        <infoLink id="220b-0260-6c04-e62f" name="BS Weapon (WIP)" hidden="false" targetId="64df-5f16-6f83-af68" type="rule" />
        <infoLink id="034c-10b5-706d-a282" name="Comms Attack" hidden="false" targetId="4899-55d1-2017-b7ca" type="rule" />
        <infoLink id="e10f-8cf0-27e8-2df7" name="Isolated State" hidden="false" targetId="5664-fa14-012c-9bd5" type="rule" />
        <infoLink id="c68c-fcb8-0e04-e770" name="Non-Lethal" hidden="false" targetId="d803-d330-3780-823e" type="rule" />
        <infoLink id="de71-ed5e-d825-f9ed" name="State" hidden="false" targetId="a15e-7481-0da9-5e08" type="rule" />
        <infoLink id="6d71-b333-65c3-775d" name="Target (Attribute)" hidden="false" targetId="dde6-0d19-eea0-be11" type="rule" />
      </infoLinks>
    </selectionEntry>
    <selectionEntry id="ba13-f1c6-e551-29f6" name="PT: Mirrorball" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="49fd-cb2a-3646-4bce" name="PT: Mirrorball" hidden="false" targetId="af9e-2dbf-477c-47be" type="profile" />
        <infoLink id="6155-ddb2-552d-7c3f" name="BS Weapon (WIP)" hidden="false" targetId="64df-5f16-6f83-af68" type="rule" />
        <infoLink id="6296-76e3-7eee-bc1b" name="Comms Attack" hidden="false" targetId="4899-55d1-2017-b7ca" type="rule" />
        <infoLink id="83e5-aae3-54a0-07e5" name="Impact Template" hidden="false" targetId="d515-904e-7f49-17b1" type="rule" />
        <infoLink id="cc2e-fadc-2352-6e0c" name="Non-Lethal" hidden="false" targetId="d803-d330-3780-823e" type="rule" />
        <infoLink id="30fa-e2d7-9d56-76b7" name="Reflective" hidden="false" targetId="a5c2-9e7d-b60b-fa4b" type="rule" />
        <infoLink id="230a-2cc2-d98d-a887" name="Targetless" hidden="false" targetId="956f-7124-cea8-5050" type="rule" />
      </infoLinks>
    </selectionEntry>
    <selectionEntry id="4127-5032-e075-d33b" name="AP Heavy Pistol" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="326a-0af1-ac54-c2dd" name="AP Heavy Pistol" hidden="false" targetId="74d8-82c1-1c6d-f8fb" type="profile" />
      </infoLinks>
    </selectionEntry>
    <selectionEntry id="e3f6-b3fb-3592-6521" name="Assault Pistol" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="d1b2-e205-dffa-c9c9" name="Assault Pistol" hidden="false" targetId="33ac-515d-7b86-33a5" type="profile" />
      </infoLinks>
    </selectionEntry>
    <selectionEntry id="a7f2-7908-a6ce-ffa5" name="Boarding Pistol" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="f90e-395d-ccb9-d325" name="Boarding Pistol (Blast Mode)" hidden="false" targetId="42a9-7358-ef37-5f11" type="profile" />
        <infoLink id="8f83-a87d-f27b-150c" name="Boarding Pistol (Hit Mode)" hidden="false" targetId="eb72-952d-09d4-2dfd" type="profile" />
        <infoLink id="fcb5-55aa-d397-4571" name="Direct Template" hidden="false" targetId="4577-cc2e-4bd4-74e1" type="rule" />
        <infoLink id="40d1-81fc-2a4c-3952" name="Intuitive Attack (Trait)" hidden="false" targetId="5583-38f0-d3ae-fac6" type="rule" />
      </infoLinks>
    </selectionEntry>
    <selectionEntry id="d193-de03-016c-9a80" name="Breaker Pistol" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="d26f-515d-eb54-acb4" name="Breaker Pistol" hidden="false" targetId="b0e1-c531-27ec-f0a0" type="profile" />
      </infoLinks>
    </selectionEntry>
    <selectionEntry id="fbd5-fbc7-a86f-c55c" name="Heavy Pistol" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="5749-1652-c949-7035" name="Heavy Pistol" hidden="false" targetId="0443-7d7c-077e-6978" type="profile" />
      </infoLinks>
    </selectionEntry>
    <selectionEntry id="aa08-e908-23e4-2e0e" name="Kobra Pistol" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="f36b-e2be-df68-cdef" name="Kobra Pistol (BS Mode)" hidden="false" targetId="c67b-c9e1-c0bb-fd7e" type="profile" />
        <infoLink id="c3dc-994f-87a5-7eea" name="Kobra Pistol (CC Mode)" hidden="false" targetId="198c-0120-2ece-abfb" type="profile" />
        <infoLink id="f5f2-db47-8d68-6697" name="Anti-materiel" hidden="false" targetId="e196-fa3f-b53c-73ee" type="rule" />
        <infoLink id="6853-421b-ab44-a576" name="CC" hidden="false" targetId="9297-b5bd-8bc3-59b1" type="rule" />
        <infoLink id="67c7-291e-212e-db20" name="Mixed Weapons" hidden="false" targetId="4c56-e5ad-a1f0-7281" type="rule" />
      </infoLinks>
    </selectionEntry>
    <selectionEntry id="cf8a-c802-fb00-8a83" name="MULTI Pistol" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="278e-b756-dde7-b809" name="MULTI Pistol" hidden="false" targetId="dd3b-3c3a-d838-dba8" type="profile" />
        <infoLink id="932f-0360-550a-d9aa" name="Anti-materiel" hidden="false" targetId="e196-fa3f-b53c-73ee" type="rule" />
      </infoLinks>
    </selectionEntry>
    <selectionEntry id="a7a4-9fb6-480c-ebb5" name="Pistol" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="b33d-23f3-3c34-eaef" name="Pistol" hidden="false" targetId="98f7-c555-889e-699d" type="profile" />
      </infoLinks>
    </selectionEntry>
    <selectionEntry id="fc17-6bca-43bf-b040" name="Silenced Pistol" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="b148-a187-65a8-1c08" name="Silenced Pistol" hidden="false" targetId="f839-4425-4c04-9030" type="profile" />
        <infoLink id="2154-f484-4d7a-f414" name="Silent (X)" hidden="false" targetId="8107-bbbe-ba62-8ded" type="rule" />
      </infoLinks>
    </selectionEntry>
    <selectionEntry id="d47a-bf8f-0fdb-aee9" name="Stun Pistol" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="a998-f89b-581f-dddc" name="Stun Pistol" hidden="false" targetId="6d1e-47e0-5df7-c635" type="profile" />
        <infoLink id="73f6-ee41-0aea-d9b9" name="Non-Lethal" hidden="false" targetId="d803-d330-3780-823e" type="rule" />
        <infoLink id="b27f-d715-d13a-dc3a" name="State" hidden="false" targetId="a15e-7481-0da9-5e08" type="rule" />
        <infoLink id="49bf-2168-85d5-da7a" name="Stunned State" hidden="false" targetId="8ffa-6d42-5f8c-5e77" type="rule" />
      </infoLinks>
    </selectionEntry>
    <selectionEntry id="671b-4275-03cb-6a7c" name="Viral Pistol" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="f6fe-1c54-f282-ab49" name="Viral Pistol" hidden="false" targetId="8ccd-058f-ceb8-0fec" type="profile" />
        <infoLink id="4487-5d3b-0363-6805" name="BioWeapon" hidden="false" targetId="857d-68c2-aa74-da8f" type="rule" />
      </infoLinks>
    </selectionEntry>
    <selectionEntry id="f8fe-9bd3-188f-c539" name="AP Red Fury" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="c0d0-fd53-158a-898b" name="AP Red Fury" hidden="false" targetId="cf41-0817-c4bc-7c14" type="profile" />
        <infoLink id="5148-e95d-1133-8d36" name="Suppressive Fire (Trait)" hidden="false" targetId="5f14-9dd9-f80b-6451" type="rule" />
      </infoLinks>
    </selectionEntry>
    <selectionEntry id="46b9-a2f8-a33b-9f15" name="MULTI Red Fury" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="75b6-5abc-2dba-af29" name="MULTI Red Fury" hidden="false" targetId="4a11-8dc6-4709-64ba" type="profile" />
        <infoLink id="f923-570e-df02-2dba" name="Anti-materiel" hidden="false" targetId="e196-fa3f-b53c-73ee" type="rule" />
        <infoLink id="7cc7-8dd2-5033-64f2" name="Suppressive Fire (Trait)" hidden="false" targetId="5f14-9dd9-f80b-6451" type="rule" />
      </infoLinks>
    </selectionEntry>
    <selectionEntry id="623a-bbe0-6b85-69b8" name="Red Fury" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="9dd2-20de-31ff-91c9" name="Red Fury" hidden="false" targetId="ac82-1158-013f-a610" type="profile" />
        <infoLink id="e4d2-67f0-59b8-8362" name="Suppressive Fire (Trait)" hidden="false" targetId="5f14-9dd9-f80b-6451" type="rule" />
      </infoLinks>
    </selectionEntry>
    <selectionEntry id="bf0c-7cf7-f854-b7d8" name="AP Rifle" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="cc4f-75ae-2c2f-b2df" name="AP Rifle" hidden="false" targetId="f392-ffe9-b588-2e1f" type="profile" />
        <infoLink id="9db3-8b22-01fe-72fb" name="Suppressive Fire (Trait)" hidden="false" targetId="5f14-9dd9-f80b-6451" type="rule" />
      </infoLinks>
    </selectionEntry>
    <selectionEntry id="5e55-3e30-6808-f602" name="Adhesive Launcher Rifle" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="f2e0-1251-9d67-ee2d" name="Adhesive Launcher Rifle" hidden="false" targetId="3272-0684-c15e-8714" type="profile" />
        <infoLink id="81fb-3a75-8d17-da95" name="Non-Lethal" hidden="false" targetId="d803-d330-3780-823e" type="rule" />
      </infoLinks>
    </selectionEntry>
    <selectionEntry id="94e6-2f23-4e5a-034e" name="Breaker Combi Rifle" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="a9a7-fc0e-0827-48bc" name="Breaker Combi Rifle" hidden="false" targetId="457e-84d8-e23d-d77c" type="profile" />
        <infoLink id="c68f-d5ed-5d4c-23de" name="Suppressive Fire (Trait)" hidden="false" targetId="5f14-9dd9-f80b-6451" type="rule" />
      </infoLinks>
    </selectionEntry>
    <selectionEntry id="8fa1-9dbc-4e92-9865" name="Breaker Rifle" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="5512-543a-83a9-657b" name="Breaker Rifle" hidden="false" targetId="b4c6-c968-2cdc-35a8" type="profile" />
        <infoLink id="babc-566e-959a-4614" name="Suppressive Fire (Trait)" hidden="false" targetId="5f14-9dd9-f80b-6451" type="rule" />
      </infoLinks>
    </selectionEntry>
    <selectionEntry id="1fa4-16e4-b81b-7a69" name="Combi Rifle" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="4ca8-7c26-ec26-f740" name="Combi Rifle" hidden="false" targetId="79d8-80b0-c30c-1238" type="profile" />
        <infoLink id="7a35-8e2f-3c9c-683e" name="Suppressive Fire (Trait)" hidden="false" targetId="5f14-9dd9-f80b-6451" type="rule" />
      </infoLinks>
    </selectionEntry>
    <selectionEntry id="827d-98a5-8b40-a38d" name="K1 Combi Rifle" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="59f3-6525-da63-7dc4" name="K1 Combi Rifle" hidden="false" targetId="03c0-3e55-6731-e40f" type="profile" />
        <infoLink id="933b-cad4-c68c-6dbc" name="Anti-materiel" hidden="false" targetId="e196-fa3f-b53c-73ee" type="rule" />
        <infoLink id="d6ae-6365-81ac-3fc8" name="Suppressive Fire (Trait)" hidden="false" targetId="5f14-9dd9-f80b-6451" type="rule" />
      </infoLinks>
    </selectionEntry>
    <selectionEntry id="0583-1150-9698-36af" name="MULTI Rifle" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="3fb7-124b-a022-2282" name="MULTI Rifle" hidden="false" targetId="c000-3dd7-67d9-6880" type="profile" />
        <infoLink id="0113-6a4d-59b7-743a" name="Anti-materiel" hidden="false" targetId="e196-fa3f-b53c-73ee" type="rule" />
        <infoLink id="51d6-48b9-5149-5e16" name="Suppressive Fire (Trait)" hidden="false" targetId="5f14-9dd9-f80b-6451" type="rule" />
      </infoLinks>
    </selectionEntry>
    <selectionEntry id="af63-8249-ee65-75f8" name="Plasma Rifle" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="0fb5-7e31-19dd-acd2" name="Plasma Rifle (Blast Mode)" hidden="false" targetId="ffd3-015e-b05a-73af" type="profile" />
        <infoLink id="424e-4efe-1d1e-2f55" name="Plasma Rifle (Hit Mode)" hidden="false" targetId="d69e-6ef5-3a59-789b" type="profile" />
        <infoLink id="12e3-ad54-8110-6168" name="Combined Saving Roll" hidden="false" targetId="30dc-566e-e55e-3203" type="rule" />
        <infoLink id="6fbb-4f0e-2dce-87dd" name="Impact Template" hidden="false" targetId="d515-904e-7f49-17b1" type="rule" />
        <infoLink id="16ac-d701-861b-2235" name="Suppressive Fire (Trait)" hidden="false" targetId="5f14-9dd9-f80b-6451" type="rule" />
      </infoLinks>
    </selectionEntry>
    <selectionEntry id="c7fb-ddae-c45a-8cd6" name="Rifle" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="fcd0-d56f-39ef-6aa4" name="Rifle" hidden="false" targetId="d25e-d34a-a24e-ffcc" type="profile" />
        <infoLink id="39a9-97e5-2a6d-a23a" name="Suppressive Fire (Trait)" hidden="false" targetId="5f14-9dd9-f80b-6451" type="rule" />
      </infoLinks>
    </selectionEntry>
    <selectionEntry id="024f-e658-c5e7-b6fa" name="T2 Rifle" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="b41d-2d7f-bf1a-610c" name="T2 Rifle" hidden="false" targetId="2177-2152-0f90-ba7d" type="profile" />
        <infoLink id="3537-7cc6-9159-e522" name="Anti-materiel" hidden="false" targetId="e196-fa3f-b53c-73ee" type="rule" />
        <infoLink id="e26d-75e9-358d-6ef0" name="Suppressive Fire (Trait)" hidden="false" targetId="5f14-9dd9-f80b-6451" type="rule" />
      </infoLinks>
    </selectionEntry>
    <selectionEntry id="cb4e-387f-e479-1657" name="Viral Combi Rifle" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="a404-53c9-a2ed-5580" name="Viral Combi Rifle" hidden="false" targetId="8335-189a-e866-bf48" type="profile" />
        <infoLink id="7f26-0cc8-3f14-6182" name="BioWeapon" hidden="false" targetId="857d-68c2-aa74-da8f" type="rule" />
        <infoLink id="c2a4-4efb-5264-41b2" name="Suppressive Fire (Trait)" hidden="false" targetId="5f14-9dd9-f80b-6451" type="rule" />
      </infoLinks>
    </selectionEntry>
    <selectionEntry id="c31d-f918-d0cf-ab57" name="Viral Rifle" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="6c6c-f8a4-233d-ec7a" name="Viral Rifle" hidden="false" targetId="1929-6b67-6d69-5291" type="profile" />
        <infoLink id="2faf-63c0-d775-4d86" name="BioWeapon" hidden="false" targetId="857d-68c2-aa74-da8f" type="rule" />
        <infoLink id="2ae8-88da-0c52-1254" name="Suppressive Fire (Trait)" hidden="false" targetId="5f14-9dd9-f80b-6451" type="rule" />
      </infoLinks>
    </selectionEntry>
    <selectionEntry id="5c85-090e-167a-1c77" name="Heavy Riotstopper" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="0ef4-7eb9-0688-53f0" name="Heavy Riotstopper" hidden="false" targetId="915d-12d0-39a3-ca2e" type="profile" />
        <infoLink id="9dbb-3193-8b72-8afe" name="Direct Template" hidden="false" targetId="4577-cc2e-4bd4-74e1" type="rule" />
        <infoLink id="428a-a435-22cd-1ea7" name="Immobilized-A State" hidden="false" targetId="92d0-fd93-3458-e1a5" type="rule" />
        <infoLink id="757d-a82c-08ee-e7a8" name="Intuitive Attack (Trait)" hidden="false" targetId="5583-38f0-d3ae-fac6" type="rule" />
        <infoLink id="214b-8d20-1cad-e16f" name="Non-Lethal" hidden="false" targetId="d803-d330-3780-823e" type="rule" />
        <infoLink id="6156-969e-5158-07c5" name="State" hidden="false" targetId="a15e-7481-0da9-5e08" type="rule" />
      </infoLinks>
    </selectionEntry>
    <selectionEntry id="c339-1425-033f-52e1" name="Light Riotstopper" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="b1cb-b0c6-9d4b-cb6b" name="Light Riotstopper" hidden="false" targetId="e1fb-89b0-bd44-46d3" type="profile" />
        <infoLink id="0b53-0e06-547e-d089" name="Direct Template" hidden="false" targetId="4577-cc2e-4bd4-74e1" type="rule" />
        <infoLink id="124c-b531-8b93-7795" name="Immobilized-A State" hidden="false" targetId="92d0-fd93-3458-e1a5" type="rule" />
        <infoLink id="ee35-c967-99c6-0969" name="Intuitive Attack (Trait)" hidden="false" targetId="5583-38f0-d3ae-fac6" type="rule" />
        <infoLink id="f6ce-cf36-fc9c-1e88" name="Non-Lethal" hidden="false" targetId="d803-d330-3780-823e" type="rule" />
        <infoLink id="f088-1f14-981c-1941" name="State" hidden="false" targetId="a15e-7481-0da9-5e08" type="rule" />
      </infoLinks>
    </selectionEntry>
    <selectionEntry id="e30f-b172-7d73-c3b8" name="Heavy Rocket Launcher" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="90fc-615f-c67b-3171" name="Heavy Rocket Launcher (Blast Mode)" hidden="false" targetId="5fa7-1a6b-1df3-5dff" type="profile" />
        <infoLink id="f200-3b62-d750-99e5" name="Heavy Rocket Launcher (Hit Mode)" hidden="false" targetId="a9d5-4dd4-506e-53ed" type="profile" />
        <infoLink id="cd48-1df0-f169-458d" name="Continuous Damage" hidden="false" targetId="88e9-ae8b-2910-5ad7" type="rule" />
        <infoLink id="7962-7160-ddb3-7b0e" name="Impact Template" hidden="false" targetId="d515-904e-7f49-17b1" type="rule" />
      </infoLinks>
    </selectionEntry>
    <selectionEntry id="f77c-1c17-6547-94d2" name="Light Rocket Launcher" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="e646-95ff-fc94-3ecd" name="Light Rocket Launcher (Blast Mode)" hidden="false" targetId="70d4-ce9a-fc41-0d1c" type="profile" />
        <infoLink id="60ec-691b-4393-418a" name="Light Rocket Launcher (Hit Mode)" hidden="false" targetId="cc1d-27d2-e8d6-9f8b" type="profile" />
        <infoLink id="a0c4-1c1e-63b8-0e41" name="Continuous Damage" hidden="false" targetId="88e9-ae8b-2910-5ad7" type="rule" />
        <infoLink id="6f80-fe13-775c-353b" name="Impact Template" hidden="false" targetId="d515-904e-7f49-17b1" type="rule" />
      </infoLinks>
    </selectionEntry>
    <selectionEntry id="bbd5-afa0-cd6b-549b" name="Boarding Shotgun" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="336a-a89a-906a-d02b" name="Boarding Shotgun" hidden="false" targetId="7142-dcdd-f6db-c497" type="profile" />
      </infoLinks>
    </selectionEntry>
    <selectionEntry id="a616-3ee3-782f-fdc0" name="Heavy Shotgun" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="e8b8-1795-191e-ed17" name="Heavy Shotgun" hidden="false" targetId="ae80-f5e1-55d4-e3ed" type="profile" />
      </infoLinks>
    </selectionEntry>
    <selectionEntry id="9738-d743-fcfb-a866" name="Light Shotgun" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="d06d-e3e1-9a79-0897" name="Light Shotgun" hidden="false" targetId="ba3b-d4e2-3b8f-7293" type="profile" />
      </infoLinks>
    </selectionEntry>
    <selectionEntry id="61c3-4c55-fbff-8f39" name="T2 Boarding Shotgun" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="b9ae-8577-aa9e-648a" name="T2 Boarding Shotgun" hidden="false" targetId="7c4b-8e85-5e6d-1d8c" type="profile" />
        <infoLink id="d17c-1d81-5b16-0d42" name="Anti-materiel" hidden="false" targetId="e196-fa3f-b53c-73ee" type="rule" />
      </infoLinks>
    </selectionEntry>
    <selectionEntry id="9bf8-b2a7-fd2e-7450" name="Vulkan Shotgun" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="b058-52f3-7be2-a31e" name="Vulkan Shotgun" hidden="false" targetId="b194-05cc-a09c-caa0" type="profile" />
        <infoLink id="7c27-3ed5-9de4-82bf" name="Continuous Damage" hidden="false" targetId="88e9-ae8b-2910-5ad7" type="rule" />
      </infoLinks>
    </selectionEntry>
    <selectionEntry id="aeb4-2440-a17a-1790" name="AP Sniper Rifle" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="3ab9-690b-7810-4f50" name="AP Sniper Rifle" hidden="false" targetId="a6fa-4638-69ee-9b1c" type="profile" />
      </infoLinks>
    </selectionEntry>
    <selectionEntry id="4181-645d-2e2c-a352" name="K1 Sniper Rifle" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="32d1-7e85-e17f-c0df" name="K1 Sniper Rifle" hidden="false" targetId="dc1f-0212-5b4d-ada4" type="profile" />
        <infoLink id="7461-df5f-0cc2-2d59" name="Anti-materiel" hidden="false" targetId="e196-fa3f-b53c-73ee" type="rule" />
      </infoLinks>
    </selectionEntry>
    <selectionEntry id="5bd3-0b29-0dba-811c" name="MULTI Sniper Rifle" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="85cd-918b-029c-fe2a" name="MULTI Sniper Rifle" hidden="false" targetId="22cc-8ead-983f-8f67" type="profile" />
        <infoLink id="7bed-f680-8ad1-17e1" name="Anti-materiel" hidden="false" targetId="e196-fa3f-b53c-73ee" type="rule" />
      </infoLinks>
    </selectionEntry>
    <selectionEntry id="b337-bc0a-f12c-7763" name="Plasma Sniper Rifle" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="0612-e6c0-7d97-7645" name="Plasma Sniper Rifle (Blast Mode)" hidden="false" targetId="b056-ce53-ec8a-9206" type="profile" />
        <infoLink id="100f-df79-9ae9-1a32" name="Plasma Sniper Rifle (Hit Mode)" hidden="false" targetId="77c4-e99c-ec36-4780" type="profile" />
        <infoLink id="7f51-47f0-f266-ff75" name="Combined Saving Roll" hidden="false" targetId="30dc-566e-e55e-3203" type="rule" />
        <infoLink id="289e-56c8-44d6-77e9" name="Impact Template" hidden="false" targetId="d515-904e-7f49-17b1" type="rule" />
      </infoLinks>
    </selectionEntry>
    <selectionEntry id="3c42-b7fe-c5e8-b764" name="Sniper Rifle" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="bddd-ca1a-2efd-860c" name="Sniper Rifle" hidden="false" targetId="c6da-d567-a9b2-bbb7" type="profile" />
      </infoLinks>
    </selectionEntry>
    <selectionEntry id="eb1a-8a2e-1308-6320" name="T2 Sniper Rifle" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="8919-3bf8-3e74-5227" name="T2 Sniper Rifle" hidden="false" targetId="e60a-ec6c-de00-a20f" type="profile" />
        <infoLink id="40d2-dbf5-3046-ae4b" name="Anti-materiel" hidden="false" targetId="e196-fa3f-b53c-73ee" type="rule" />
      </infoLinks>
    </selectionEntry>
    <selectionEntry id="464b-e1db-8185-68eb" name="Viral Sniper Rifle" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="a465-5f3a-554c-ba76" name="Viral Sniper Rifle" hidden="false" targetId="c549-e15a-7a30-516d" type="profile" />
        <infoLink id="d94a-2aa3-c6b3-41ae" name="BioWeapon" hidden="false" targetId="857d-68c2-aa74-da8f" type="rule" />
      </infoLinks>
    </selectionEntry>
    <selectionEntry id="44b5-3745-814b-5897" name="AP Spitfire" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="e5c7-2c68-0703-3554" name="AP Spitfire" hidden="false" targetId="cd92-6d8d-8cb6-8a73" type="profile" />
        <infoLink id="0197-c694-7935-c8c7" name="Suppressive Fire (Trait)" hidden="false" targetId="5f14-9dd9-f80b-6451" type="rule" />
      </infoLinks>
    </selectionEntry>
    <selectionEntry id="181a-f405-524f-5f02" name="MULTI Spitfire" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="f2a1-43d0-1c3e-0199" name="MULTI Spitfire" hidden="false" targetId="9c8e-baf5-4f4c-bc5e" type="profile" />
        <infoLink id="b3a7-7497-6e31-c9d0" name="Anti-materiel" hidden="false" targetId="e196-fa3f-b53c-73ee" type="rule" />
        <infoLink id="d03f-813d-cfec-8925" name="Suppressive Fire (Trait)" hidden="false" targetId="5f14-9dd9-f80b-6451" type="rule" />
      </infoLinks>
    </selectionEntry>
    <selectionEntry id="0c7f-50a6-e7cf-af99" name="Spitfire" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="bbeb-8474-21f5-52c7" name="Spitfire" hidden="false" targetId="9abb-588f-671c-0596" type="profile" />
        <infoLink id="12bc-c6d0-f4b0-a7ae" name="Suppressive Fire (Trait)" hidden="false" targetId="5f14-9dd9-f80b-6451" type="rule" />
      </infoLinks>
    </selectionEntry>
    <selectionEntry id="f032-156d-55cf-316c" name="AP Submachine Gun" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="9a01-ebbc-6e4f-42a0" name="AP Submachine Gun" hidden="false" targetId="0415-8b9d-ada0-963d" type="profile" />
        <infoLink id="a46f-39c4-0abf-2cec" name="Suppressive Fire (Trait)" hidden="false" targetId="5f14-9dd9-f80b-6451" type="rule" />
      </infoLinks>
    </selectionEntry>
    <selectionEntry id="16c1-d774-3750-fb32" name="Submachine Gun" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="bc99-d628-f069-5074" name="Submachine Gun" hidden="false" targetId="109c-c1d9-93f7-c0cc" type="profile" />
        <infoLink id="6c25-8138-1800-526b" name="Suppressive Fire (Trait)" hidden="false" targetId="5f14-9dd9-f80b-6451" type="rule" />
      </infoLinks>
    </selectionEntry>
    <selectionEntry id="0708-a1dc-5d9b-42ca" name="AP Thunderbolt" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="cc43-6119-6a7a-9e73" name="AP Thunderbolt" hidden="false" targetId="a424-9e5d-68af-4419" type="profile" />
      </infoLinks>
    </selectionEntry>
    <selectionEntry id="db3b-185a-1ddd-2eba" name="Thunderbolt" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="6856-3afa-6284-c1b8" name="Thunderbolt" hidden="false" targetId="2c8a-bcdf-6b37-2abb" type="profile" />
      </infoLinks>
    </selectionEntry>
    <selectionEntry id="5997-c912-30b3-c995" name="Chain-Colt" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="c06e-d390-1f7b-2812" name="Chain-Colt" hidden="false" targetId="a2b0-a83b-abf7-0332" type="profile" />
        <infoLink id="bf45-b36f-822c-f11a" name="Direct Template" hidden="false" targetId="4577-cc2e-4bd4-74e1" type="rule" />
        <infoLink id="2823-8edc-bffa-40c8" name="Intuitive Attack (Trait)" hidden="false" targetId="5583-38f0-d3ae-fac6" type="rule" />
      </infoLinks>
    </selectionEntry>
    <selectionEntry id="1260-a54d-e65f-5758" name="Chain Rifle" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="8a1a-f24b-5d88-7139" name="Chain Rifle" hidden="false" targetId="6ff1-2af2-44b7-8e95" type="profile" />
        <infoLink id="de16-2540-48a6-63d9" name="Direct Template" hidden="false" targetId="4577-cc2e-4bd4-74e1" type="rule" />
        <infoLink id="e2b0-142b-c0c2-70c1" name="Intuitive Attack (Trait)" hidden="false" targetId="5583-38f0-d3ae-fac6" type="rule" />
      </infoLinks>
    </selectionEntry>
    <selectionEntry id="9a66-6441-76f3-0562" name="Contender" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="8fd1-e24a-cd89-245e" name="Contender" hidden="false" targetId="a1c6-532f-46fb-6d45" type="profile" />
        <infoLink id="9ca6-cf3b-a070-48c0" name="Anti-materiel" hidden="false" targetId="e196-fa3f-b53c-73ee" type="rule" />
      </infoLinks>
    </selectionEntry>
    <selectionEntry id="8df0-3677-e46c-47c6" name="CrazyKoalas" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="f68a-248f-9fd1-1a63" name="CrazyKoalas" hidden="false" targetId="7069-67e7-3b10-040e" type="profile" />
        <infoLink id="3433-a46f-2681-a786" name="CrazyKoala (deployed)" hidden="false" targetId="a606-8ff8-0c7b-db90" type="profile" />
        <infoLink id="5281-f463-2904-5c7e" name="Deployable" hidden="false" targetId="357f-b859-148b-1db0" type="rule" />
        <infoLink id="b25e-2487-4d93-6fb6" name="Disposable (X)" hidden="false" targetId="8b2d-eeb9-e446-9928" type="rule" />
        <infoLink id="2425-0fdf-b4c9-4c3a" name="Perimeter" hidden="false" targetId="1a45-8ac4-80d6-5b7e" type="rule" />
        <infoLink id="7892-ada8-031b-333d" name="Perimeter Weapons" hidden="false" targetId="1a8b-af12-d471-a081" type="rule" />
      </infoLinks>
    </selectionEntry>
    <selectionEntry id="eec9-cde9-a813-d224" name="D-Charges" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="fe35-22e1-cdb4-8fba" name="D-Charges (Demolition Mode)" hidden="false" targetId="2d66-446f-a9af-1ba4" type="profile" />
        <infoLink id="a2ff-fea7-aae6-7875" name="D-Charges (CC Mode)" hidden="false" targetId="11cc-d6b5-bde0-32ae" type="profile" />
        <infoLink id="c074-73d0-ca0b-7011" name="Anti-materiel" hidden="false" targetId="e196-fa3f-b53c-73ee" type="rule" />
        <infoLink id="0394-f905-1bd5-8ab9" name="CC" hidden="false" targetId="9297-b5bd-8bc3-59b1" type="rule" />
        <infoLink id="14ed-34a6-cb7b-5660" name="D-Charges" hidden="false" targetId="3628-28eb-21ac-bbd5" type="rule" />
        <infoLink id="3d68-f6eb-62c1-09f3" name="Disposable (X)" hidden="false" targetId="8b2d-eeb9-e446-9928" type="rule" />
        <infoLink id="4a21-3803-4ac1-aad7" name="Improvised" hidden="false" targetId="891d-1dc5-3836-2d6f" type="rule" />
      </infoLinks>
    </selectionEntry>
    <selectionEntry id="c7fe-ff1f-d14b-01f0" name="Disco Baller" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="ed0f-6cb2-13a1-d7a4" name="Disco Baller" hidden="false" targetId="6e56-eb2d-66f3-3848" type="profile" />
        <infoLink id="1e75-4664-c2a9-99dd" name="Disco Ball (deployed)" hidden="false" targetId="405b-eede-2254-7d42" type="profile" />
        <infoLink id="f767-579f-c35b-71da" name="Disco Baller" hidden="false" targetId="5150-d604-a883-1168" type="rule" />
        <infoLink id="c913-79f4-00a0-e9dd" name="Disposable (X)" hidden="false" targetId="8b2d-eeb9-e446-9928" type="rule" />
        <infoLink id="e470-7c88-eb0c-6547" name="Double Shot" hidden="false" targetId="de00-dbcc-e17d-a405" type="rule" />
        <infoLink id="e2ee-8f83-0d75-b547" name="Speculative Attack" hidden="false" targetId="16d3-83ad-2f43-af1e" type="rule" />
        <infoLink id="9b15-da34-d882-e05d" name="Targetless" hidden="false" targetId="956f-7124-cea8-5050" type="rule" />
      </infoLinks>
    </selectionEntry>
    <selectionEntry id="27f7-ea2b-e211-b08f" name="Discover" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="5f94-ce1e-70d7-b204" name="Discover" hidden="false" targetId="4ca2-6b99-b68f-b20d" type="profile" />
        <infoLink id="ae82-2597-5b9f-f442" name="Discover" hidden="false" targetId="0ee9-4f17-1e21-b8e5" type="rule" />
      </infoLinks>
    </selectionEntry>
    <selectionEntry id="81ab-276c-7f7a-332d" name="E/Marat" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="1da4-50fe-6c35-5dfa" name="E/Marat" hidden="false" targetId="5102-a061-ae08-d689" type="profile" />
        <infoLink id="4a27-cb8a-a06a-87a7" name="Direct Template" hidden="false" targetId="4577-cc2e-4bd4-74e1" type="rule" />
        <infoLink id="05b0-14ed-e381-2c49" name="Intuitive Attack (Trait)" hidden="false" targetId="5583-38f0-d3ae-fac6" type="rule" />
        <infoLink id="9ffe-d844-c76b-a21f" name="Non-Lethal" hidden="false" targetId="d803-d330-3780-823e" type="rule" />
      </infoLinks>
    </selectionEntry>
    <selectionEntry id="fb3a-7c9c-ba6b-1c76" name="E/Mitter" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="8710-5fdc-f23c-2488" name="E/Mitter" hidden="false" targetId="7223-07b9-1292-64f0" type="profile" />
        <infoLink id="edd3-715b-38e3-ea9a" name="Non-Lethal" hidden="false" targetId="d803-d330-3780-823e" type="rule" />
      </infoLinks>
    </selectionEntry>
    <selectionEntry id="7212-069b-f7e7-20de" name="Feuerbach" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="03dc-65e4-a710-12bc" name="Feuerbach (Blast Mode)" hidden="false" targetId="ba59-7859-c098-9062" type="profile" />
        <infoLink id="9631-e19c-6f59-9d96" name="Feuerbach (Burst Mode)" hidden="false" targetId="3880-dbe0-2d67-f54b" type="profile" />
        <infoLink id="27d2-f77b-03d5-9741" name="Anti-materiel" hidden="false" targetId="e196-fa3f-b53c-73ee" type="rule" />
      </infoLinks>
    </selectionEntry>
    <selectionEntry id="11af-17cc-ee4e-2348" name="Flash Pulse" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="6dad-c022-7beb-56cc" name="Flash Pulse" hidden="false" targetId="928e-fbde-9196-2147" type="profile" />
        <infoLink id="6e25-7a70-12d8-1b7a" name="BS Weapon (WIP)" hidden="false" targetId="64df-5f16-6f83-af68" type="rule" />
        <infoLink id="e7a7-ac1a-2a41-085c" name="Non-Lethal" hidden="false" targetId="d803-d330-3780-823e" type="rule" />
        <infoLink id="5e6e-0f91-0196-b0ab" name="State" hidden="false" targetId="a15e-7481-0da9-5e08" type="rule" />
        <infoLink id="8477-c649-432f-2c63" name="Stunned State" hidden="false" targetId="8ffa-6d42-5f8c-5e77" type="rule" />
      </infoLinks>
    </selectionEntry>
    <selectionEntry id="e923-fb3c-6aa2-6948" name="Hyper-Rapid Magnetic Cannon" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="1029-7881-2c6b-66ad" name="Hyper-Rapid Magnetic Cannon" hidden="false" targetId="9fcf-b285-1ca1-1953" type="profile" />
        <infoLink id="f6b4-2ed7-90d4-c91a" name="Anti-materiel" hidden="false" targetId="e196-fa3f-b53c-73ee" type="rule" />
        <infoLink id="c6f2-1986-5dc7-97b7" name="Suppressive Fire (Trait)" hidden="false" targetId="5f14-9dd9-f80b-6451" type="rule" />
      </infoLinks>
    </selectionEntry>
    <selectionEntry id="a8c5-3c32-aea1-749e" name="Jammer" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="7ab6-36b5-025c-8d3e" name="Jammer" hidden="false" targetId="8b55-ceab-6a36-a8b5" type="profile" />
        <infoLink id="e9c1-6a1f-3041-61f8" name="BS Weapon (WIP)" hidden="false" targetId="64df-5f16-6f83-af68" type="rule" />
        <infoLink id="77df-a9db-2430-5db3" name="Comms Attack" hidden="false" targetId="4899-55d1-2017-b7ca" type="rule" />
        <infoLink id="4bb9-9283-bd3a-696b" name="Disposable (X)" hidden="false" targetId="8b2d-eeb9-e446-9928" type="rule" />
        <infoLink id="723a-c420-89e7-946d" name="Intuitive Attack (Trait)" hidden="false" targetId="5583-38f0-d3ae-fac6" type="rule" />
        <infoLink id="a303-d46a-e9c2-65cb" name="Isolated State" hidden="false" targetId="5664-fa14-012c-9bd5" type="rule" />
        <infoLink id="a245-2ec1-b8a0-e7b4" name="Non-Lethal" hidden="false" targetId="d803-d330-3780-823e" type="rule" />
        <infoLink id="b04f-0cb7-761c-770f" name="State" hidden="false" targetId="a15e-7481-0da9-5e08" type="rule" />
      </infoLinks>
    </selectionEntry>
    <selectionEntry id="5386-fc52-2fb7-ae5f" name="Katyusha MRL" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="dbd8-2710-e3ca-2a3d" name="Katyusha MRL" hidden="false" targetId="a32f-a21a-f671-fb69" type="profile" />
        <infoLink id="ed67-3aad-092e-18a2" name="Anti-materiel" hidden="false" targetId="e196-fa3f-b53c-73ee" type="rule" />
        <infoLink id="e621-5d18-f588-fb2d" name="Impact Template" hidden="false" targetId="d515-904e-7f49-17b1" type="rule" />
        <infoLink id="6b2a-f8e7-ecbc-6416" name="Speculative Attack" hidden="false" targetId="16d3-83ad-2f43-af1e" type="rule" />
      </infoLinks>
    </selectionEntry>
    <selectionEntry id="773b-22a5-6a12-e8fe" name="Madtraps" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="9cf8-9821-4c66-954d" name="Madtraps" hidden="false" targetId="3410-5083-0df4-7a0c" type="profile" />
        <infoLink id="6297-8392-1c59-0165" name="Madtrap (deployed)" hidden="false" targetId="cf0c-55b7-b696-52f4" type="profile" />
        <infoLink id="5abb-b40b-eac5-62c2" name="Deployable" hidden="false" targetId="357f-b859-148b-1db0" type="rule" />
        <infoLink id="7af8-d371-0d1f-4992" name="Disposable (X)" hidden="false" targetId="8b2d-eeb9-e446-9928" type="rule" />
        <infoLink id="458a-0d96-589c-3bdc" name="Non-Lethal" hidden="false" targetId="d803-d330-3780-823e" type="rule" />
        <infoLink id="99fa-2418-2c77-42a7" name="Perimeter" hidden="false" targetId="1a45-8ac4-80d6-5b7e" type="rule" />
        <infoLink id="f6b6-9e7e-bad6-f21d" name="Perimeter Weapons" hidden="false" targetId="1a8b-af12-d471-a081" type="rule" />
      </infoLinks>
    </selectionEntry>
    <selectionEntry id="f6e1-f37e-094a-d4d1" name="Missile Launcher" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="1252-0e63-4db5-83e1" name="Missile Launcher (Blast Mode)" hidden="false" targetId="8c1c-89ed-ef59-f053" type="profile" />
        <infoLink id="e313-acd9-0aca-12cb" name="Missile Launcher (Hit Mode)" hidden="false" targetId="7660-fc80-d696-14b2" type="profile" />
        <infoLink id="672d-848b-fe9a-e161" name="Anti-materiel" hidden="false" targetId="e196-fa3f-b53c-73ee" type="rule" />
        <infoLink id="69fd-2184-366b-828e" name="Impact Template" hidden="false" targetId="d515-904e-7f49-17b1" type="rule" />
      </infoLinks>
    </selectionEntry>
    <selectionEntry id="169c-321c-055c-843e" name="Mk12" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="9cb5-bb43-d44c-f5e0" name="Mk12" hidden="false" targetId="4a3b-4a3c-4560-9edd" type="profile" />
        <infoLink id="bc09-2234-38c3-1c1c" name="Suppressive Fire (Trait)" hidden="false" targetId="5f14-9dd9-f80b-6451" type="rule" />
      </infoLinks>
    </selectionEntry>
    <selectionEntry id="0d21-ee73-0f92-79a3" name="Nanopulser" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="ee43-8a55-a645-bad9" name="Nanopulser" hidden="false" targetId="d399-2cf6-9a63-e184" type="profile" />
        <infoLink id="1f50-aefb-a8f1-0e1f" name="Direct Template" hidden="false" targetId="4577-cc2e-4bd4-74e1" type="rule" />
        <infoLink id="a7d0-b119-687b-5964" name="Intuitive Attack (Trait)" hidden="false" targetId="5583-38f0-d3ae-fac6" type="rule" />
      </infoLinks>
    </selectionEntry>
    <selectionEntry id="5cf4-93b7-ced4-297c" name="Ohotnik" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="d5df-27c3-77ae-1ee3" name="Ohotnik" hidden="false" targetId="b596-a375-f821-cb65" type="profile" />
        <infoLink id="1c27-a81a-d39f-4de5" name="Anti-materiel" hidden="false" targetId="e196-fa3f-b53c-73ee" type="rule" />
      </infoLinks>
    </selectionEntry>
    <selectionEntry id="f920-334c-1395-8aa6" name="Pitcher" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="54cc-bf6c-eecc-9f53" name="Pitcher" hidden="false" targetId="4a06-cdac-c6bb-1ba6" type="profile" />
        <infoLink id="53ac-c7aa-8535-4919" name="Disposable (X)" hidden="false" targetId="8b2d-eeb9-e446-9928" type="rule" />
        <infoLink id="9fe5-9eb1-4e6c-94b0" name="Indiscriminate" hidden="false" targetId="e908-d9c8-0558-d806" type="rule" />
        <infoLink id="57bc-c706-a73a-0e0c" name="Non-Lethal" hidden="false" targetId="d803-d330-3780-823e" type="rule" />
        <infoLink id="92be-48fe-1b47-5114" name="Pitcher" hidden="false" targetId="ec5c-9818-175e-0b8c" type="rule" />
        <infoLink id="bc08-cbb1-142c-8320" name="Speculative Attack" hidden="false" targetId="16d3-83ad-2f43-af1e" type="rule" />
        <infoLink id="ef60-92c5-b48e-3953" name="Targetless" hidden="false" targetId="956f-7124-cea8-5050" type="rule" />
      </infoLinks>
    </selectionEntry>
    <selectionEntry id="584b-7854-8884-652c" name="Portable Autocannon" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="c056-3464-87c7-7ae2" name="Portable Autocannon" hidden="false" targetId="158e-7b91-0d68-570a" type="profile" />
        <infoLink id="cbfa-6924-0169-5635" name="Anti-materiel" hidden="false" targetId="e196-fa3f-b53c-73ee" type="rule" />
      </infoLinks>
    </selectionEntry>
    <selectionEntry id="784e-4d31-8d2f-f162" name="Pulzar" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="78b2-063c-6ea6-acc9" name="Pulzar" hidden="false" targetId="f6f3-3e91-a79d-a0fb" type="profile" />
        <infoLink id="19fd-e006-f8cc-4887" name="Direct Template" hidden="false" targetId="4577-cc2e-4bd4-74e1" type="rule" />
        <infoLink id="d11a-1253-4391-722a" name="Intuitive Attack (Trait)" hidden="false" targetId="5583-38f0-d3ae-fac6" type="rule" />
      </infoLinks>
    </selectionEntry>
    <selectionEntry id="1284-5911-dc5f-cd0e" name="Sepsitor" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="9ddc-3cd8-f947-88d9" name="Sepsitor" hidden="false" targetId="3fe9-5ef3-a1a0-42f4" type="profile" />
        <infoLink id="5574-4c13-b293-2a31" name="Direct Template" hidden="false" targetId="4577-cc2e-4bd4-74e1" type="rule" />
        <infoLink id="d72b-2428-8e4b-f22d" name="Disposable (X)" hidden="false" targetId="8b2d-eeb9-e446-9928" type="rule" />
        <infoLink id="430f-73d5-d5f2-07b7" name="Intuitive Attack (Trait)" hidden="false" targetId="5583-38f0-d3ae-fac6" type="rule" />
        <infoLink id="0ebc-f4f0-9a12-788f" name="Sepsitor" hidden="false" targetId="6ade-2a78-32c1-9e2f" type="rule" />
        <infoLink id="0389-437d-12fe-b06e" name="Sepsitorized State" hidden="false" targetId="fb97-1ec4-e3a4-96a4" type="rule" />
        <infoLink id="d8dd-c99d-4783-a411" name="State" hidden="false" targetId="a15e-7481-0da9-5e08" type="rule" />
      </infoLinks>
    </selectionEntry>
    <selectionEntry id="7c51-645b-47b7-cead" name="Sepsitor Plus" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="010c-859a-afa8-d7dc" name="Sepsitor Plus" hidden="false" targetId="451a-46f9-4034-1db0" type="profile" />
        <infoLink id="c0da-068d-8340-a046" name="Direct Template" hidden="false" targetId="4577-cc2e-4bd4-74e1" type="rule" />
        <infoLink id="cb0c-991f-ab8b-99bf" name="Intuitive Attack (Trait)" hidden="false" targetId="5583-38f0-d3ae-fac6" type="rule" />
        <infoLink id="db44-c96f-5d14-123c" name="Sepsitor" hidden="false" targetId="6ade-2a78-32c1-9e2f" type="rule" />
        <infoLink id="1ef8-cb9f-bb53-9ee3" name="Sepsitorized State" hidden="false" targetId="fb97-1ec4-e3a4-96a4" type="rule" />
        <infoLink id="5f9e-8d95-6efa-e106" name="State" hidden="false" targetId="a15e-7481-0da9-5e08" type="rule" />
      </infoLinks>
    </selectionEntry>
    <selectionEntry id="4de2-4af7-998d-581c" name="Uragan MRL" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="290f-0d66-1bd2-3900" name="Uragan MRL (Blast Mode)" hidden="false" targetId="25f4-b80f-511f-2dd0" type="profile" />
        <infoLink id="e306-24b9-fe1f-70a5" name="Uragan MRL (Hit Mode)" hidden="false" targetId="e514-82cf-8c01-608b" type="profile" />
        <infoLink id="1c63-9ee9-77df-bcc5" name="Burst: Single Target" hidden="false" targetId="7145-42b2-218a-314e" type="rule" />
        <infoLink id="b4c7-f63d-c5c6-a8c4" name="Impact Template" hidden="false" targetId="d515-904e-7f49-17b1" type="rule" />
        <infoLink id="5545-94df-b0c3-36c6" name="Speculative Attack" hidden="false" targetId="16d3-83ad-2f43-af1e" type="rule" />
      </infoLinks>
    </selectionEntry>
    <selectionEntry id="c790-dfde-d51c-3d8d" name="Zapper" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="41b9-aab0-75f9-df01" name="Zapper" hidden="false" targetId="52b3-5727-3898-07eb" type="profile" />
        <infoLink id="86c6-b49c-7689-3adc" name="Direct Template" hidden="false" targetId="4577-cc2e-4bd4-74e1" type="rule" />
        <infoLink id="7ee7-af46-8555-c814" name="Intuitive Attack (Trait)" hidden="false" targetId="5583-38f0-d3ae-fac6" type="rule" />
        <infoLink id="3863-5837-cd83-ac3d" name="Non-Lethal" hidden="false" targetId="d803-d330-3780-823e" type="rule" />
      </infoLinks>
    </selectionEntry>
    <selectionEntry id="6faf-a6b7-9f9a-2ad6" name="Aerial" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="c17d-fec8-affc-ebb7" name="Aerial" hidden="false" targetId="06b9-2522-893d-bc4d" type="rule" />
      </infoLinks>
    </selectionEntry>
    <selectionEntry id="1b1e-533a-8afc-037d" name="Berserk" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="4a62-151a-c351-8b28" name="Berserk" hidden="false" targetId="6746-134a-bf71-c1ab" type="rule" />
      </infoLinks>
    </selectionEntry>
    <selectionEntry id="f8ba-0e47-8a19-10b3" name="Bioimmunity" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="21a0-fcf3-c23e-3f9c" name="Bioimmunity" hidden="false" targetId="4264-05d3-22b8-2254" type="rule" />
      </infoLinks>
    </selectionEntry>
    <selectionEntry id="f8e4-f74d-3df0-7f0d" name="Booty" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="8430-c8c0-1df7-7b08" name="Booty" hidden="false" targetId="17fa-cb8e-be11-e63a" type="rule" />
      </infoLinks>
    </selectionEntry>
    <selectionEntry id="c25d-812d-0992-0f4f" name="Camouflage" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="1d6b-650e-b00b-2478" name="Camouflage" hidden="false" targetId="2614-ace4-5b0b-e684" type="rule" />
      </infoLinks>
    </selectionEntry>
    <selectionEntry id="dc86-3519-bf6d-4cac" name="Chain of Command" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="b746-d905-c59c-93a4" name="Chain of Command" hidden="false" targetId="e55f-7015-cb7b-446a" type="rule" />
      </infoLinks>
    </selectionEntry>
    <selectionEntry id="6b4f-9401-430c-e5ab" name="Climbing Plus" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="164a-eadd-c3f1-b9eb" name="Climbing Plus" hidden="false" targetId="6c6c-f365-d24e-ce98" type="rule" />
      </infoLinks>
    </selectionEntry>
    <selectionEntry id="2fdb-df92-f36e-4b04" name="Combat Instinct" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="0ab1-e99f-e72c-52cf" name="Combat Instinct" hidden="false" targetId="5ddf-db35-c1f9-6384" type="rule" />
      </infoLinks>
    </selectionEntry>
    <selectionEntry id="c876-fc13-6556-4b27" name="Combat Jump" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="de9d-714a-ce6d-18ae" name="Combat Jump" hidden="false" targetId="1631-6f66-d6f4-21e0" type="rule" />
      </infoLinks>
    </selectionEntry>
    <selectionEntry id="28f2-bb77-20c8-c675" name="Commlink" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="6b70-fe41-37eb-0e8c" name="Commlink" hidden="false" targetId="cc56-c937-9613-6bad" type="rule" />
      </infoLinks>
    </selectionEntry>
    <selectionEntry id="4344-c4b0-3447-da37" name="Counterintelligence" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="d0ce-19e6-add4-bc1f" name="Counterintelligence" hidden="false" targetId="6355-ad79-d8af-7f8c" type="rule" />
      </infoLinks>
    </selectionEntry>
    <selectionEntry id="9f7d-d853-b13d-b8f6" name="Courage" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="f0ef-4e28-ecfa-908d" name="Courage" hidden="false" targetId="a4f3-2bbc-8877-c2f3" type="rule" />
      </infoLinks>
    </selectionEntry>
    <selectionEntry id="b421-e37a-077d-497e" name="Cyberplug" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="c96c-1863-ae62-0308" name="Cyberplug" hidden="false" targetId="7e2a-f2e8-0da5-80b9" type="rule" />
      </infoLinks>
    </selectionEntry>
    <selectionEntry id="1eeb-e065-9c96-f1fe" name="Decoy" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="37d5-8041-15ac-1061" name="Decoy" hidden="false" targetId="c7cb-ef30-95b3-68ba" type="rule" />
      </infoLinks>
    </selectionEntry>
    <selectionEntry id="ccec-d141-c33c-939d" name="Doctor" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="c396-59a0-977e-3f72" name="Doctor" hidden="false" targetId="c410-f367-2544-e324" type="rule" />
      </infoLinks>
    </selectionEntry>
    <selectionEntry id="fa22-1536-dab6-e256" name="Dogged" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="5037-7188-9d75-1a7f" name="Dogged" hidden="false" targetId="2434-8a72-9517-e2e4" type="rule" />
      </infoLinks>
    </selectionEntry>
    <selectionEntry id="ff72-78bc-cf43-9a08" name="Engineer" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="ea84-80f8-da34-45c7" name="Engineer" hidden="false" targetId="3632-0eb5-13ce-4301" type="rule" />
      </infoLinks>
    </selectionEntry>
    <selectionEntry id="11c1-6abe-b71f-fe6b" name="Explode" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="c991-d09e-748a-a95d" name="Explode" hidden="false" targetId="d923-8a32-a7c9-53ee" type="rule" />
      </infoLinks>
    </selectionEntry>
    <selectionEntry id="d308-0df6-10a2-c4db" name="Exrah" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="9058-4e61-1ef7-5015" name="Exrah" hidden="false" targetId="0420-ee04-627a-4f1b" type="rule" />
      </infoLinks>
    </selectionEntry>
    <selectionEntry id="2719-a631-4859-b45c" name="Forward Deployment" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="c04c-6f2f-9ef4-d109" name="Forward Deployment" hidden="false" targetId="25a7-2d08-54c1-3090" type="rule" />
      </infoLinks>
    </selectionEntry>
    <selectionEntry id="3780-c795-3375-8978" name="Forward Observer" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="6311-e306-82cf-eb4a" name="Forward Observer" hidden="false" targetId="85fa-6c18-5036-44ed" type="profile" />
        <infoLink id="bc57-87a7-6464-6e17" name="Forward Observer" hidden="false" targetId="b426-170c-1b9a-1b14" type="rule" />
        <infoLink id="787b-fda5-83bd-709b" name="BS Weapon (WIP)" hidden="false" targetId="64df-5f16-6f83-af68" type="rule" />
        <infoLink id="d52a-e593-2675-ea51" name="Non-Lethal" hidden="false" targetId="d803-d330-3780-823e" type="rule" />
        <infoLink id="8fc6-e5e9-547c-1b31" name="State" hidden="false" targetId="a15e-7481-0da9-5e08" type="rule" />
        <infoLink id="e075-bb0c-c4b9-f887" name="Targeted State" hidden="false" targetId="6715-ce0a-94c8-8d7c" type="rule" />
      </infoLinks>
    </selectionEntry>
    <selectionEntry id="219e-67a6-bbaa-a40a" name="Frenzy" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="27b4-4b34-1b05-9800" name="Frenzy" hidden="false" targetId="a6c5-0147-dc2b-b295" type="rule" />
      </infoLinks>
    </selectionEntry>
    <selectionEntry id="ef6e-a454-528f-d0d7" name="FT Master" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="21e3-8f66-2200-b4a5" name="FT Master" hidden="false" targetId="cb4f-a5bb-3883-2d14" type="rule" />
      </infoLinks>
    </selectionEntry>
    <selectionEntry id="8802-1552-3ffb-253b" name="G: Jumper" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="2475-c840-c841-0a5c" name="G: Jumper" hidden="false" targetId="945e-f91d-6cf2-5adc" type="rule" />
      </infoLinks>
    </selectionEntry>
    <selectionEntry id="e3e7-a2a1-e980-cb43" name="Guard" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="b2cb-878c-ab88-ad6b" name="Guard" hidden="false" targetId="a07e-4882-0d29-868a" type="rule" />
      </infoLinks>
    </selectionEntry>
    <selectionEntry id="5d70-b3b2-f268-7785" name="Hacker" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="a8ad-f515-0176-86d8" name="Hacker" hidden="false" targetId="80c0-d4ce-49d4-0fb2" type="rule" />
      </infoLinks>
    </selectionEntry>
    <selectionEntry id="18a2-68a2-00c3-185a" name="Hidden Deployment" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="c882-2417-b52d-b62c" name="Hidden Deployment" hidden="false" targetId="4ba4-ab4c-e9a0-ed47" type="rule" />
      </infoLinks>
    </selectionEntry>
    <selectionEntry id="d42d-adb8-8d37-46f9" name="Immunity" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="2754-dbdc-a737-2b02" name="Immunity" hidden="false" targetId="f7d0-643b-a5e3-6351" type="rule" />
      </infoLinks>
    </selectionEntry>
    <selectionEntry id="49f5-fe5f-f06c-6d04" name="Impersonation" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="9ce7-c922-b8eb-4f17" name="Impersonation" hidden="false" targetId="f5f4-d101-4734-1c33" type="rule" />
      </infoLinks>
    </selectionEntry>
    <selectionEntry id="c365-9b0a-6ab6-e3d2" name="Impetuous" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="d241-4f4b-aba6-f2e6" name="Impetuous" hidden="false" targetId="9747-fd1c-3a9c-c7d7" type="rule" />
      </infoLinks>
    </selectionEntry>
    <selectionEntry id="c8dd-c00b-2c08-c3d2" name="Infiltration" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="fd59-95b4-d000-bc67" name="Infiltration" hidden="false" targetId="af9a-d1fb-e6dc-c981" type="rule" />
      </infoLinks>
    </selectionEntry>
    <selectionEntry id="e94e-560c-cf36-cac6" name="Infinity Spec-Ops" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="7904-5e4e-372b-6afc" name="Infinity Spec-Ops" hidden="false" targetId="9354-698a-aa20-cfdd" type="rule" />
      </infoLinks>
    </selectionEntry>
    <selectionEntry id="a631-7de2-0f28-f967" name="Inspiring Leadership" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="cd93-41c3-02fb-d1d9" name="Inspiring Leadership" hidden="false" targetId="5f36-5a33-f4be-c2ef" type="rule" />
      </infoLinks>
    </selectionEntry>
    <selectionEntry id="c6c2-fe39-6056-ee55" name="Journalist" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="4290-c108-b74c-49d2" name="Journalist" hidden="false" targetId="4726-c1d8-4a83-c525" type="rule" />
      </infoLinks>
    </selectionEntry>
    <selectionEntry id="15a0-0ca4-2bc2-3249" name="Lieutenant" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="b417-90be-ec7a-a66e" name="Lieutenant" hidden="false" targetId="4712-ebc4-302f-f676" type="rule" />
      </infoLinks>
    </selectionEntry>
    <selectionEntry id="b9df-7a57-89a4-6123" name="Limited Cover" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="c5ae-3e2f-1f98-70b2" name="Limited Cover" hidden="false" targetId="0948-1d19-12b3-1607" type="rule" />
      </infoLinks>
    </selectionEntry>
    <selectionEntry id="5d28-6771-37e5-254e" name="Marksmanship" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="2e11-e7e0-bfec-056e" name="Marksmanship" hidden="false" targetId="bc0f-db4c-495e-8761" type="rule" />
      </infoLinks>
    </selectionEntry>
    <selectionEntry id="7947-3c09-7fd0-1bfc" name="Martial Arts L1" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="3041-c1eb-0a14-46db" name="Martial Arts L1" hidden="false" targetId="2bde-e446-8506-e238" type="profile" />
        <infoLink id="9df4-dbf0-458a-ec24" name="Martial Arts" hidden="false" targetId="49a5-4d8e-6a3a-a91d" type="rule" />
      </infoLinks>
    </selectionEntry>
    <selectionEntry id="39dd-bef3-d3e4-0519" name="Martial Arts L2" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="acc5-7aa0-0b51-13f6" name="Martial Arts L2" hidden="false" targetId="f873-26a4-fc00-8a35" type="profile" />
        <infoLink id="c765-5437-884b-e92b" name="Martial Arts" hidden="false" targetId="49a5-4d8e-6a3a-a91d" type="rule" />
      </infoLinks>
    </selectionEntry>
    <selectionEntry id="2597-2a21-7f57-c4be" name="Martial Arts L3" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="f76c-b6ba-adb8-9599" name="Martial Arts L3" hidden="false" targetId="c0f8-e2bb-90c5-3c51" type="profile" />
        <infoLink id="d938-66b9-91f1-be35" name="Martial Arts" hidden="false" targetId="49a5-4d8e-6a3a-a91d" type="rule" />
      </infoLinks>
    </selectionEntry>
    <selectionEntry id="d9c3-f96a-3018-d981" name="Martial Arts L4" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="c376-811b-5396-503d" name="Martial Arts L4" hidden="false" targetId="ef50-5598-2209-ec3e" type="profile" />
        <infoLink id="fa8e-406a-4477-0f7c" name="Martial Arts" hidden="false" targetId="49a5-4d8e-6a3a-a91d" type="rule" />
      </infoLinks>
    </selectionEntry>
    <selectionEntry id="8a3b-537a-f550-0c85" name="Martial Arts L5" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="9ced-70ef-2474-d6b5" name="Martial Arts L5" hidden="false" targetId="fcbe-111b-7947-ed85" type="profile" />
        <infoLink id="1a9d-cc8c-9e91-276e" name="Martial Arts" hidden="false" targetId="49a5-4d8e-6a3a-a91d" type="rule" />
      </infoLinks>
    </selectionEntry>
    <selectionEntry id="0811-de3f-1da0-65c3" name="MetaChemistry" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="c889-e1e5-aeef-2b71" name="MetaChemistry" hidden="false" targetId="a63b-c001-e7a8-4d2d" type="rule" />
      </infoLinks>
    </selectionEntry>
    <selectionEntry id="9c1e-6342-5183-a756" name="Mimetism" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="9933-6aa7-14b3-9a40" name="Mimetism" hidden="false" targetId="4c40-b00d-f36a-80f1" type="rule" />
      </infoLinks>
    </selectionEntry>
    <selectionEntry id="23cc-9013-0ff5-7e9b" name="Minelayer" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="3c1f-3792-9495-68c3" name="Minelayer" hidden="false" targetId="c53f-617c-b059-48b7" type="rule" />
      </infoLinks>
    </selectionEntry>
    <selectionEntry id="3771-6aae-a74e-0373" name="Mnemonica" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="cfd5-0056-c988-ad6f" name="Mnemonica" hidden="false" targetId="14b1-290e-755a-d73d" type="rule" />
      </infoLinks>
    </selectionEntry>
    <selectionEntry id="093e-93fa-a072-c15f" name="Morpho-Scan" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="6183-8104-d469-6ff3" name="Morpho-Scan" hidden="false" targetId="5483-54e0-f773-e4a7" type="rule" />
      </infoLinks>
    </selectionEntry>
    <selectionEntry id="b435-7953-c323-c35e" name="Natural Born Warrior" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="cbc9-0853-f26d-f096" name="Natural Born Warrior" hidden="false" targetId="7e64-ed23-499c-3563" type="rule" />
      </infoLinks>
    </selectionEntry>
    <selectionEntry id="5195-6ee9-9efd-005e" name="NCO" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="02f6-0b3d-b1ff-12fb" name="NCO" hidden="false" targetId="0ac3-5945-f078-e120" type="rule" />
      </infoLinks>
    </selectionEntry>
    <selectionEntry id="0495-6fe4-2b52-bfe1" name="Neurocinetics" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="5917-9b6e-9be9-8b73" name="Neurocinetics" hidden="false" targetId="6302-fddd-4106-ca95" type="rule" />
      </infoLinks>
    </selectionEntry>
    <selectionEntry id="e43b-f7ff-5826-f1b1" name="No Cover" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="a965-5291-30ed-6405" name="No Cover" hidden="false" targetId="df89-82a8-7cd0-b3f1" type="rule" />
      </infoLinks>
    </selectionEntry>
    <selectionEntry id="5521-0fdb-f1c5-70d6" name="No Wound Incapacitation" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="382a-e66c-4524-1f92" name="No Wound Incapacitation" hidden="false" targetId="69b5-bde7-1e79-acda" type="rule" />
      </infoLinks>
    </selectionEntry>
    <selectionEntry id="4ad0-a31e-9542-fea1" name="Non-Hackable" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="b001-c6c7-2641-d05a" name="Non-Hackable" hidden="false" targetId="ef0f-5abc-9f7a-ac25" type="rule" />
      </infoLinks>
    </selectionEntry>
    <selectionEntry id="e813-2e9b-d809-d097" name="Number 2" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="8615-8381-8b59-990c" name="Number 2" hidden="false" targetId="20d0-09ec-10f2-40ec" type="rule" />
      </infoLinks>
    </selectionEntry>
    <selectionEntry id="973e-ab50-a58f-7f8f" name="Parachutist" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="8205-2cf6-34e6-8ede" name="Parachutist" hidden="false" targetId="6052-c15c-e8c5-303c" type="rule" />
      </infoLinks>
    </selectionEntry>
    <selectionEntry id="debe-1c96-3f0d-cc36" name="Paramedic" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="6324-3079-e9a4-5299" name="Paramedic" hidden="false" targetId="1319-c1b0-c288-0d3e" type="rule" />
      </infoLinks>
    </selectionEntry>
    <selectionEntry id="275d-5871-d8d4-d400" name="Peripheral" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="2d2e-92c8-fb7e-1e4b" name="Peripheral" hidden="false" targetId="b11b-3bb2-9ac7-ff7b" type="rule" />
      </infoLinks>
    </selectionEntry>
    <selectionEntry id="8ab9-09c4-bd0d-6d99" name="Protheion" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="7d03-e781-09af-8ec8" name="Protheion" hidden="false" targetId="ad99-ea86-fb64-926f" type="rule" />
      </infoLinks>
    </selectionEntry>
    <selectionEntry id="eff3-5e33-28b7-8c87" name="Regeneration" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="7a28-5f33-c407-a7e2" name="Regeneration" hidden="false" targetId="01d9-2e78-bee8-6e35" type="rule" />
      </infoLinks>
    </selectionEntry>
    <selectionEntry id="9a68-ff91-d7ba-481c" name="Religious Troop" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="a5e3-b6ab-f1a8-d9e7" name="Religious Troop" hidden="false" targetId="f1fe-3164-b1df-63ff" type="rule" />
      </infoLinks>
    </selectionEntry>
    <selectionEntry id="fadf-5b5d-50e3-b0f0" name="Remdriver" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="8bf3-e09e-2d2d-4af9" name="Remdriver" hidden="false" targetId="a8d2-9929-5ff9-e7ce" type="rule" />
      </infoLinks>
    </selectionEntry>
    <selectionEntry id="dfd9-d133-d02f-7a51" name="Remote Presence" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="49e7-2741-9717-49f3" name="Remote Presence" hidden="false" targetId="25d8-4e0e-645f-2955" type="rule" />
      </infoLinks>
    </selectionEntry>
    <selectionEntry id="e3f7-9b2b-1da9-2a90" name="Request Reinforcements" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="926f-128a-c94d-5816" name="Request Reinforcements" hidden="false" targetId="5d98-e8e0-464c-6da4" type="rule" />
      </infoLinks>
    </selectionEntry>
    <selectionEntry id="6475-5f21-3280-acde" name="Sapper" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="fdca-9b44-ad85-0558" name="Sapper" hidden="false" targetId="6c56-e468-2b55-8d32" type="rule" />
      </infoLinks>
    </selectionEntry>
    <selectionEntry id="1524-581d-eb2b-266c" name="Sensor" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="abb6-fc3a-a90f-aac6" name="Sensor" hidden="false" targetId="1a74-4676-263a-ddc4" type="rule" />
      </infoLinks>
    </selectionEntry>
    <selectionEntry id="7ef1-49c2-04a3-e62d" name="Shasvastii" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="5905-e50a-bf7d-3e8e" name="Shasvastii" hidden="false" targetId="13a5-e03b-507b-e198" type="rule" />
      </infoLinks>
    </selectionEntry>
    <selectionEntry id="41b6-cfc2-47cb-c4e1" name="Sixth Sense" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="4a76-bf49-f913-6c1f" name="Sixth Sense" hidden="false" targetId="3cf6-7205-1a36-37d4" type="rule" />
      </infoLinks>
    </selectionEntry>
    <selectionEntry id="4d08-1695-4687-ad50" name="Specialist Operative" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="67bb-ec9c-9347-e142" name="Specialist Operative" hidden="false" targetId="4e85-2481-9162-7597" type="rule" />
      </infoLinks>
    </selectionEntry>
    <selectionEntry id="31b4-e443-ddbe-4c92" name="Stealth" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="88d5-f68b-5019-178d" name="Stealth" hidden="false" targetId="84da-ce41-fb04-cc69" type="rule" />
      </infoLinks>
    </selectionEntry>
    <selectionEntry id="6929-8d00-6f95-a62c" name="Strategic Deployment" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="6ecb-4e78-dd08-fb02" name="Strategic Deployment" hidden="false" targetId="c4f3-8b3a-6d8a-cfba" type="rule" />
      </infoLinks>
    </selectionEntry>
    <selectionEntry id="611b-6f80-67d7-26bf" name="Strategos" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="7c49-f78e-6808-cebf" name="Strategos" hidden="false" targetId="b1ea-3c65-6f8a-5999" type="rule" />
      </infoLinks>
    </selectionEntry>
    <selectionEntry id="93a1-9825-c82e-af4f" name="Super-Jump" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="4797-308f-bb99-91d0" name="Super-Jump" hidden="false" targetId="1c3b-0a2a-1d08-f947" type="rule" />
      </infoLinks>
    </selectionEntry>
    <selectionEntry id="7d35-0c33-3280-4f70" name="Surprise Attack" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="f7fd-5f5f-d452-d5fd" name="Surprise Attack" hidden="false" targetId="8d0e-3eb9-18e7-35eb" type="rule" />
      </infoLinks>
    </selectionEntry>
    <selectionEntry id="50e7-9420-ca02-1e91" name="Tactical Awareness" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="bf42-42b2-bdbb-7448" name="Tactical Awareness" hidden="false" targetId="d4e9-8b47-8f37-84cc" type="rule" />
      </infoLinks>
    </selectionEntry>
    <selectionEntry id="3163-7e78-a30b-3450" name="TAGCom" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="54a5-6efd-6380-26aa" name="TAGCom" hidden="false" targetId="23a7-3c5e-5fd4-4c5d" type="rule" />
      </infoLinks>
    </selectionEntry>
    <selectionEntry id="a884-33de-f879-1bb7" name="Tech-Recovery" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="ec38-11fd-ba93-3ddd" name="Tech-Recovery" hidden="false" targetId="abbb-b794-29e5-3aa2" type="rule" />
      </infoLinks>
    </selectionEntry>
    <selectionEntry id="08ca-ddd1-bd06-5758" name="Technorganic" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="7bda-fd3a-e513-995a" name="Technorganic" hidden="false" targetId="f3bd-6218-95fe-b386" type="rule" />
      </infoLinks>
    </selectionEntry>
    <selectionEntry id="0133-6456-959b-dff4" name="Terrain" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="db19-0d93-c40a-20d2" name="Terrain" hidden="false" targetId="1711-c9cd-43b7-6d20" type="rule" />
      </infoLinks>
    </selectionEntry>
    <selectionEntry id="99c8-1f26-ced2-6452" name="Total Reaction" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="49c8-adc8-4a94-f573" name="Total Reaction" hidden="false" targetId="4875-3ee6-96cd-d4de" type="rule" />
      </infoLinks>
    </selectionEntry>
    <selectionEntry id="df4b-b021-386d-f55a" name="Transmutation" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="f9bb-705f-1d6b-3b55" name="Transmutation" hidden="false" targetId="0032-2249-623a-c113" type="rule" />
      </infoLinks>
    </selectionEntry>
    <selectionEntry id="0a1b-b153-a045-39d2" name="Triangulated Fire" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="b648-f919-0fe3-a52a" name="Triangulated Fire" hidden="false" targetId="51d0-4833-4878-fa27" type="rule" />
      </infoLinks>
    </selectionEntry>
    <selectionEntry id="b1cc-5450-50cf-f5e9" name="Vulnerability" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="259a-8995-4454-1674" name="Vulnerability" hidden="false" targetId="fe6d-4f69-5803-f8d5" type="rule" />
      </infoLinks>
    </selectionEntry>
    <selectionEntry id="2f59-1189-0015-e3d4" name="Warhorse" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="c959-14c2-60aa-77d0" name="Warhorse" hidden="false" targetId="68e6-d06f-7887-e349" type="rule" />
      </infoLinks>
    </selectionEntry>
    <selectionEntry id="4821-3a01-e41b-fa41" name="360° Visor" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="4c95-c80e-9ae1-c4ec" name="360° Visor" hidden="false" targetId="9910-bb40-f0a8-a5a9" type="rule" />
      </infoLinks>
    </selectionEntry>
    <selectionEntry id="0f3b-7982-1cdd-eb49" name="AI Motorcycle" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="e922-6db3-8a47-396d" name="AI Motorcycle" hidden="false" targetId="68bf-a1a4-62b5-1fe6" type="rule" />
      </infoLinks>
    </selectionEntry>
    <selectionEntry id="31f9-7863-6c2b-b4a5" name="Albedo" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="1c0c-cf8b-91d5-6731" name="Albedo" hidden="false" targetId="f255-29d8-8b45-5254" type="rule" />
      </infoLinks>
    </selectionEntry>
    <selectionEntry id="8e3e-03fb-a402-ef97" name="Baggage" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="a347-753a-4a41-a58a" name="Baggage" hidden="false" targetId="d5ea-b330-f4e2-8d38" type="rule" />
      </infoLinks>
    </selectionEntry>
    <selectionEntry id="b3a9-8f36-2b1c-9127" name="Bangbomb" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="75c6-24fb-9a60-b984" name="Bangbomb" hidden="false" targetId="3ca4-45e6-bf05-0166" type="rule" />
      </infoLinks>
    </selectionEntry>
    <selectionEntry id="c512-c3a6-e8be-73cb" name="Biometric Visor" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="649b-e118-8bab-3b89" name="Biometric Visor" hidden="false" targetId="de40-eec4-a4fb-8bd8" type="rule" />
      </infoLinks>
    </selectionEntry>
    <selectionEntry id="f689-899a-4aec-6077" name="Cube" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="cef1-8e55-c51c-8e0e" name="Cube" hidden="false" targetId="261d-84b1-b4fc-721a" type="rule" />
      </infoLinks>
    </selectionEntry>
    <selectionEntry id="3ced-283a-9185-65d9" name="Dazer" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="70ce-a868-fefa-47a2" name="Dazer" hidden="false" targetId="4c65-aa78-3a98-1850" type="profile" />
        <infoLink id="dacb-9f69-0d22-4758" name="Dazer (deployed)" hidden="false" targetId="3042-f010-c641-65e8" type="profile" />
        <infoLink id="541d-a693-18d0-c187" name="Dazer" hidden="false" targetId="eb4c-dc80-2996-bd63" type="rule" />
        <infoLink id="42d0-f674-bee2-f57a" name="Deployable" hidden="false" targetId="357f-b859-148b-1db0" type="rule" />
        <infoLink id="1a22-7894-771c-9b42" name="Disposable (X)" hidden="false" targetId="8b2d-eeb9-e446-9928" type="rule" />
      </infoLinks>
    </selectionEntry>
    <selectionEntry id="8779-e1a8-25aa-2aeb" name="Deactivator" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="98ea-a424-2d4b-1caa" name="Deactivator" hidden="false" targetId="7d26-0456-30fe-18d1" type="profile" />
        <infoLink id="8956-5a0e-33a0-2e03" name="Deactivator" hidden="false" targetId="32d7-b534-9381-b2a5" type="rule" />
        <infoLink id="4b9b-a38a-cbbb-3f2b" name="BS Weapon (WIP)" hidden="false" targetId="64df-5f16-6f83-af68" type="rule" />
      </infoLinks>
    </selectionEntry>
    <selectionEntry id="0631-dff6-fc86-02b5" name="Deployable Cover" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="6aa1-eaea-1194-375f" name="Deployable Cover" hidden="false" targetId="3494-fbe8-dfbe-9583" type="rule" />
      </infoLinks>
    </selectionEntry>
    <selectionEntry id="4137-1759-bba6-4e65" name="Deployable Repeater" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="67a1-22d1-7723-a6c5" name="Deployable Repeater" hidden="false" targetId="8832-b234-3580-0c8d" type="profile" />
        <infoLink id="d66d-4aa2-d539-d967" name="Deployable Repeater (deployed)" hidden="false" targetId="54b6-aa58-c185-a654" type="profile" />
        <infoLink id="83f9-fcbf-bc7f-4cec" name="Deployable Repeater" hidden="false" targetId="86a4-dcb9-fa97-a970" type="rule" />
        <infoLink id="a424-a99f-56dd-01cf" name="Deployable" hidden="false" targetId="357f-b859-148b-1db0" type="rule" />
        <infoLink id="8dbf-e0b2-d569-eabc" name="Disposable (X)" hidden="false" targetId="8b2d-eeb9-e446-9928" type="rule" />
      </infoLinks>
    </selectionEntry>
    <selectionEntry id="c114-a45f-b384-0530" name="ECM" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="9d3e-eb2d-d2b3-06d3" name="ECM" hidden="false" targetId="ef04-02c6-e2f1-ae4e" type="rule" />
      </infoLinks>
    </selectionEntry>
    <selectionEntry id="1819-a889-bd32-ba6e" name="EVO Hacking Device" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="5f52-ded7-ec09-eec0" name="Assisted Fire" hidden="false" targetId="aea2-83d8-b482-9efa" type="profile" />
        <infoLink id="7a09-495c-d990-02ca" name="Enhanced Reaction" hidden="false" targetId="2b7c-db63-ea51-6b2b" type="profile" />
        <infoLink id="61a9-730a-a9f1-4a59" name="Fairy Dust" hidden="false" targetId="c498-9578-971a-0050" type="profile" />
        <infoLink id="3d3f-1659-b649-32ce" name="Controlled Jump" hidden="false" targetId="4520-cc48-1994-0bc7" type="profile" />
        <infoLink id="dcda-95c7-e245-1e3c" name="EVO Hacking Device" hidden="false" targetId="7c08-5614-a336-8bde" type="rule" />
        <infoLink id="8048-ea04-a2d4-804a" name="Assisted Fire" hidden="false" targetId="101c-f0d7-056c-8aa3" type="rule" />
        <infoLink id="6a2e-f67a-a59d-ccf7" name="Controlled Jump" hidden="false" targetId="6290-6631-cd10-866f" type="rule" />
        <infoLink id="92f2-9fc9-8b9e-2976" name="Enhanced Reaction" hidden="false" targetId="4dd2-9e24-a424-6532" type="rule" />
        <infoLink id="9b70-2e61-628a-59c0" name="Fairy Dust" hidden="false" targetId="1f3d-d9b2-f10b-a54d" type="rule" />
      </infoLinks>
    </selectionEntry>
    <selectionEntry id="9716-f662-f523-ced5" name="FastPanda" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="4a34-3e4c-0d6d-1971" name="FastPanda" hidden="false" targetId="5a5c-9f74-df17-b60f" type="profile" />
        <infoLink id="67d7-49da-84c4-a9ae" name="FastPanda (deployed)" hidden="false" targetId="5f96-4642-6d9f-ceee" type="profile" />
        <infoLink id="9220-0ff9-585b-4116" name="FastPanda" hidden="false" targetId="d106-8035-7411-471f" type="rule" />
        <infoLink id="d33f-a2a9-159f-13b6" name="Deployable" hidden="false" targetId="357f-b859-148b-1db0" type="rule" />
        <infoLink id="a5c5-f5b5-eba0-d091" name="Disposable (X)" hidden="false" targetId="8b2d-eeb9-e446-9928" type="rule" />
        <infoLink id="df8f-a8bb-7029-e1c1" name="Indiscriminate" hidden="false" targetId="e908-d9c8-0558-d806" type="rule" />
        <infoLink id="9204-13e3-4c68-fef6" name="Perimeter" hidden="false" targetId="1a45-8ac4-80d6-5b7e" type="rule" />
      </infoLinks>
    </selectionEntry>
    <selectionEntry id="8d7b-b2ee-5615-3946" name="Firewall" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="f2e9-3bde-e3b8-03e6" name="Firewall" hidden="false" targetId="c743-149e-0d8b-b92d" type="rule" />
      </infoLinks>
    </selectionEntry>
    <selectionEntry id="3ef7-7e93-ed2b-f445" name="GizmoKit" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="ea2d-0236-2c00-7153" name="GizmoKit" hidden="false" targetId="0889-b154-f24b-6139" type="profile" />
        <infoLink id="2808-e78e-2a50-ef36" name="GizmoKit" hidden="false" targetId="81a3-173c-745e-b37d" type="rule" />
        <infoLink id="47c0-d54e-35bf-2dc1" name="Non-Lethal" hidden="false" targetId="d803-d330-3780-823e" type="rule" />
      </infoLinks>
    </selectionEntry>
    <selectionEntry id="e34e-ecf6-f9da-6558" name="Hacking Device" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="4b56-9fa9-be81-8985" name="Carbonite" hidden="false" targetId="1af1-9ae7-a239-52be" type="profile" />
        <infoLink id="e45e-d0f4-f5c0-ea6c" name="Spotlight" hidden="false" targetId="85cf-2a1f-5be4-065f" type="profile" />
        <infoLink id="fdb2-c94f-5336-9d3b" name="Total Control" hidden="false" targetId="5961-c524-fd6f-534e" type="profile" />
        <infoLink id="c303-6f93-8fc9-0ccf" name="Oblivion" hidden="false" targetId="5d2c-02b6-53ce-1b2a" type="profile" />
        <infoLink id="b180-f0c2-525a-f654" name="Hacking Device" hidden="false" targetId="df33-f1d8-5267-b20b" type="rule" />
        <infoLink id="8d9f-2d8f-50a7-e9b2" name="Carbonite" hidden="false" targetId="fa48-c592-c940-ca9c" type="rule" />
        <infoLink id="5341-87a6-6a5a-2288" name="Oblivion" hidden="false" targetId="2b85-5bbb-76d8-13b0" type="rule" />
        <infoLink id="2350-03f9-3213-7c70" name="Spotlight" hidden="false" targetId="a6ef-dd80-be82-b35f" type="rule" />
        <infoLink id="bc27-221f-18ed-33aa" name="Total Control" hidden="false" targetId="ded0-2afe-5722-3925" type="rule" />
      </infoLinks>
    </selectionEntry>
    <selectionEntry id="b98c-a870-cf54-f7bb" name="Hacking Device Plus" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="18ea-7892-fb1b-93ea" name="Carbonite" hidden="false" targetId="1af1-9ae7-a239-52be" type="profile" />
        <infoLink id="a3d4-76d4-be86-b9d3" name="Spotlight" hidden="false" targetId="85cf-2a1f-5be4-065f" type="profile" />
        <infoLink id="f887-10f7-f2da-80bf" name="Total Control" hidden="false" targetId="5961-c524-fd6f-534e" type="profile" />
        <infoLink id="8bc5-5fc0-bc82-2548" name="Oblivion" hidden="false" targetId="5d2c-02b6-53ce-1b2a" type="profile" />
        <infoLink id="0667-507a-6127-71d8" name="White Noise" hidden="false" targetId="c2ef-2ade-438c-15bb" type="profile" />
        <infoLink id="a09f-e397-8607-3324" name="Cybermask" hidden="false" targetId="d2f0-5b18-3a6b-0e16" type="profile" />
        <infoLink id="d44b-aaee-fae6-57e4" name="Hacking Device Plus" hidden="false" targetId="2080-5f00-90e3-474b" type="rule" />
        <infoLink id="bf90-6621-6c95-34ee" name="Carbonite" hidden="false" targetId="fa48-c592-c940-ca9c" type="rule" />
        <infoLink id="772d-b1dc-028c-166b" name="Cybermask" hidden="false" targetId="0ad9-aa2e-b1d7-d83b" type="rule" />
        <infoLink id="7ec3-2621-29eb-e794" name="Oblivion" hidden="false" targetId="2b85-5bbb-76d8-13b0" type="rule" />
        <infoLink id="c763-62be-e897-49f5" name="Spotlight" hidden="false" targetId="a6ef-dd80-be82-b35f" type="rule" />
        <infoLink id="cffc-004b-fd59-724f" name="Total Control" hidden="false" targetId="ded0-2afe-5722-3925" type="rule" />
        <infoLink id="3fcd-b7de-034e-743c" name="White Noise" hidden="false" targetId="7b63-67e7-a3a6-43e0" type="rule" />
      </infoLinks>
    </selectionEntry>
    <selectionEntry id="8326-04fd-120c-df0c" name="HoloMask" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="321e-95ea-14c5-4f6b" name="HoloMask" hidden="false" targetId="780f-1e58-e0ec-c930" type="rule" />
      </infoLinks>
    </selectionEntry>
    <selectionEntry id="554c-1afd-7352-5f48" name="Holoprojector" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="3607-5ef5-f67a-c086" name="Holoprojector" hidden="false" targetId="3bf6-ced2-9117-bc03" type="rule" />
      </infoLinks>
    </selectionEntry>
    <selectionEntry id="d37d-207c-9b73-5d03" name="Killer Hacking Device" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="785e-bd95-15e3-dbb8" name="Trinity" hidden="false" targetId="a4a4-2acd-5cbe-4707" type="profile" />
        <infoLink id="125c-ca09-e292-05b4" name="Cybermask" hidden="false" targetId="d2f0-5b18-3a6b-0e16" type="profile" />
        <infoLink id="ea21-5c29-dedd-be67" name="Killer Hacking Device" hidden="false" targetId="3d95-6eaa-02c5-0811" type="rule" />
        <infoLink id="7005-a5b6-40b5-675a" name="Cybermask" hidden="false" targetId="0ad9-aa2e-b1d7-d83b" type="rule" />
        <infoLink id="248e-14d7-1cfd-a69d" name="Trinity" hidden="false" targetId="b0e2-e5a9-7000-7919" type="rule" />
      </infoLinks>
    </selectionEntry>
    <selectionEntry id="9e45-01cc-ad6e-8e1e" name="MediKit" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="422a-3056-6d4c-1669" name="MediKit" hidden="false" targetId="9039-435c-37e8-bace" type="profile" />
        <infoLink id="43e9-1576-78d3-24ec" name="MediKit" hidden="false" targetId="e4bc-5900-c716-cbb5" type="rule" />
        <infoLink id="805c-3e28-8f5a-c2e1" name="Non-Lethal" hidden="false" targetId="d803-d330-3780-823e" type="rule" />
      </infoLinks>
    </selectionEntry>
    <selectionEntry id="16bf-f568-9f11-4813" name="Motorcycle" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="783e-8170-1860-92d3" name="Motorcycle" hidden="false" targetId="2a28-ed87-412f-2111" type="rule" />
      </infoLinks>
    </selectionEntry>
    <selectionEntry id="720c-cc19-40a6-6865" name="Multispectral Visor" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="c193-f730-1f0b-1af6" name="Multispectral Visor" hidden="false" targetId="06a4-9e4a-a963-55d8" type="rule" />
      </infoLinks>
    </selectionEntry>
    <selectionEntry id="eba8-7792-030f-3a62" name="Nanoscreen" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="f3d0-dcfa-06d8-d0af" name="Nanoscreen" hidden="false" targetId="6244-7f4b-7965-5069" type="rule" />
      </infoLinks>
    </selectionEntry>
    <selectionEntry id="16c1-fb78-a30c-203c" name="Repeater" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="32b4-92be-2444-988c" name="Repeater" hidden="false" targetId="f01e-d699-2b1a-dc98" type="rule" />
      </infoLinks>
    </selectionEntry>
    <selectionEntry id="292b-0e0c-4632-4e08" name="SymbioMate" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="e4f4-42be-4e2a-27ae" name="SymbioMate" hidden="false" targetId="98fd-2c0c-65dd-ae8a" type="rule" />
      </infoLinks>
    </selectionEntry>
    <selectionEntry id="773d-12e7-b207-fb5e" name="TinBot" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="1e21-e4f8-05f0-2f7e" name="TinBot" hidden="false" targetId="54d4-b4f8-d461-3fb3" type="rule" />
      </infoLinks>
    </selectionEntry>
    <selectionEntry id="b33f-3fbe-23e1-a929" name="X-Visor" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="6781-f04d-a420-a8de" name="X-Visor" hidden="false" targetId="039a-ca2c-44ee-4967" type="rule" />
      </infoLinks>
    </selectionEntry>
    <selectionEntry id="2660-84d5-15c9-d474" name="Carbonite" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="9b04-0a53-d30e-ae56" name="Carbonite" hidden="false" targetId="fa48-c592-c940-ca9c" type="rule" />
        <infoLink id="e3d7-5a83-ff45-b871" name="Double Action (DA) Ammunition" hidden="false" targetId="21dc-e91b-9e96-4177" type="rule" />
        <infoLink id="8cfd-a3e9-443e-e6d1" name="Hacker" hidden="false" targetId="80c0-d4ce-49d4-0fb2" type="rule" />
        <infoLink id="5427-bd06-8ad6-5012" name="Immobilized-B State" hidden="false" targetId="7e54-dbab-8645-2573" type="rule" />
        <infoLink id="2df0-54cb-b185-dd95" name="Non-Lethal" hidden="false" targetId="d803-d330-3780-823e" type="rule" />
        <infoLink id="7fe8-56d5-b70a-a369" name="State" hidden="false" targetId="a15e-7481-0da9-5e08" type="rule" />
      </infoLinks>
    </selectionEntry>
    <selectionEntry id="e635-efe4-3cd4-a8e5" name="Cybermask" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="950f-1a18-c0b1-90b7" name="Cybermask" hidden="false" targetId="0ad9-aa2e-b1d7-d83b" type="rule" />
        <infoLink id="34a0-a678-2b5e-49b2" name="Impersonation State" hidden="false" targetId="172e-2d11-3b10-551a" type="rule" />
      </infoLinks>
    </selectionEntry>
    <selectionEntry id="e702-57ad-6707-fb7f" name="Oblivion" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="ca4a-f162-6bf7-3120" name="Oblivion" hidden="false" targetId="2b85-5bbb-76d8-13b0" type="rule" />
        <infoLink id="3e46-7968-d5a0-7e63" name="Armor Piercing (AP) Ammunition" hidden="false" targetId="2ac2-f449-3f7a-1b55" type="rule" />
        <infoLink id="664b-ed35-8e30-3132" name="Hacker" hidden="false" targetId="80c0-d4ce-49d4-0fb2" type="rule" />
        <infoLink id="ddc1-1c6e-c364-4627" name="Isolated State" hidden="false" targetId="5664-fa14-012c-9bd5" type="rule" />
        <infoLink id="309b-1fb5-001b-6ac5" name="Non-Lethal" hidden="false" targetId="d803-d330-3780-823e" type="rule" />
        <infoLink id="c0dd-cc53-0468-e68b" name="State" hidden="false" targetId="a15e-7481-0da9-5e08" type="rule" />
      </infoLinks>
    </selectionEntry>
    <selectionEntry id="d741-6147-027a-49dd" name="Spotlight" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="f8b9-403b-3268-138b" name="Spotlight" hidden="false" targetId="a6ef-dd80-be82-b35f" type="rule" />
        <infoLink id="ccd7-0760-53b6-0baf" name="Armor Piercing (AP) Ammunition" hidden="false" targetId="2ac2-f449-3f7a-1b55" type="rule" />
        <infoLink id="4647-da97-91e7-bccf" name="Non-Lethal" hidden="false" targetId="d803-d330-3780-823e" type="rule" />
        <infoLink id="a451-6c58-8ca0-3238" name="State" hidden="false" targetId="a15e-7481-0da9-5e08" type="rule" />
        <infoLink id="183f-f47c-6211-4661" name="Targeted State" hidden="false" targetId="6715-ce0a-94c8-8d7c" type="rule" />
      </infoLinks>
    </selectionEntry>
    <selectionEntry id="bf19-1569-1da2-9a65" name="Total Control" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="3a43-89dc-0be7-3ec0" name="Total Control" hidden="false" targetId="ded0-2afe-5722-3925" type="rule" />
        <infoLink id="0462-6f4b-4cd1-9399" name="Double Action (DA) Ammunition" hidden="false" targetId="21dc-e91b-9e96-4177" type="rule" />
        <infoLink id="964d-5fab-a186-5c88" name="Non-Lethal" hidden="false" targetId="d803-d330-3780-823e" type="rule" />
        <infoLink id="812e-dbd9-639c-953a" name="Normal State" hidden="false" targetId="44c9-94d6-584b-59f9" type="rule" />
        <infoLink id="cb0a-7321-dc4e-e894" name="Possessed State" hidden="false" targetId="9cb1-a85a-ead7-2b6f" type="rule" />
        <infoLink id="e97e-b1d9-3f53-4349" name="State" hidden="false" targetId="a15e-7481-0da9-5e08" type="rule" />
      </infoLinks>
    </selectionEntry>
    <selectionEntry id="613c-6324-1e46-e583" name="Trinity" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="0d72-20ba-988f-8466" name="Trinity" hidden="false" targetId="b0e2-e5a9-7000-7919" type="rule" />
        <infoLink id="04a5-dfe1-8c06-a0f5" name="Hacker" hidden="false" targetId="80c0-d4ce-49d4-0fb2" type="rule" />
      </infoLinks>
    </selectionEntry>
    <selectionEntry id="b9ff-aa26-4e9c-3c7a" name="White Noise" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="4d56-0318-1448-45ad" name="White Noise" hidden="false" targetId="7b63-67e7-a3a6-43e0" type="rule" />
        <infoLink id="5141-a449-4af7-e589" name="Negative Feedback (NFB)" hidden="false" targetId="781f-3be4-4eb7-f206" type="rule" />
        <infoLink id="c7ae-e415-a1bd-ce87" name="Reflective" hidden="false" targetId="a5c2-9e7d-b60b-fa4b" type="rule" />
      </infoLinks>
    </selectionEntry>
    <selectionEntry id="f489-d9bf-c6d6-dff6" name="Zero Pain" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="cb2b-0411-8ac3-7a5c" name="Zero Pain" hidden="false" targetId="c669-1340-97e1-f22c" type="rule" />
        <infoLink id="b0c4-7bdd-557a-0757" name="Comms Attack" hidden="false" targetId="4899-55d1-2017-b7ca" type="rule" />
        <infoLink id="8bea-f76c-cb61-f3d6" name="Non-Lethal" hidden="false" targetId="d803-d330-3780-823e" type="rule" />
      </infoLinks>
    </selectionEntry>
    <selectionEntry id="bb94-060c-f6d5-c76d" name="Assisted Fire" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="aa91-29c0-fec5-e0a1" name="Assisted Fire" hidden="false" targetId="101c-f0d7-056c-8aa3" type="rule" />
        <infoLink id="473b-5326-e4a2-e978" name="Marksmanship" hidden="false" targetId="bc0f-db4c-495e-8761" type="rule" />
      </infoLinks>
    </selectionEntry>
    <selectionEntry id="1f19-e9fa-982d-5c31" name="Controlled Jump" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="de90-cb05-6a06-9e87" name="Controlled Jump" hidden="false" targetId="6290-6631-cd10-866f" type="rule" />
        <infoLink id="e921-69d8-0b78-a564" name="Combat Jump" hidden="false" targetId="1631-6f66-d6f4-21e0" type="rule" />
      </infoLinks>
    </selectionEntry>
    <selectionEntry id="052c-42f7-8501-d7e7" name="Enhanced Reaction" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="79ca-506f-7e35-08f4" name="Enhanced Reaction" hidden="false" targetId="4dd2-9e24-a424-6532" type="rule" />
      </infoLinks>
    </selectionEntry>
    <selectionEntry id="fa95-8e04-6b30-22e2" name="Fairy Dust" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink id="4786-774b-5a43-d6ff" name="Fairy Dust" hidden="false" targetId="1f3d-d9b2-f10b-a54d" type="rule" />
        <infoLink id="26c1-8e3d-7c33-6153" name="Firewall" hidden="false" targetId="c743-149e-0d8b-b92d" type="rule" />
      </infoLinks>
    </selectionEntry>
  </sharedSelectionEntries>
  <sharedSelectionEntryGroups>
    <selectionEntryGroup id="6add-9355-0ced-15fa" name="Armory: Ranged Weapons" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true">
      <entryLinks>
        <entryLink id="603f-9fc1-8b0e-5468" name="Adhesive Launcher Rifle" hidden="false" collective="false" import="true" targetId="5e55-3e30-6808-f602" type="selectionEntry" />
        <entryLink id="0244-a79a-f8c9-2dc5" name="Akrylat-Kanone" hidden="false" collective="false" import="true" targetId="493b-6abc-9926-f246" type="selectionEntry" />
        <entryLink id="d461-fcd1-8f00-4d7c" name="AP Heavy Machine Gun" hidden="false" collective="false" import="true" targetId="6348-2f1f-5928-d925" type="selectionEntry" />
        <entryLink id="25e4-861c-76cd-56c8" name="AP Heavy Pistol" hidden="false" collective="false" import="true" targetId="4127-5032-e075-d33b" type="selectionEntry" />
        <entryLink id="fa27-aad6-cbc6-f069" name="AP Marksman Rifle" hidden="false" collective="false" import="true" targetId="b275-230e-afc1-86a2" type="selectionEntry" />
        <entryLink id="2dd7-0115-e973-ef45" name="AP Mines" hidden="false" collective="false" import="true" targetId="3d44-40e1-afca-1481" type="selectionEntry" />
        <entryLink id="59df-c55c-ba15-1d5c" name="AP Red Fury" hidden="false" collective="false" import="true" targetId="f8fe-9bd3-188f-c539" type="selectionEntry" />
        <entryLink id="6e71-3473-ceab-efb0" name="AP Rifle" hidden="false" collective="false" import="true" targetId="bf0c-7cf7-f854-b7d8" type="selectionEntry" />
        <entryLink id="9c4a-5467-fe71-b726" name="AP Sniper Rifle" hidden="false" collective="false" import="true" targetId="aeb4-2440-a17a-1790" type="selectionEntry" />
        <entryLink id="3b16-bef5-bb19-b283" name="AP Spitfire" hidden="false" collective="false" import="true" targetId="44b5-3745-814b-5897" type="selectionEntry" />
        <entryLink id="3b9e-7eb5-0a38-cf7b" name="AP Submachine Gun" hidden="false" collective="false" import="true" targetId="f032-156d-55cf-316c" type="selectionEntry" />
        <entryLink id="e33b-ccd7-69ae-6442" name="AP Thunderbolt" hidden="false" collective="false" import="true" targetId="0708-a1dc-5d9b-42ca" type="selectionEntry" />
        <entryLink id="bc84-2550-9a5e-eed4" name="Assault Pistol" hidden="false" collective="false" import="true" targetId="e3f6-b3fb-3592-6521" type="selectionEntry" />
        <entryLink id="a737-9abc-f0ed-0e1a" name="Blitzen" hidden="false" collective="false" import="true" targetId="25b9-3990-8cbc-2312" type="selectionEntry" />
        <entryLink id="d3cb-b1e9-4592-672d" name="Boarding Pistol" hidden="false" collective="false" import="true" targetId="a7f2-7908-a6ce-ffa5" type="selectionEntry" />
        <entryLink id="ff68-cdb4-6fc1-5bc8" name="Boarding Shotgun" hidden="false" collective="false" import="true" targetId="bbd5-afa0-cd6b-549b" type="selectionEntry" />
        <entryLink id="0ad4-ff33-120c-314c" name="Breaker Combi Rifle" hidden="false" collective="false" import="true" targetId="94e6-2f23-4e5a-034e" type="selectionEntry" />
        <entryLink id="1012-5351-b7cc-9277" name="Breaker Marksman Rifle" hidden="false" collective="false" import="true" targetId="90b9-44df-34d5-5c38" type="selectionEntry" />
        <entryLink id="7a52-314d-7731-7d22" name="Breaker Pistol" hidden="false" collective="false" import="true" targetId="d193-de03-016c-9a80" type="selectionEntry" />
        <entryLink id="f02e-abc3-cfa1-d7d7" name="Breaker Rifle" hidden="false" collective="false" import="true" targetId="8fa1-9dbc-4e92-9865" type="selectionEntry" />
        <entryLink id="6173-190b-20bb-7cc7" name="Chain Rifle" hidden="false" collective="false" import="true" targetId="1260-a54d-e65f-5758" type="selectionEntry" />
        <entryLink id="b6dc-ca78-a935-811a" name="Chain-Colt" hidden="false" collective="false" import="true" targetId="5997-c912-30b3-c995" type="selectionEntry" />
        <entryLink id="4091-0da2-fdb4-c83e" name="Chest Mines" hidden="false" collective="false" import="true" targetId="6e64-827b-2285-1c33" type="selectionEntry" />
        <entryLink id="8b2e-db51-c38b-3fbc" name="Combi Rifle" hidden="false" collective="false" import="true" targetId="1fa4-16e4-b81b-7a69" type="selectionEntry" />
        <entryLink id="7322-e18f-5a96-7e2d" name="Contender" hidden="false" collective="false" import="true" targetId="9a66-6441-76f3-0562" type="selectionEntry" />
        <entryLink id="0048-ac27-05b7-497c" name="CrazyKoalas" hidden="false" collective="false" import="true" targetId="8df0-3677-e46c-47c6" type="selectionEntry" />
        <entryLink id="5ab8-764e-ab0d-0b1c" name="Cybermines" hidden="false" collective="false" import="true" targetId="993e-89ba-6c32-815e" type="selectionEntry" />
        <entryLink id="f35d-f766-23b5-7115" name="D-Charges" hidden="false" collective="false" import="true" targetId="eec9-cde9-a813-d224" type="selectionEntry" />
        <entryLink id="c630-536d-099a-3bfe" name="Disco Baller" hidden="false" collective="false" import="true" targetId="c7fe-ff1f-d14b-01f0" type="selectionEntry" />
        <entryLink id="a30c-0c79-0a75-7cf9" name="Discover" hidden="false" collective="false" import="true" targetId="27f7-ea2b-e211-b08f" type="selectionEntry" />
        <entryLink id="dcee-a4fc-efd4-167d" name="Drop Bears" hidden="false" collective="false" import="true" targetId="bd1c-123f-7d16-7f0c" type="selectionEntry" />
        <entryLink id="a5f0-6dfb-998a-89c8" name="E/M Carbine" hidden="false" collective="false" import="true" targetId="b7eb-9f37-69b6-81e3" type="selectionEntry" />
        <entryLink id="d585-cbbe-cb95-c74b" name="E/M Grenade Launcher" hidden="false" collective="false" import="true" targetId="bd02-7eab-9857-7471" type="selectionEntry" />
        <entryLink id="409e-1e95-ddc0-d56b" name="E/M Grenades" hidden="false" collective="false" import="true" targetId="2594-52c6-4cb2-6749" type="selectionEntry" />
        <entryLink id="5f48-db42-6a66-7a96" name="E/M Mines" hidden="false" collective="false" import="true" targetId="4375-6232-733b-a5fd" type="selectionEntry" />
        <entryLink id="4ef8-ccc9-dca7-716d" name="E/Marat" hidden="false" collective="false" import="true" targetId="81ab-276c-7f7a-332d" type="selectionEntry" />
        <entryLink id="46b6-8525-0bfc-5ff7" name="E/Mitter" hidden="false" collective="false" import="true" targetId="fb3a-7c9c-ba6b-1c76" type="selectionEntry" />
        <entryLink id="b48c-9d3c-ce72-374b" name="Eclipse Grenade Launcher" hidden="false" collective="false" import="true" targetId="e319-ac06-127a-94a9" type="selectionEntry" />
        <entryLink id="3dde-d41a-9925-119b" name="Eclipse Grenades" hidden="false" collective="false" import="true" targetId="0f3b-40af-11e7-69d3" type="selectionEntry" />
        <entryLink id="f386-cab8-1a04-9dab" name="Feuerbach" hidden="false" collective="false" import="true" targetId="7212-069b-f7e7-20de" type="selectionEntry" />
        <entryLink id="63b8-0ebe-7582-d182" name="Flammenspeer" hidden="false" collective="false" import="true" targetId="a366-f46a-0ee9-9859" type="selectionEntry" />
        <entryLink id="1329-30e3-d520-0d91" name="Flash Pulse" hidden="false" collective="false" import="true" targetId="11af-17cc-ee4e-2348" type="selectionEntry" />
        <entryLink id="a189-d522-3eb7-8e47" name="Grenade Launcher" hidden="false" collective="false" import="true" targetId="cba0-180d-f396-02a8" type="selectionEntry" />
        <entryLink id="29d8-96ba-9a36-bb86" name="Grenades" hidden="false" collective="false" import="true" targetId="da1f-02d1-acbc-dc7d" type="selectionEntry" />
        <entryLink id="59db-612b-78be-b446" name="Heavy Flamethrower" hidden="false" collective="false" import="true" targetId="0be8-1bfa-88a5-cea2" type="selectionEntry" />
        <entryLink id="81b3-c5d5-d4dd-3c71" name="Heavy Machine Gun" hidden="false" collective="false" import="true" targetId="7664-8f67-e819-8e35" type="selectionEntry" />
        <entryLink id="a687-d217-6e2c-5f44" name="Heavy Pistol" hidden="false" collective="false" import="true" targetId="fbd5-fbc7-a86f-c55c" type="selectionEntry" />
        <entryLink id="a57f-fa39-51b9-7fc8" name="Heavy Riotstopper" hidden="false" collective="false" import="true" targetId="5c85-090e-167a-1c77" type="selectionEntry" />
        <entryLink id="92bd-33d2-8843-375e" name="Heavy Rocket Launcher" hidden="false" collective="false" import="true" targetId="e30f-b172-7d73-c3b8" type="selectionEntry" />
        <entryLink id="86ca-5f0a-95fd-003f" name="Heavy Shotgun" hidden="false" collective="false" import="true" targetId="a616-3ee3-782f-fdc0" type="selectionEntry" />
        <entryLink id="21ff-c6f9-8352-4a3b" name="Hyper-Rapid Magnetic Cannon" hidden="false" collective="false" import="true" targetId="e923-fb3c-6aa2-6948" type="selectionEntry" />
        <entryLink id="fe05-3a75-e562-340d" name="Jammer" hidden="false" collective="false" import="true" targetId="a8c5-3c32-aea1-749e" type="selectionEntry" />
        <entryLink id="e04a-b6d7-4e59-9c04" name="K1 Combi Rifle" hidden="false" collective="false" import="true" targetId="827d-98a5-8b40-a38d" type="selectionEntry" />
        <entryLink id="89e4-1a97-93fa-c100" name="K1 Marksman Rifle" hidden="false" collective="false" import="true" targetId="5bce-4bc3-60c4-90f2" type="selectionEntry" />
        <entryLink id="ecd9-3af0-5158-cd82" name="K1 Sniper Rifle" hidden="false" collective="false" import="true" targetId="4181-645d-2e2c-a352" type="selectionEntry" />
        <entryLink id="70a8-edf3-dc9a-9a92" name="Katyusha MRL" hidden="false" collective="false" import="true" targetId="5386-fc52-2fb7-ae5f" type="selectionEntry" />
        <entryLink id="1d2d-26c4-6a54-df95" name="Kobra Pistol" hidden="false" collective="false" import="true" targetId="aa08-e908-23e4-2e0e" type="selectionEntry" />
        <entryLink id="3691-5fb6-08c1-95f0" name="Light Flamethrower" hidden="false" collective="false" import="true" targetId="7f86-7262-3c16-af6d" type="selectionEntry" />
        <entryLink id="fdf1-a86f-a795-cb4f" name="Light Riotstopper" hidden="false" collective="false" import="true" targetId="c339-1425-033f-52e1" type="selectionEntry" />
        <entryLink id="8e90-2c15-86d5-840b" name="Light Rocket Launcher" hidden="false" collective="false" import="true" targetId="f77c-1c17-6547-94d2" type="selectionEntry" />
        <entryLink id="b5ee-b9c5-cc8e-286e" name="Light Shotgun" hidden="false" collective="false" import="true" targetId="9738-d743-fcfb-a866" type="selectionEntry" />
        <entryLink id="b9a5-c01f-f448-be79" name="Madtraps" hidden="false" collective="false" import="true" targetId="773b-22a5-6a12-e8fe" type="selectionEntry" />
        <entryLink id="fceb-cfca-9b59-6401" name="Marksman Rifle" hidden="false" collective="false" import="true" targetId="031d-f805-76d6-a13d" type="selectionEntry" />
        <entryLink id="557b-0456-c0a6-346f" name="Mine Dispenser" hidden="false" collective="false" import="true" targetId="c455-d446-a37e-7d49" type="selectionEntry" />
        <entryLink id="9f64-c942-06c5-b40e" name="Missile Launcher" hidden="false" collective="false" import="true" targetId="f6e1-f37e-094a-d4d1" type="selectionEntry" />
        <entryLink id="9188-e228-f1db-b398" name="Mk12" hidden="false" collective="false" import="true" targetId="169c-321c-055c-843e" type="selectionEntry" />
        <entryLink id="bf92-195f-07cf-fc66" name="Monofilament Mines" hidden="false" collective="false" import="true" targetId="31f5-a96a-993d-26e6" type="selectionEntry" />
        <entryLink id="22f6-1b9f-2957-1e12" name="MULTI Heavy Machine Gun" hidden="false" collective="false" import="true" targetId="e44b-8368-1ced-e2b4" type="selectionEntry" />
        <entryLink id="84d8-eeeb-5a47-f08c" name="MULTI Marksman Rifle" hidden="false" collective="false" import="true" targetId="cdf5-1285-ea29-ce27" type="selectionEntry" />
        <entryLink id="a432-aa66-6830-fd93" name="MULTI Pistol" hidden="false" collective="false" import="true" targetId="cf8a-c802-fb00-8a83" type="selectionEntry" />
        <entryLink id="3a15-072f-2adb-c3b9" name="MULTI Red Fury" hidden="false" collective="false" import="true" targetId="46b9-a2f8-a33b-9f15" type="selectionEntry" />
        <entryLink id="209d-be88-787a-59c8" name="MULTI Rifle" hidden="false" collective="false" import="true" targetId="0583-1150-9698-36af" type="selectionEntry" />
        <entryLink id="e400-2aca-81d5-794c" name="MULTI Sniper Rifle" hidden="false" collective="false" import="true" targetId="5bd3-0b29-0dba-811c" type="selectionEntry" />
        <entryLink id="3efc-ffd6-0be1-86ba" name="MULTI Spitfire" hidden="false" collective="false" import="true" targetId="181a-f405-524f-5f02" type="selectionEntry" />
        <entryLink id="123f-6ce7-0aae-ac90" name="Nanopulser" hidden="false" collective="false" import="true" targetId="0d21-ee73-0f92-79a3" type="selectionEntry" />
        <entryLink id="d8d9-2fb1-4ecf-b844" name="Ohotnik" hidden="false" collective="false" import="true" targetId="5cf4-93b7-ced4-297c" type="selectionEntry" />
        <entryLink id="736d-20ce-5363-4b66" name="Panzerfaust" hidden="false" collective="false" import="true" targetId="9cdb-f473-3781-63a4" type="selectionEntry" />
        <entryLink id="7773-fc69-50b4-33b8" name="PARA Mines" hidden="false" collective="false" import="true" targetId="886b-1454-375e-3669" type="selectionEntry" />
        <entryLink id="c4ff-c85c-8777-d06d" name="Pistol" hidden="false" collective="false" import="true" targetId="a7a4-9fb6-480c-ebb5" type="selectionEntry" />
        <entryLink id="57fa-9f43-bc7b-1596" name="Pitcher" hidden="false" collective="false" import="true" targetId="f920-334c-1395-8aa6" type="selectionEntry" />
        <entryLink id="977f-8738-168b-3a65" name="Plasma Carbine" hidden="false" collective="false" import="true" targetId="9d8b-eeef-3c70-b578" type="selectionEntry" />
        <entryLink id="76c5-322f-6a8e-71a5" name="Plasma Rifle" hidden="false" collective="false" import="true" targetId="af63-8249-ee65-75f8" type="selectionEntry" />
        <entryLink id="023d-3415-334e-ffe3" name="Plasma Sniper Rifle" hidden="false" collective="false" import="true" targetId="b337-bc0a-f12c-7763" type="selectionEntry" />
        <entryLink id="83bb-61c8-98d3-872c" name="Portable Autocannon" hidden="false" collective="false" import="true" targetId="584b-7854-8884-652c" type="selectionEntry" />
        <entryLink id="7a3d-8769-b578-3436" name="PT: Endgame" hidden="false" collective="false" import="true" targetId="eba8-92f9-c2e1-6666" type="selectionEntry" />
        <entryLink id="b8c0-857d-b52f-9065" name="PT: Eraser" hidden="false" collective="false" import="true" targetId="acba-8209-3963-23b0" type="selectionEntry" />
        <entryLink id="8af7-e1c0-af83-3b18" name="PT: Mirrorball" hidden="false" collective="false" import="true" targetId="ba13-f1c6-e551-29f6" type="selectionEntry" />
        <entryLink id="02db-0da0-c48c-8831" name="Pulzar" hidden="false" collective="false" import="true" targetId="784e-4d31-8d2f-f162" type="selectionEntry" />
        <entryLink id="9aba-b99e-9b06-2351" name="Red Fury" hidden="false" collective="false" import="true" targetId="623a-bbe0-6b85-69b8" type="selectionEntry" />
        <entryLink id="2334-f821-e688-a8f4" name="Rifle" hidden="false" collective="false" import="true" targetId="c7fb-ddae-c45a-8cd6" type="selectionEntry" />
        <entryLink id="403d-da70-19e4-028b" name="Sepsitor" hidden="false" collective="false" import="true" targetId="1284-5911-dc5f-cd0e" type="selectionEntry" />
        <entryLink id="2c49-f9cb-bb97-6eb4" name="Sepsitor Plus" hidden="false" collective="false" import="true" targetId="7c51-645b-47b7-cead" type="selectionEntry" />
        <entryLink id="1e09-fddf-56d7-637e" name="Shock Marksman Rifle" hidden="false" collective="false" import="true" targetId="6c30-03d6-06ea-ee34" type="selectionEntry" />
        <entryLink id="b956-7995-cfee-3eb7" name="Shock Mines" hidden="false" collective="false" import="true" targetId="47b9-0f54-b834-abfc" type="selectionEntry" />
        <entryLink id="2c9d-9352-f397-0b2b" name="Silenced Pistol" hidden="false" collective="false" import="true" targetId="fc17-6bca-43bf-b040" type="selectionEntry" />
        <entryLink id="6413-e77b-b1d3-46cf" name="Smoke Grenade Launcher" hidden="false" collective="false" import="true" targetId="b49d-d2f0-0b12-7ba7" type="selectionEntry" />
        <entryLink id="35bc-d2be-7cbd-21c0" name="Smoke Grenades" hidden="false" collective="false" import="true" targetId="fd5b-c8e7-4bb0-436c" type="selectionEntry" />
        <entryLink id="e767-4bcb-a7bd-57db" name="Sniper Rifle" hidden="false" collective="false" import="true" targetId="3c42-b7fe-c5e8-b764" type="selectionEntry" />
        <entryLink id="02c5-a9ed-5c3b-fbab" name="Spitfire" hidden="false" collective="false" import="true" targetId="0c7f-50a6-e7cf-af99" type="selectionEntry" />
        <entryLink id="4db3-c8ee-b352-21bc" name="Stun Pistol" hidden="false" collective="false" import="true" targetId="d47a-bf8f-0fdb-aee9" type="selectionEntry" />
        <entryLink id="3a7b-11d6-9445-a45c" name="Submachine Gun" hidden="false" collective="false" import="true" targetId="16c1-d774-3750-fb32" type="selectionEntry" />
        <entryLink id="ca9f-81b0-445e-4e89" name="T2 Boarding Shotgun" hidden="false" collective="false" import="true" targetId="61c3-4c55-fbff-8f39" type="selectionEntry" />
        <entryLink id="a236-65ff-ad5e-60f8" name="T2 Marksman Rifle" hidden="false" collective="false" import="true" targetId="a336-49e1-8acd-fedb" type="selectionEntry" />
        <entryLink id="cd42-fa36-415b-59dd" name="T2 Rifle" hidden="false" collective="false" import="true" targetId="024f-e658-c5e7-b6fa" type="selectionEntry" />
        <entryLink id="8c68-42d9-8b53-328a" name="T2 Sniper Rifle" hidden="false" collective="false" import="true" targetId="eb1a-8a2e-1308-6320" type="selectionEntry" />
        <entryLink id="488d-77f8-9215-a26c" name="Tactical Bow" hidden="false" collective="false" import="true" targetId="4ad9-6ecc-7339-e1f4" type="selectionEntry" />
        <entryLink id="d87d-8394-746d-2535" name="Thunderbolt" hidden="false" collective="false" import="true" targetId="db3b-185a-1ddd-2eba" type="selectionEntry" />
        <entryLink id="cf36-f18f-9fd1-bf6b" name="Trench-Hammer" hidden="false" collective="false" import="true" targetId="4b20-e819-edc1-19e6" type="selectionEntry" />
        <entryLink id="a175-de60-7e20-3728" name="Uragan MRL" hidden="false" collective="false" import="true" targetId="4de2-4af7-998d-581c" type="selectionEntry" />
        <entryLink id="1d27-da64-a856-7628" name="Viral Combi Rifle" hidden="false" collective="false" import="true" targetId="cb4e-387f-e479-1657" type="selectionEntry" />
        <entryLink id="7dd9-0405-0541-2502" name="Viral Marksman Rifle" hidden="false" collective="false" import="true" targetId="b888-74b4-d0c8-2586" type="selectionEntry" />
        <entryLink id="9ad8-437b-eccb-838d" name="Viral Mines" hidden="false" collective="false" import="true" targetId="268a-f3a0-63ff-d6c8" type="selectionEntry" />
        <entryLink id="7915-a393-54fd-ec38" name="Viral Pistol" hidden="false" collective="false" import="true" targetId="671b-4275-03cb-6a7c" type="selectionEntry" />
        <entryLink id="dbca-7510-3dc9-afe6" name="Viral Rifle" hidden="false" collective="false" import="true" targetId="c31d-f918-d0cf-ab57" type="selectionEntry" />
        <entryLink id="19ee-c943-26f0-eb33" name="Viral Sniper Rifle" hidden="false" collective="false" import="true" targetId="464b-e1db-8185-68eb" type="selectionEntry" />
        <entryLink id="9c31-22c8-a501-ec8d" name="Viral Tactical Bow" hidden="false" collective="false" import="true" targetId="c4bf-010d-9d26-034c" type="selectionEntry" />
        <entryLink id="fe24-38a0-1acb-e290" name="Vorpal CC Weapon" hidden="false" collective="false" import="true" targetId="2f24-4d63-7ffa-f5b0" type="selectionEntry" />
        <entryLink id="64f0-511d-caa6-1446" name="Vulkan Shotgun" hidden="false" collective="false" import="true" targetId="9bf8-b2a7-fd2e-7450" type="selectionEntry" />
        <entryLink id="1536-ea73-f4db-de7d" name="WildParrot" hidden="false" collective="false" import="true" targetId="933e-cce1-2c0f-0f67" type="selectionEntry" />
        <entryLink id="2126-2470-b851-d033" name="Zapper" hidden="false" collective="false" import="true" targetId="c790-dfde-d51c-3d8d" type="selectionEntry" />
      </entryLinks>
    </selectionEntryGroup>
    <selectionEntryGroup id="94a0-c84c-3875-9656" name="Armory: CC Weapons" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true">
      <entryLinks>
        <entryLink id="0b83-acbc-3012-bac9" name="AP CC Weapon" hidden="false" collective="false" import="true" targetId="6770-94b2-3be4-4ce1" type="selectionEntry" />
        <entryLink id="1d0f-e402-87bc-290e" name="AP+DA CC Weapon" hidden="false" collective="false" import="true" targetId="c107-f28c-c7bc-8870" type="selectionEntry" />
        <entryLink id="021f-f8b7-bd2e-c812" name="AP+EXP CC Weapon" hidden="false" collective="false" import="true" targetId="f6f6-2472-647c-d099" type="selectionEntry" />
        <entryLink id="7e65-0a4f-1b3e-0363" name="AP+Shock CC Weapon" hidden="false" collective="false" import="true" targetId="b456-959a-418b-f2be" type="selectionEntry" />
        <entryLink id="dc3a-c117-b2e3-1ebb" name="AP+T2 CC Weapon" hidden="false" collective="false" import="true" targetId="4a3a-2212-6f9d-1740" type="selectionEntry" />
        <entryLink id="c8b9-0570-3260-40fd" name="CC Weapon" hidden="false" collective="false" import="true" targetId="39ab-422e-8144-9c33" type="selectionEntry" />
        <entryLink id="56ba-e752-5aea-266c" name="D-Charges" hidden="false" collective="false" import="true" targetId="eec9-cde9-a813-d224" type="selectionEntry" />
        <entryLink id="32e8-93c6-8197-c645" name="DA CC Weapon" hidden="false" collective="false" import="true" targetId="5299-664a-2608-6e49" type="selectionEntry" />
        <entryLink id="c398-2245-1e1d-5d44" name="E/M CC Weapon" hidden="false" collective="false" import="true" targetId="1288-4a1e-7752-1d93" type="selectionEntry" />
        <entryLink id="a452-1dfe-f088-6218" name="EXP CC Weapon" hidden="false" collective="false" import="true" targetId="4ec1-e361-456b-773e" type="selectionEntry" />
        <entryLink id="4833-d7dc-bd1c-fbda" name="Kobra Pistol" hidden="false" collective="false" import="true" targetId="aa08-e908-23e4-2e0e" type="selectionEntry" />
        <entryLink id="77c5-c173-b4f3-fd71" name="Monofilament CC Weapon" hidden="false" collective="false" import="true" targetId="6c9b-31f2-d298-75cb" type="selectionEntry" />
        <entryLink id="1286-c1f0-0aef-87bc" name="PARA CC Weapon" hidden="false" collective="false" import="true" targetId="3312-1242-a6ad-2d56" type="selectionEntry" />
        <entryLink id="5f67-7ea9-8942-a5bd" name="Shock CC Weapon" hidden="false" collective="false" import="true" targetId="859e-9cd1-b333-2b4e" type="selectionEntry" />
        <entryLink id="4bc4-fbbd-82b6-fee2" name="T2 CC Weapon" hidden="false" collective="false" import="true" targetId="487f-e905-7e84-e295" type="selectionEntry" />
        <entryLink id="40c2-69d7-7591-4d6e" name="Trench-Hammer" hidden="false" collective="false" import="true" targetId="4b20-e819-edc1-19e6" type="selectionEntry" />
        <entryLink id="7071-e544-2db8-a93e" name="Viral CC Weapon" hidden="false" collective="false" import="true" targetId="a1a0-f232-e587-df79" type="selectionEntry" />
        <entryLink id="1985-3212-01ef-1060" name="Vorpal CC Weapon" hidden="false" collective="false" import="true" targetId="2f24-4d63-7ffa-f5b0" type="selectionEntry" />
      </entryLinks>
    </selectionEntryGroup>
    <selectionEntryGroup id="8ee6-5ad4-21f1-dd93" name="Armory: Special Skills" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true">
      <entryLinks>
        <entryLink id="0dbb-f21c-c6a4-12cb" name="Aerial" hidden="false" collective="false" import="true" targetId="6faf-a6b7-9f9a-2ad6" type="selectionEntry" />
        <entryLink id="3a32-f840-b36c-f0b5" name="Berserk" hidden="false" collective="false" import="true" targetId="1b1e-533a-8afc-037d" type="selectionEntry" />
        <entryLink id="50ba-a555-2261-1d77" name="Bioimmunity" hidden="false" collective="false" import="true" targetId="f8ba-0e47-8a19-10b3" type="selectionEntry" />
        <entryLink id="0c66-288b-4a26-61d5" name="Booty" hidden="false" collective="false" import="true" targetId="f8e4-f74d-3df0-7f0d" type="selectionEntry" />
        <entryLink id="5f38-b11b-aadb-f211" name="Camouflage" hidden="false" collective="false" import="true" targetId="c25d-812d-0992-0f4f" type="selectionEntry" />
        <entryLink id="ae45-9adc-7c9c-f71c" name="Chain of Command" hidden="false" collective="false" import="true" targetId="dc86-3519-bf6d-4cac" type="selectionEntry" />
        <entryLink id="6a1a-be6d-204d-1fc4" name="Climbing Plus" hidden="false" collective="false" import="true" targetId="6b4f-9401-430c-e5ab" type="selectionEntry" />
        <entryLink id="0897-9e40-6488-223f" name="Combat Instinct" hidden="false" collective="false" import="true" targetId="2fdb-df92-f36e-4b04" type="selectionEntry" />
        <entryLink id="50ae-1f5b-6dc3-28a6" name="Combat Jump" hidden="false" collective="false" import="true" targetId="c876-fc13-6556-4b27" type="selectionEntry" />
        <entryLink id="2155-9130-faa7-aabf" name="Commlink" hidden="false" collective="false" import="true" targetId="28f2-bb77-20c8-c675" type="selectionEntry" />
        <entryLink id="e970-e84b-94ae-c7ea" name="Counterintelligence" hidden="false" collective="false" import="true" targetId="4344-c4b0-3447-da37" type="selectionEntry" />
        <entryLink id="2d8c-2ed3-f065-24ef" name="Courage" hidden="false" collective="false" import="true" targetId="9f7d-d853-b13d-b8f6" type="selectionEntry" />
        <entryLink id="21cc-5aa5-5f43-5dbe" name="Cyberplug" hidden="false" collective="false" import="true" targetId="b421-e37a-077d-497e" type="selectionEntry" />
        <entryLink id="2811-dbc1-f220-3c21" name="Decoy" hidden="false" collective="false" import="true" targetId="1eeb-e065-9c96-f1fe" type="selectionEntry" />
        <entryLink id="65e3-fd1a-c6ad-35b5" name="Doctor" hidden="false" collective="false" import="true" targetId="ccec-d141-c33c-939d" type="selectionEntry" />
        <entryLink id="85c8-1ea4-b7bc-4d06" name="Dogged" hidden="false" collective="false" import="true" targetId="fa22-1536-dab6-e256" type="selectionEntry" />
        <entryLink id="e3fc-8edc-a42e-e26e" name="Engineer" hidden="false" collective="false" import="true" targetId="ff72-78bc-cf43-9a08" type="selectionEntry" />
        <entryLink id="ccde-9c69-2826-e635" name="Explode" hidden="false" collective="false" import="true" targetId="11c1-6abe-b71f-fe6b" type="selectionEntry" />
        <entryLink id="17bc-7fe4-d11e-3418" name="Exrah" hidden="false" collective="false" import="true" targetId="d308-0df6-10a2-c4db" type="selectionEntry" />
        <entryLink id="a31f-da19-cb68-6fe3" name="Forward Deployment" hidden="false" collective="false" import="true" targetId="2719-a631-4859-b45c" type="selectionEntry" />
        <entryLink id="e8e8-7de7-4c91-c1d0" name="Forward Observer" hidden="false" collective="false" import="true" targetId="3780-c795-3375-8978" type="selectionEntry" />
        <entryLink id="b173-f498-ac0f-cd2b" name="Frenzy" hidden="false" collective="false" import="true" targetId="219e-67a6-bbaa-a40a" type="selectionEntry" />
        <entryLink id="d106-6246-e7b2-08d2" name="FT Master" hidden="false" collective="false" import="true" targetId="ef6e-a454-528f-d0d7" type="selectionEntry" />
        <entryLink id="2799-67a6-e138-cbb6" name="G: Jumper" hidden="false" collective="false" import="true" targetId="8802-1552-3ffb-253b" type="selectionEntry" />
        <entryLink id="17b9-8b7f-8b16-5b4b" name="Guard" hidden="false" collective="false" import="true" targetId="e3e7-a2a1-e980-cb43" type="selectionEntry" />
        <entryLink id="fb06-1af7-9dbb-9a8b" name="Hacker" hidden="false" collective="false" import="true" targetId="5d70-b3b2-f268-7785" type="selectionEntry" />
        <entryLink id="250c-f229-0c0d-1dcc" name="Hidden Deployment" hidden="false" collective="false" import="true" targetId="18a2-68a2-00c3-185a" type="selectionEntry" />
        <entryLink id="1d78-39a8-4b27-3f65" name="Immunity" hidden="false" collective="false" import="true" targetId="d42d-adb8-8d37-46f9" type="selectionEntry" />
        <entryLink id="b694-d32b-c231-7a1c" name="Impersonation" hidden="false" collective="false" import="true" targetId="49f5-fe5f-f06c-6d04" type="selectionEntry" />
        <entryLink id="5bc8-b03b-9c30-ce41" name="Impetuous" hidden="false" collective="false" import="true" targetId="c365-9b0a-6ab6-e3d2" type="selectionEntry" />
        <entryLink id="703f-66bf-47a5-d6c5" name="Infiltration" hidden="false" collective="false" import="true" targetId="c8dd-c00b-2c08-c3d2" type="selectionEntry" />
        <entryLink id="cd2f-5362-0a10-bf3e" name="Infinity Spec-Ops" hidden="false" collective="false" import="true" targetId="e94e-560c-cf36-cac6" type="selectionEntry" />
        <entryLink id="fbbd-3e61-6bd8-de8f" name="Inspiring Leadership" hidden="false" collective="false" import="true" targetId="a631-7de2-0f28-f967" type="selectionEntry" />
        <entryLink id="bf00-e9a8-f278-8899" name="Journalist" hidden="false" collective="false" import="true" targetId="c6c2-fe39-6056-ee55" type="selectionEntry" />
        <entryLink id="3a9d-8225-c244-7ae9" name="Lieutenant" hidden="false" collective="false" import="true" targetId="15a0-0ca4-2bc2-3249" type="selectionEntry" />
        <entryLink id="28ff-16c8-44fc-2dce" name="Limited Cover" hidden="false" collective="false" import="true" targetId="b9df-7a57-89a4-6123" type="selectionEntry" />
        <entryLink id="3836-c305-b638-5ee7" name="Marksmanship" hidden="false" collective="false" import="true" targetId="5d28-6771-37e5-254e" type="selectionEntry" />
        <entryLink id="952d-ebcb-a4f5-1973" name="Martial Arts L1" hidden="false" collective="false" import="true" targetId="7947-3c09-7fd0-1bfc" type="selectionEntry" />
        <entryLink id="bd1c-21dd-9b81-8a04" name="Martial Arts L2" hidden="false" collective="false" import="true" targetId="39dd-bef3-d3e4-0519" type="selectionEntry" />
        <entryLink id="4002-45fe-6bb9-3305" name="Martial Arts L3" hidden="false" collective="false" import="true" targetId="2597-2a21-7f57-c4be" type="selectionEntry" />
        <entryLink id="bdfa-7f95-e1ef-4202" name="Martial Arts L4" hidden="false" collective="false" import="true" targetId="d9c3-f96a-3018-d981" type="selectionEntry" />
        <entryLink id="3eb6-deda-3e93-d879" name="Martial Arts L5" hidden="false" collective="false" import="true" targetId="8a3b-537a-f550-0c85" type="selectionEntry" />
        <entryLink id="48ee-78b4-10ce-a9d4" name="MetaChemistry" hidden="false" collective="false" import="true" targetId="0811-de3f-1da0-65c3" type="selectionEntry" />
        <entryLink id="0d1a-1bd6-a570-c312" name="Mimetism" hidden="false" collective="false" import="true" targetId="9c1e-6342-5183-a756" type="selectionEntry" />
        <entryLink id="f3a2-83b4-5cee-9946" name="Minelayer" hidden="false" collective="false" import="true" targetId="23cc-9013-0ff5-7e9b" type="selectionEntry" />
        <entryLink id="9e8f-5f7c-763f-3eef" name="Mnemonica" hidden="false" collective="false" import="true" targetId="3771-6aae-a74e-0373" type="selectionEntry" />
        <entryLink id="6026-4b09-3e9a-2112" name="Morpho-Scan" hidden="false" collective="false" import="true" targetId="093e-93fa-a072-c15f" type="selectionEntry" />
        <entryLink id="2223-e3b3-b879-8e08" name="Natural Born Warrior" hidden="false" collective="false" import="true" targetId="b435-7953-c323-c35e" type="selectionEntry" />
        <entryLink id="c08b-e807-94c1-3a71" name="NCO" hidden="false" collective="false" import="true" targetId="5195-6ee9-9efd-005e" type="selectionEntry" />
        <entryLink id="4b15-41ac-3640-0f66" name="Neurocinetics" hidden="false" collective="false" import="true" targetId="0495-6fe4-2b52-bfe1" type="selectionEntry" />
        <entryLink id="f36c-bcb0-ec3e-d0ab" name="No Cover" hidden="false" collective="false" import="true" targetId="e43b-f7ff-5826-f1b1" type="selectionEntry" />
        <entryLink id="d2da-b1c8-65e9-687c" name="No Wound Incapacitation" hidden="false" collective="false" import="true" targetId="5521-0fdb-f1c5-70d6" type="selectionEntry" />
        <entryLink id="2db2-73d3-969d-988b" name="Non-Hackable" hidden="false" collective="false" import="true" targetId="4ad0-a31e-9542-fea1" type="selectionEntry" />
        <entryLink id="1886-314f-c686-7f59" name="Number 2" hidden="false" collective="false" import="true" targetId="e813-2e9b-d809-d097" type="selectionEntry" />
        <entryLink id="b359-79e1-5f68-8986" name="Parachutist" hidden="false" collective="false" import="true" targetId="973e-ab50-a58f-7f8f" type="selectionEntry" />
        <entryLink id="cac9-cb2f-9ea9-085e" name="Paramedic" hidden="false" collective="false" import="true" targetId="debe-1c96-3f0d-cc36" type="selectionEntry" />
        <entryLink id="09b7-c39f-aaa8-0fa8" name="Peripheral" hidden="false" collective="false" import="true" targetId="275d-5871-d8d4-d400" type="selectionEntry" />
        <entryLink id="4d91-65af-d9fd-2c8a" name="Protheion" hidden="false" collective="false" import="true" targetId="8ab9-09c4-bd0d-6d99" type="selectionEntry" />
        <entryLink id="66de-d4e4-d908-c87d" name="Regeneration" hidden="false" collective="false" import="true" targetId="eff3-5e33-28b7-8c87" type="selectionEntry" />
        <entryLink id="0eba-7ef0-4bf0-5e27" name="Religious Troop" hidden="false" collective="false" import="true" targetId="9a68-ff91-d7ba-481c" type="selectionEntry" />
        <entryLink id="8a44-f283-941b-7b4a" name="Remdriver" hidden="false" collective="false" import="true" targetId="fadf-5b5d-50e3-b0f0" type="selectionEntry" />
        <entryLink id="c9ba-6acc-6d1d-91dc" name="Remote Presence" hidden="false" collective="false" import="true" targetId="dfd9-d133-d02f-7a51" type="selectionEntry" />
        <entryLink id="e37d-0f54-0bdc-4300" name="Request Reinforcements" hidden="false" collective="false" import="true" targetId="e3f7-9b2b-1da9-2a90" type="selectionEntry" />
        <entryLink id="9ec5-a91a-cc30-2e9a" name="Sapper" hidden="false" collective="false" import="true" targetId="6475-5f21-3280-acde" type="selectionEntry" />
        <entryLink id="0686-f854-3acd-1092" name="Sensor" hidden="false" collective="false" import="true" targetId="1524-581d-eb2b-266c" type="selectionEntry" />
        <entryLink id="52c7-d4c0-4846-71d8" name="Shasvastii" hidden="false" collective="false" import="true" targetId="7ef1-49c2-04a3-e62d" type="selectionEntry" />
        <entryLink id="f2f9-c53e-a673-fca3" name="Sixth Sense" hidden="false" collective="false" import="true" targetId="41b6-cfc2-47cb-c4e1" type="selectionEntry" />
        <entryLink id="14ad-f36c-5da6-9588" name="Specialist Operative" hidden="false" collective="false" import="true" targetId="4d08-1695-4687-ad50" type="selectionEntry" />
        <entryLink id="708d-b852-8a77-ce4c" name="Stealth" hidden="false" collective="false" import="true" targetId="31b4-e443-ddbe-4c92" type="selectionEntry" />
        <entryLink id="2239-868c-6698-1a7a" name="Strategic Deployment" hidden="false" collective="false" import="true" targetId="6929-8d00-6f95-a62c" type="selectionEntry" />
        <entryLink id="e7ef-beb1-0bc1-d1a3" name="Strategos" hidden="false" collective="false" import="true" targetId="611b-6f80-67d7-26bf" type="selectionEntry" />
        <entryLink id="bedc-2d59-b0e7-0f50" name="Super-Jump" hidden="false" collective="false" import="true" targetId="93a1-9825-c82e-af4f" type="selectionEntry" />
        <entryLink id="d046-5e54-f877-abc3" name="Surprise Attack" hidden="false" collective="false" import="true" targetId="7d35-0c33-3280-4f70" type="selectionEntry" />
        <entryLink id="348e-e30d-d9c9-38cf" name="Tactical Awareness" hidden="false" collective="false" import="true" targetId="50e7-9420-ca02-1e91" type="selectionEntry" />
        <entryLink id="6056-419c-73d3-f0e6" name="TAGCom" hidden="false" collective="false" import="true" targetId="3163-7e78-a30b-3450" type="selectionEntry" />
        <entryLink id="53df-7d2c-384f-88a9" name="Tech-Recovery" hidden="false" collective="false" import="true" targetId="a884-33de-f879-1bb7" type="selectionEntry" />
        <entryLink id="ddc2-5b32-80e6-6a0e" name="Technorganic" hidden="false" collective="false" import="true" targetId="08ca-ddd1-bd06-5758" type="selectionEntry" />
        <entryLink id="816b-c102-22e5-2cd6" name="Terrain" hidden="false" collective="false" import="true" targetId="0133-6456-959b-dff4" type="selectionEntry" />
        <entryLink id="0672-af3f-ccdf-d42a" name="Total Reaction" hidden="false" collective="false" import="true" targetId="99c8-1f26-ced2-6452" type="selectionEntry" />
        <entryLink id="70c0-a798-5319-e6c5" name="Transmutation" hidden="false" collective="false" import="true" targetId="df4b-b021-386d-f55a" type="selectionEntry" />
        <entryLink id="b60d-61e1-91ab-7e43" name="Triangulated Fire" hidden="false" collective="false" import="true" targetId="0a1b-b153-a045-39d2" type="selectionEntry" />
        <entryLink id="9d53-82ae-fb7b-d596" name="Vulnerability" hidden="false" collective="false" import="true" targetId="b1cc-5450-50cf-f5e9" type="selectionEntry" />
        <entryLink id="ddc4-c891-d02f-5958" name="Warhorse" hidden="false" collective="false" import="true" targetId="2f59-1189-0015-e3d4" type="selectionEntry" />
      </entryLinks>
    </selectionEntryGroup>
    <selectionEntryGroup id="d662-d751-e91e-226a" name="Armory: Equipment" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true">
      <entryLinks>
        <entryLink id="ba98-23a9-2306-9a44" name="360° Visor" hidden="false" collective="false" import="true" targetId="4821-3a01-e41b-fa41" type="selectionEntry" />
        <entryLink id="2938-6538-96c6-adbc" name="AI Motorcycle" hidden="false" collective="false" import="true" targetId="0f3b-7982-1cdd-eb49" type="selectionEntry" />
        <entryLink id="2a97-bbc1-f980-5591" name="Albedo" hidden="false" collective="false" import="true" targetId="31f9-7863-6c2b-b4a5" type="selectionEntry" />
        <entryLink id="6192-c93f-893f-430f" name="Baggage" hidden="false" collective="false" import="true" targetId="8e3e-03fb-a402-ef97" type="selectionEntry" />
        <entryLink id="1501-865e-a466-9ef0" name="Bangbomb" hidden="false" collective="false" import="true" targetId="b3a9-8f36-2b1c-9127" type="selectionEntry" />
        <entryLink id="3552-abcb-7213-a781" name="Biometric Visor" hidden="false" collective="false" import="true" targetId="c512-c3a6-e8be-73cb" type="selectionEntry" />
        <entryLink id="fa96-b363-1c0d-4f83" name="Cube" hidden="false" collective="false" import="true" targetId="f689-899a-4aec-6077" type="selectionEntry" />
        <entryLink id="8bfa-bcc7-249c-134e" name="Dazer" hidden="false" collective="false" import="true" targetId="3ced-283a-9185-65d9" type="selectionEntry" />
        <entryLink id="7f01-309a-99ef-62cb" name="Deactivator" hidden="false" collective="false" import="true" targetId="8779-e1a8-25aa-2aeb" type="selectionEntry" />
        <entryLink id="7e9b-c9fa-3878-8fb7" name="Deployable Cover" hidden="false" collective="false" import="true" targetId="0631-dff6-fc86-02b5" type="selectionEntry" />
        <entryLink id="12f9-d58c-8705-2cc6" name="Deployable Repeater" hidden="false" collective="false" import="true" targetId="4137-1759-bba6-4e65" type="selectionEntry" />
        <entryLink id="991a-ecb9-ccc7-1e2e" name="ECM" hidden="false" collective="false" import="true" targetId="c114-a45f-b384-0530" type="selectionEntry" />
        <entryLink id="c0f9-0b69-4727-e984" name="EVO Hacking Device" hidden="false" collective="false" import="true" targetId="1819-a889-bd32-ba6e" type="selectionEntry" />
        <entryLink id="ef07-87e2-42c8-a715" name="FastPanda" hidden="false" collective="false" import="true" targetId="9716-f662-f523-ced5" type="selectionEntry" />
        <entryLink id="3e24-9123-f0f4-16be" name="Firewall" hidden="false" collective="false" import="true" targetId="8d7b-b2ee-5615-3946" type="selectionEntry" />
        <entryLink id="96d9-b12f-c498-807d" name="GizmoKit" hidden="false" collective="false" import="true" targetId="3ef7-7e93-ed2b-f445" type="selectionEntry" />
        <entryLink id="04c2-b0d5-caeb-f219" name="Hacking Device" hidden="false" collective="false" import="true" targetId="e34e-ecf6-f9da-6558" type="selectionEntry" />
        <entryLink id="4dc6-76a6-f5d1-6feb" name="Hacking Device Plus" hidden="false" collective="false" import="true" targetId="b98c-a870-cf54-f7bb" type="selectionEntry" />
        <entryLink id="71a2-09f1-0f7d-31a2" name="HoloMask" hidden="false" collective="false" import="true" targetId="8326-04fd-120c-df0c" type="selectionEntry" />
        <entryLink id="37a0-5458-9ca3-3599" name="Holoprojector" hidden="false" collective="false" import="true" targetId="554c-1afd-7352-5f48" type="selectionEntry" />
        <entryLink id="54f0-4c4a-52be-123b" name="Killer Hacking Device" hidden="false" collective="false" import="true" targetId="d37d-207c-9b73-5d03" type="selectionEntry" />
        <entryLink id="b1be-de0b-960f-1a40" name="MediKit" hidden="false" collective="false" import="true" targetId="9e45-01cc-ad6e-8e1e" type="selectionEntry" />
        <entryLink id="0b68-3d58-813c-229a" name="Motorcycle" hidden="false" collective="false" import="true" targetId="16bf-f568-9f11-4813" type="selectionEntry" />
        <entryLink id="235a-91af-7599-8346" name="Multispectral Visor" hidden="false" collective="false" import="true" targetId="720c-cc19-40a6-6865" type="selectionEntry" />
        <entryLink id="ba38-ada5-e8f3-a936" name="Nanoscreen" hidden="false" collective="false" import="true" targetId="eba8-7792-030f-3a62" type="selectionEntry" />
        <entryLink id="25c2-c7c0-98e4-1721" name="Repeater" hidden="false" collective="false" import="true" targetId="16c1-fb78-a30c-203c" type="selectionEntry" />
        <entryLink id="05bb-bd15-732c-8865" name="SymbioMate" hidden="false" collective="false" import="true" targetId="292b-0e0c-4632-4e08" type="selectionEntry" />
        <entryLink id="1ef2-eb90-e668-9684" name="TinBot" hidden="false" collective="false" import="true" targetId="773d-12e7-b207-fb5e" type="selectionEntry" />
        <entryLink id="7119-2099-316d-9ed2" name="X-Visor" hidden="false" collective="false" import="true" targetId="b33f-3fbe-23e1-a929" type="selectionEntry" />
      </entryLinks>
    </selectionEntryGroup>
    <selectionEntryGroup id="56cc-d247-a3e0-ef95" name="Armory: Hacking Programs" publicationId="c98c-3c50-3d4f-04b5" hidden="false" collective="false" import="true">
      <entryLinks>
        <entryLink id="dd87-d0be-e9ab-0b9b" name="Assisted Fire" hidden="false" collective="false" import="true" targetId="bb94-060c-f6d5-c76d" type="selectionEntry" />
        <entryLink id="4d54-ef0b-304f-46f5" name="Carbonite" hidden="false" collective="false" import="true" targetId="2660-84d5-15c9-d474" type="selectionEntry" />
        <entryLink id="0389-7b91-a155-bef0" name="Controlled Jump" hidden="false" collective="false" import="true" targetId="1f19-e9fa-982d-5c31" type="selectionEntry" />
        <entryLink id="993a-1732-37f4-521d" name="Cybermask" hidden="false" collective="false" import="true" targetId="e635-efe4-3cd4-a8e5" type="selectionEntry" />
        <entryLink id="28e7-eb69-de29-6a70" name="Enhanced Reaction" hidden="false" collective="false" import="true" targetId="052c-42f7-8501-d7e7" type="selectionEntry" />
        <entryLink id="c3d7-335c-9cdc-8450" name="Fairy Dust" hidden="false" collective="false" import="true" targetId="fa95-8e04-6b30-22e2" type="selectionEntry" />
        <entryLink id="cdfc-f79e-0125-0cca" name="Oblivion" hidden="false" collective="false" import="true" targetId="e702-57ad-6707-fb7f" type="selectionEntry" />
        <entryLink id="5947-f4e9-f224-7fd3" name="Spotlight" hidden="false" collective="false" import="true" targetId="d741-6147-027a-49dd" type="selectionEntry" />
        <entryLink id="aa39-7fd8-a7e5-f5e4" name="Total Control" hidden="false" collective="false" import="true" targetId="bf19-1569-1da2-9a65" type="selectionEntry" />
        <entryLink id="a087-03ae-12a5-5f75" name="Trinity" hidden="false" collective="false" import="true" targetId="613c-6324-1e46-e583" type="selectionEntry" />
        <entryLink id="e3ed-d664-0e3b-1b5e" name="White Noise" hidden="false" collective="false" import="true" targetId="b9ff-aa26-4e9c-3c7a" type="selectionEntry" />
        <entryLink id="0b90-54a5-fc4e-54ba" name="Zero Pain" hidden="false" collective="false" import="true" targetId="f489-d9bf-c6d6-dff6" type="selectionEntry" />
      </entryLinks>
    </selectionEntryGroup>
  </sharedSelectionEntryGroups>
  <sharedRules>
    <rule id="bd30-bb1d-0678-e057" name="Alert" publicationId="c98c-3c50-3d4f-04b5" hidden="false">
      <description>Common Skill · Automatic Skill · Optional, No Roll
If the trooper or an ally in its ZoC is attacked and it hasn't acted that Order, it may turn to face any direction at the end of the Order. No roll, no AROs.
Full rule: https://infinitythewiki.com/Alert</description>
    </rule>
    <rule id="c2d7-2fa0-42fa-f2f4" name="BS Attack" publicationId="c98c-3c50-3d4f-04b5" hidden="false">
      <description>Common Skill · Short Skill / ARO · Attack
Shoot with a ranged weapon, skill or equipment using BS (or whichever attribute the weapon names). LoF is needed unless the weapon says otherwise, and Burst can be split between targets.
Full rule: https://infinitythewiki.com/BS_Attack</description>
    </rule>
    <rule id="d21d-619c-5175-eb2b" name="Cautious Movement" publicationId="c98c-3c50-3d4f-04b5" hidden="false">
      <description>Common Skill · Long Skill · Movement, No Roll
Move up to your first MOV value without drawing AROs, provided you start and finish outside every enemy's LoF and ZoC, and outside enemy hacking areas if you're Hackable.
Full rule: https://infinitythewiki.com/Cautious_Movement</description>
    </rule>
    <rule id="7923-a6c9-2fd3-7746" name="CC Attack" publicationId="c98c-3c50-3d4f-04b5" hidden="false">
      <description>Common Skill · Short Skill / ARO · Attack
Fight an enemy in base contact with a CC-trait weapon, rolling CC. Each success forces a saving roll.
Full rule: https://infinitythewiki.com/CC_Attack</description>
    </rule>
    <rule id="8cc0-ebf8-afac-d704" name="Climb" publicationId="c98c-3c50-3d4f-04b5" hidden="false">
      <description>Common Skill · Long Skill · Movement, No LoF, No Roll
Move up or across a vertical surface, up to your first MOV value plus 2 inches. No roll.
Full rule: https://infinitythewiki.com/Climb</description>
    </rule>
    <rule id="0ee9-4f17-1e21-b8e5" name="Discover" publicationId="c98c-3c50-3d4f-04b5" hidden="false">
      <description>Common Skill · Basic Short Skill / ARO
Reveal an enemy marker by passing a WIP roll modified as if you were shooting it. A trooper that fails can't try the same marker again that turn.
Full rule: https://infinitythewiki.com/Discover</description>
    </rule>
    <rule id="7304-3420-e690-7b7d" name="Dodge" publicationId="c98c-3c50-3d4f-04b5" hidden="false">
      <description>Common Skill · Short Skill / ARO · Movement
Roll PH, face to face against the attacker, to avoid every attack in the Order (not comms attacks). Success lets you move up to 2 inches.
Full rule: https://infinitythewiki.com/Dodge</description>
    </rule>
    <rule id="34e3-48f4-0ec8-b6f0" name="Idle" publicationId="c98c-3c50-3d4f-04b5" hidden="false">
      <description>Common Skill · Basic Short Skill · No Roll
Do nothing. It still counts as activating, so it can draw AROs, and it's what happens when a declared skill turns out to be illegal.
Full rule: https://infinitythewiki.com/Idle</description>
    </rule>
    <rule id="0a8c-fb46-4327-bc5d" name="Intuitive Attack" publicationId="c98c-3c50-3d4f-04b5" hidden="false">
      <description>Common Skill · Long Skill · BS Attack
With an Intuitive Attack weapon, pass an unmodified WIP roll to take a single shot at a target you can't see because of zero visibility or a marker state.
Full rule: https://infinitythewiki.com/Intuitive_Attack</description>
    </rule>
    <rule id="468c-3020-c548-2f36" name="Jump" publicationId="c98c-3c50-3d4f-04b5" hidden="false">
      <description>Common Skill · Long Skill · Movement, No LoF, No Roll
Leap in any direction, including an arc, up to your first MOV value plus 2 inches, landing somewhere at least as big as your base. No roll.
Full rule: https://infinitythewiki.com/Jump</description>
    </rule>
    <rule id="3e5b-af0a-98f1-5745" name="Look Out" publicationId="c98c-3c50-3d4f-04b5" hidden="false">
      <description>Common Skill · ARO · No Roll
An ARO for a trooper that sees an enemy act: every other trooper on your side may turn to face, by passing a Dodge roll at PH-3.
Full rule: https://infinitythewiki.com/Look_Out</description>
    </rule>
    <rule id="b448-9a77-e462-1aa3" name="Move" publicationId="c98c-3c50-3d4f-04b5" hidden="false">
      <description>Common Skill · Basic Short Skill · Movement, No LoF, No Roll
Move up to your first MOV value. Declaring Move again in the same Order adds the second value.
Full rule: https://infinitythewiki.com/Move</description>
    </rule>
    <rule id="0e9d-d55b-9890-5a76" name="Place Deployable" publicationId="c98c-3c50-3d4f-04b5" hidden="false">
      <description>Common Skill · Short Skill / ARO · Attack
Put a deployable weapon, piece of equipment or ancillary peripheral on the table in base contact, or anywhere along your path in the Active Turn. No roll.
Full rule: https://infinitythewiki.com/Place_Deployable</description>
    </rule>
    <rule id="f7d1-0f9b-b50b-14ca" name="Reload" publicationId="c98c-3c50-3d4f-04b5" hidden="false">
      <description>Common Skill · Short Skill / ARO · Attack
While in the ZoC of an ally carrying Baggage, clear your Unloaded state or restore every spent use of your Disposable kit. One trooper per Order.
Full rule: https://infinitythewiki.com/Reload</description>
    </rule>
    <rule id="39ac-12a5-10c9-f2d0" name="Request Speedball" publicationId="c98c-3c50-3d4f-04b5" hidden="false">
      <description>Common Skill · Automatic Skill · Optional
Spend two Speedball tokens to drop two supply pods onto the table using the Combat Jump procedure (PH 15). Each pod carries a Speedball Chart item: one chosen, one rolled.
Full rule: https://infinitythewiki.com/Request_Speedball</description>
    </rule>
    <rule id="6e1a-e3d0-d9b1-bb33" name="Reset" publicationId="c98c-3c50-3d4f-04b5" hidden="false">
      <description>Common Skill · Short Skill / ARO · No LoF
Roll WIP, face to face against the attacker's WIP, to shrug off every comms attack and Guided attack in the Order.
Full rule: https://infinitythewiki.com/Reset</description>
    </rule>
    <rule id="16d3-83ad-2f43-af1e" name="Speculative Attack" publicationId="c98c-3c50-3d4f-04b5" hidden="false">
      <description>Common Skill · Long Skill · BS Attack
With a Speculative Attack weapon, lob a single shot at a target out of LoF along a possible trajectory. A circular template can land off-centre as long as it still covers the target.
Full rule: https://infinitythewiki.com/Speculative_Attack</description>
    </rule>
    <rule id="c533-59cf-f1ac-89c2" name="Suppressive Fire" publicationId="c98c-3c50-3d4f-04b5" hidden="false">
      <description>Common Skill · Long Skill · Attack
Pick a weapon with the Suppressive Fire trait and enter the Suppressive Fire state with it.
Full rule: https://infinitythewiki.com/Suppressive_Fire</description>
    </rule>
    <rule id="06b9-2522-893d-bc4d" name="Aerial" publicationId="c98c-3c50-3d4f-04b5" hidden="false">
      <description>Special Skill · Automatic Skill · Obligatory
The trooper is airborne. It can't go Prone or be Engaged, never counts as touching models, objectives or scenery, can't use Cautious Movement, and doesn't set off Boost weapons.
Full rule: https://infinitythewiki.com/Aerial</description>
    </rule>
    <rule id="6746-134a-bf71-c1ab" name="Berserk" publicationId="c98c-3c50-3d4f-04b5" hidden="false">
      <description>Special Skill · Long Skill · Attack, CC Attack, CC Special Skill, Movement, Optional
One Long Skill: charge up to both MOV values combined into base contact with a target in LoF, then attack in close combat, adding any bonus in brackets. If the charge can't reach, the trooper Idles.
Full rule: https://infinitythewiki.com/Berserk</description>
    </rule>
    <rule id="4264-05d3-22b8-2254" name="Bioimmunity" publicationId="c98c-3c50-3d4f-04b5" hidden="false">
      <description>Special Skill · Optional
When making a saving roll against ARM or BTS, the trooper may use whichever of the two values is better. The attack's other effects still apply. Not against Comms Attacks.
Full rule: https://infinitythewiki.com/Bioimmunity</description>
    </rule>
    <rule id="17fa-cb8e-be11-e63a" name="Booty" publicationId="c98c-3c50-3d4f-04b5" hidden="false">
      <description>Special Skill · Deployment Skill · Optional
When the trooper is placed on the table, roll on the Booty Chart for a bonus item on top of its normal gear.
Full rule: https://infinitythewiki.com/Booty</description>
    </rule>
    <rule id="2614-ace4-5b0b-e684" name="Camouflage" publicationId="c98c-3c50-3d4f-04b5" hidden="false">
      <description>Special Skill · Automatic Skill · Optional
The trooper can deploy as a Camouflage marker, and can go back into the Camouflaged state during the game.
Full rule: https://infinitythewiki.com/Camouflage</description>
    </rule>
    <rule id="e55f-7015-cb7b-446a" name="Chain of Command" publicationId="c98c-3c50-3d4f-04b5" hidden="false">
      <description>Special Skill · Automatic Skill · Optional, Private Information
If your Lieutenant is Isolated or in a Null state when Loss of Lieutenant is checked, this trooper takes over as Lieutenant on the spot and the check counts as passed.
Full rule: https://infinitythewiki.com/Chain_of_Command</description>
    </rule>
    <rule id="6c6c-f365-d24e-ce98" name="Climbing Plus" publicationId="c98c-3c50-3d4f-04b5" hidden="false">
      <description>Special Skill · Automatic Skill · Movement, Optional
Climb becomes a Short Skill when it's the first one declared in an Order, and Move or Dodge can carry the trooper up and across walls as if they were floors.
Full rule: https://infinitythewiki.com/Climbing_Plus</description>
    </rule>
    <rule id="5ddf-db35-c1f9-6384" name="Combat Instinct" publicationId="c98c-3c50-3d4f-04b5" hidden="false">
      <description>Special Skill · Automatic Skill · Optional
Enemy Surprise Attack penalties don't apply to this trooper.
Full rule: https://infinitythewiki.com/Combat_Instinct</description>
    </rule>
    <rule id="1631-6f66-d6f4-21e0" name="Combat Jump" publicationId="c98c-3c50-3d4f-04b5" hidden="false">
      <description>Special Skill · Long Skill · Airborne Deployment (AD), Private Information, Optional
Airborne Deployment: the trooper waits off the table, then on its own Order is placed on any open horizontal surface and rolls PH. On a pass it lands there; on a fail it arrives at its own table edge as a model.
Full rule: https://infinitythewiki.com/Combat_Jump</description>
    </rule>
    <rule id="cc56-c937-9613-6bad" name="Commlink" publicationId="c98c-3c50-3d4f-04b5" hidden="false">
      <description>Special Skill · Obligatory
Lets the army keep a Reinforcements Section and call it in with Request Reinforcements, even after the Commlink trooper falls. A bracketed bonus raises the army's trooper limit. One per army.
Full rule: https://infinitythewiki.com/Infinity_Reinforcements#Commlink</description>
    </rule>
    <rule id="6355-ad79-d8af-7f8c" name="Counterintelligence" publicationId="c98c-3c50-3d4f-04b5" hidden="false">
      <description>Special Skill · Automatic Skill · Optional, Private Information
Blunts the enemy's strategic use of Command Tokens: they cancel only one of your Orders, or your Command Token allowance rises to two.
Full rule: https://infinitythewiki.com/Counterintelligence</description>
    </rule>
    <rule id="a4f3-2bbc-8877-c2f3" name="Courage" publicationId="c98c-3c50-3d4f-04b5" hidden="false">
      <description>Special Skill · Automatic Skill · Optional
The trooper may pass any Guts roll automatically and ignores Retreat!, though Loss of Lieutenant still affects it.
Full rule: https://infinitythewiki.com/Courage</description>
    </rule>
    <rule id="7e2a-f2e8-0da5-80b9" name="Cyberplug" publicationId="c98c-3c50-3d4f-04b5" hidden="false">
      <description>Special Skill · Automatic Skill · Obligatory
The trooper can take Cyberplug Peripherals.
Full rule: https://infinitythewiki.com/Cyberplug</description>
    </rule>
    <rule id="c7cb-ef30-95b3-68ba" name="Decoy" publicationId="c98c-3c50-3d4f-04b5" hidden="false">
      <description>Special Skill · Deployment Skill · Optional
The trooper can deploy in the Decoy state.
Full rule: https://infinitythewiki.com/Decoy</description>
    </rule>
    <rule id="c410-f367-2544-e324" name="Doctor" publicationId="c98c-3c50-3d4f-04b5" hidden="false">
      <description>Special Skill · Short Skill · Optional
In base contact with an Unconscious trooper that has VITA, pass a WIP roll to heal one wound and bring it round. A failed roll kills the patient.
Full rule: https://infinitythewiki.com/Doctor</description>
    </rule>
    <rule id="2434-8a72-9517-e2e4" name="Dogged" publicationId="c98c-3c50-3d4f-04b5" hidden="false">
      <description>Special Skill · Automatic Skill · Optional
When it falls Unconscious, the trooper can keep fighting as if unhurt for the rest of that Player Turn, then dies in the States Phase. Any further wound kills it at once, and it can't be healed.
Full rule: https://infinitythewiki.com/Dogged</description>
    </rule>
    <rule id="3632-0eb5-13ce-4301" name="Engineer" publicationId="c98c-3c50-3d4f-04b5" hidden="false">
      <description>Special Skill · Short Skill · Optional
In base contact with a target that has STR, pass a WIP roll to repair one wound, repeating as often as needed. A failed roll adds a wound instead.
Full rule: https://infinitythewiki.com/Engineer</description>
    </rule>
    <rule id="d923-8a32-a7c9-53ee" name="Explode" publicationId="c98c-3c50-3d4f-04b5" hidden="false">
      <description>Special Skill · Automatic Skill · Attack, Obligatory
When knocked Unconscious, the trooper detonates at the end of the Order: a circular template centred on it, Shock ammunition at PS 7. Then it's removed as Dead.
Full rule: https://infinitythewiki.com/Explode</description>
    </rule>
    <rule id="0420-ee04-627a-4f1b" name="Exrah" publicationId="c98c-3c50-3d4f-04b5" hidden="false">
      <description>Special Skill · Automatic Skill · Obligatory
The trooper can't survive being knocked down: the moment it falls Unconscious it dies outright, with no extra wound, so nothing can heal it. Works even while it's in a Null state.
Full rule: https://infinitythewiki.com/Exrah</description>
    </rule>
    <rule id="25a7-2d08-54c1-3090" name="Forward Deployment" publicationId="c98c-3c50-3d4f-04b5" hidden="false">
      <description>Special Skill · Deployment Skill · Superior Deployment, Optional
The trooper can deploy up to the bracketed distance beyond your Deployment Zone.
Full rule: https://infinitythewiki.com/Forward_Deployment</description>
    </rule>
    <rule id="b426-170c-1b9a-1b14" name="Forward Observer" publicationId="c98c-3c50-3d4f-04b5" hidden="false">
      <description>Special Skill · Short Skill / ARO · BS Attack, Optional
A ranged attack rolled with WIP that leaves its target Targeted instead of forcing a saving roll.
Full rule: https://infinitythewiki.com/Forward_Observer</description>
    </rule>
    <rule id="a6c5-0147-dc2b-b295" name="Frenzy" publicationId="c98c-3c50-3d4f-04b5" hidden="false">
      <description>Special Skill · Automatic Skill · Obligatory, States Phase
Once the trooper wounds or kills an enemy, it gains Impetuous and Limited Cover for the rest of the game, and drops out of any marker state.
Full rule: https://infinitythewiki.com/Frenzy</description>
    </rule>
    <rule id="cb4f-a5bb-3883-2d14" name="FT Master" publicationId="c98c-3c50-3d4f-04b5" hidden="false">
      <description>Special Skill · Automatic Skill · Obligatory
While the trooper is in a Fireteam, every member counts as Regular. If they already were, the Team Leader's coherency range grows by 2 inches.
Full rule: https://infinitythewiki.com/FT_Master</description>
    </rule>
    <rule id="945e-f91d-6cf2-5adc" name="G: Jumper" publicationId="c98c-3c50-3d4f-04b5" hidden="false">
      <description>Special Skill · Automatic Skill · Obligatory
The trooper fields two or three Proxy bodies that share one Order and count as one trooper. Only the active Proxy acts, and control can jump to another Proxy when one goes down.
Full rule: https://infinitythewiki.com/G:_Jumper</description>
    </rule>
    <rule id="a07e-4882-0d29-868a" name="Guard" publicationId="c98c-3c50-3d4f-04b5" hidden="false">
      <description>Special Skill · Automatic Skill · Optional
The trooper can make CC Attacks against an enemy in its LoF and ZoC without reaching base contact, and both sides use their contact-based close combat skills as normal.
Full rule: https://infinitythewiki.com/Guard</description>
    </rule>
    <rule id="80c0-d4ce-49d4-0fb2" name="Hacker" publicationId="c98c-3c50-3d4f-04b5" hidden="false">
      <description>Special Skill · Automatic Skill · Obligatory
The trooper can carry a Hacking Device and run the programs it grants, run some programs without one, and take Upgrade Programs. Works even while the trooper is in a Null state.
Full rule: https://infinitythewiki.com/Hacker</description>
    </rule>
    <rule id="4ba4-ab4c-e9a0-ed47" name="Hidden Deployment" publicationId="c98c-3c50-3d4f-04b5" hidden="false">
      <description>Special Skill · Deployment Skill · Optional, Private Information
The trooper can deploy in the Hidden Deployment state, with its position kept secret.
Full rule: https://infinitythewiki.com/Hidden_Deployment</description>
    </rule>
    <rule id="f7d0-643b-a5e3-6351" name="Immunity" publicationId="c98c-3c50-3d4f-04b5" hidden="false">
      <description>Special Skill · Automatic Skill · Obligatory
The trooper ignores the special effects of whatever is in brackets, such as an ammunition type or a trait, treating that ammunition as Normal. Wider versions cover every ARM-based or BTS-based attack.
Full rule: https://infinitythewiki.com/Immunity</description>
    </rule>
    <rule id="f5f4-d101-4734-1c33" name="Impersonation" publicationId="c98c-3c50-3d4f-04b5" hidden="false">
      <description>Special Skill · Deployment Skill · Optional, NFB, Superior Deployment
Deploy disguised as an Impersonation marker anywhere outside the enemy Deployment Zone, or inside it by passing a WIP roll. A failed roll puts the trooper at its own table edge as a model.
Full rule: https://infinitythewiki.com/Impersonation</description>
    </rule>
    <rule id="9747-fd1c-3a9c-c7d7" name="Impetuous" publicationId="c98c-3c50-3d4f-04b5" hidden="false">
      <description>Special Skill · Automatic Skill · Impetuous Phase, Obligatory
The trooper gets a free activation in the Impetuous Phase, limited to a set menu of actions and forced to rush the nearest enemy or the enemy Deployment Zone.
Full rule: https://infinitythewiki.com/Impetuous</description>
    </rule>
    <rule id="af9a-d1fb-e6dc-c981" name="Infiltration" publicationId="c98c-3c50-3d4f-04b5" hidden="false">
      <description>Special Skill · Deployment Skill · Superior Deployment, Optional
Deploy anywhere in your own half, or in the enemy half (outside their Deployment Zone) by passing a PH-3 roll. A failed roll puts the trooper at its own table edge as a model.
Full rule: https://infinitythewiki.com/Infiltration</description>
    </rule>
    <rule id="9354-698a-aa20-cfdd" name="Infinity Spec-Ops" publicationId="c98c-3c50-3d4f-04b5" hidden="false">
      <description>Special Skill · Automatic Skill · Optional
A customisable trooper: at list building, add two options from the Spec-Ops Chart. In play it can switch to its Enhanced Profile by collecting a SpecBall. One per army.
Full rule: https://infinitythewiki.com/Infinity_Spec-Ops</description>
    </rule>
    <rule id="5f36-5a33-f4be-c2ef" name="Inspiring Leadership" publicationId="c98c-3c50-3d4f-04b5" hidden="false">
      <description>Special Skill · Automatic Skill · Obligatory
Improves Fireteam coherency. While its owner is the Lieutenant and on the table, every Order-giving trooper is Regular with Courage, Coordinated Orders cost only the Lieutenant Order, and the army ignores Retreat!.
Full rule: https://infinitythewiki.com/Inspiring_Leadership</description>
    </rule>
    <rule id="4726-c1d8-4a83-c525" name="Journalist" publicationId="c98c-3c50-3d4f-04b5" hidden="false">
      <description>Special Skill · Automatic Skill · Optional
Allies in the trooper's ZoC get +3 to Guts rolls. Enemies in its ZoC get -3.
Full rule: https://infinitythewiki.com/Journalist</description>
    </rule>
    <rule id="4712-ebc4-302f-f676" name="Lieutenant" publicationId="c98c-3c50-3d4f-04b5" hidden="false">
      <description>Special Skill · Automatic Skill · Private Information, Obligatory
The army's commander, with a Special Lieutenant Order. If it is Isolated, in a Null state or off the table at the Tactical Phase, Loss of Lieutenant applies. Some profiles add extras such as +1 Command Token or +1 Order.
Full rule: https://infinitythewiki.com/Lieutenant</description>
    </rule>
    <rule id="0948-1d19-12b3-1607" name="Limited Cover" publicationId="c98c-3c50-3d4f-04b5" hidden="false">
      <description>Special Skill · Automatic Skill · Obligatory
Attacks against this trooper ignore the -3 penalty for Partial Cover.
Full rule: https://infinitythewiki.com/Limited_Cover</description>
    </rule>
    <rule id="bc0f-db4c-495e-8761" name="Marksmanship" publicationId="c98c-3c50-3d4f-04b5" hidden="false">
      <description>Special Skill · Automatic Skill · Obligatory
When the trooper makes a BS Attack, it ignores the penalties from Partial Cover and Nanoscreen.
Full rule: https://infinitythewiki.com/Marksmanship</description>
    </rule>
    <rule id="49a5-4d8e-6a3a-a91d" name="Martial Arts" publicationId="c98c-3c50-3d4f-04b5" hidden="false">
      <description>Special Skill · Automatic Skill · CC Special Skill, Optional
Gives the close combat bonuses for the level listed on the profile, as set out in the Martial Arts Chart.
Full rule: https://infinitythewiki.com/Martial_Arts</description>
    </rule>
    <rule id="a63b-c001-e7a8-4d2d" name="MetaChemistry" publicationId="c98c-3c50-3d4f-04b5" hidden="false">
      <description>Special Skill · Deployment Skill · Optional
When the trooper is placed on the table, roll once on the MetaChemistry Table for a bonus MOD or extra skill.
Full rule: https://infinitythewiki.com/MetaChemistry</description>
    </rule>
    <rule id="4c40-b00d-f36a-80f1" name="Mimetism" publicationId="c98c-3c50-3d4f-04b5" hidden="false">
      <description>Special Skill · Automatic Skill · NFB, Obligatory
Enemies shooting at the trooper with LoF, or trying to Discover it, take the bracketed penalty, such as -3 or -6. It doesn't apply in close combat.
Full rule: https://infinitythewiki.com/Mimetism</description>
    </rule>
    <rule id="c53f-617c-b059-48b7" name="Minelayer" publicationId="c98c-3c50-3d4f-04b5" hidden="false">
      <description>Special Skill · Deployment Skill · Optional
When the trooper deploys, it can also place a deployable weapon or piece of equipment (or the bracketed number of them) in its ZoC, provided no enemy or camouflage marker is in the trigger area.
Full rule: https://infinitythewiki.com/Minelayer</description>
    </rule>
    <rule id="14b1-290e-755a-d73d" name="Mnemonica" publicationId="c98c-3c50-3d4f-04b5" hidden="false">
      <description>Special Skill · Automatic Skill · Optional
When the trooper enters a Null state, its WIP, this skill and any Lieutenant role pass to an ally on the table that has a Cube or is a Remote. The original is then removed as Dead.
Full rule: https://infinitythewiki.com/Mnemonica</description>
    </rule>
    <rule id="5483-54e0-f773-e4a7" name="Morpho-Scan" publicationId="c98c-3c50-3d4f-04b5" hidden="false">
      <description>Special Skill · Short Skill · Comms Attack, No Roll, Optional, Zone of Control
No roll needed: the trooper copies the MOV, CC, BS and PH of an enemy with VITA in its ZoC. It counts as a Comms Attack, and a target that tries to Reset takes -9.
Full rule: https://infinitythewiki.com/Morpho-Scan</description>
    </rule>
    <rule id="7e64-ed23-499c-3563" name="Natural Born Warrior" publicationId="c98c-3c50-3d4f-04b5" hidden="false">
      <description>Special Skill · Automatic Skill · CC Special Skill
When the trooper is attacked in close combat and fights back, it ignores all the negative MODs its opponent would impose.
Full rule: https://infinitythewiki.com/Natural_Born_Warrior</description>
    </rule>
    <rule id="0ac3-5945-f078-e120" name="NCO" publicationId="c98c-3c50-3d4f-04b5" hidden="false">
      <description>Special Skill · Automatic Skill · Optional
The trooper can turn Special Lieutenant Orders into Tactical Orders and use them, from any Combat Group. As a Fireteam leader, it can activate the team with them.
Full rule: https://infinitythewiki.com/NCO</description>
    </rule>
    <rule id="6302-fddd-4106-ca95" name="Neurocinetics" publicationId="c98c-3c50-3d4f-04b5" hidden="false">
      <description>Special Skill · Automatic Skill · Obligatory
In its Active Turn, all the trooper's ranged weapons fire at Burst 1. In the Reactive Turn, it can fire its full Burst at a single target.
Full rule: https://infinitythewiki.com/Neurocinetics</description>
    </rule>
    <rule id="df89-82a8-7cd0-b3f1" name="No Cover" publicationId="c98c-3c50-3d4f-04b5" hidden="false">
      <description>Special Skill · Automatic Skill · Obligatory
The trooper never benefits from Partial Cover.
Full rule: https://infinitythewiki.com/No_Cover</description>
    </rule>
    <rule id="69b5-bde7-1e79-acda" name="No Wound Incapacitation" publicationId="c98c-3c50-3d4f-04b5" hidden="false">
      <description>Special Skill · Automatic Skill · Optional
When it falls Unconscious, the trooper carries on as if unhurt. One more wound kills it, though it can still be healed back to normal.
Full rule: https://infinitythewiki.com/No_Wound_Incapacitation</description>
    </rule>
    <rule id="ef0f-5abc-9f7a-ac25" name="Non-Hackable" publicationId="c98c-3c50-3d4f-04b5" hidden="false">
      <description>Special Skill · Automatic Skill · Obligatory
Hacking programs that target specific troop types (HI, REM, TAG and so on) can't target this trooper, even while it is in a Null state.
Full rule: https://infinitythewiki.com/Non-Hackable</description>
    </rule>
    <rule id="20d0-09ec-10f2-40ec" name="Number 2" publicationId="c98c-3c50-3d4f-04b5" hidden="false">
      <description>Special Skill · Automatic Skill · Optional
If the Fireteam Leader is Isolated or in a Null state, this trooper can take over as leader immediately.
Full rule: https://infinitythewiki.com/Number_2</description>
    </rule>
    <rule id="6052-c15c-e8c5-303c" name="Parachutist" publicationId="c98c-3c50-3d4f-04b5" hidden="false">
      <description>Special Skill · Long Skill · Airborne Deployment (AD), Optional, Private Information
Airborne Deployment: the trooper waits off the table, then on its own Order enters at any table edge outside the enemy Deployment Zone, with no Partial Cover that Order. The (Deployment Zone) version can also enter inside it.
Full rule: https://infinitythewiki.com/Parachutist</description>
    </rule>
    <rule id="1319-c1b0-c288-0d3e" name="Paramedic" publicationId="c98c-3c50-3d4f-04b5" hidden="false">
      <description>Special Skill · Automatic Skill · Obligatory
The trooper carries a MediKit for reviving Unconscious allies.
Full rule: https://infinitythewiki.com/Paramedic</description>
    </rule>
    <rule id="b11b-3bb2-9ac7-ff7b" name="Peripheral" publicationId="c98c-3c50-3d4f-04b5" hidden="false">
      <description>Special Skill · Automatic Skill · Obligatory
Covers a Controller and its Peripherals (secondary models): they count as one trooper, deploy together and act on the same Order, though each can pick its own target.
Full rule: https://infinitythewiki.com/Peripheral</description>
    </rule>
    <rule id="ad99-ea86-fb64-926f" name="Protheion" publicationId="c98c-3c50-3d4f-04b5" hidden="false">
      <description>Special Skill · Automatic Skill · CC Special Skill, Optional
In close combat, each wound the trooper inflicts on a target with VITA heals one of its own. If it's unhurt, its VITA rises instead, up to a limit.
Full rule: https://infinitythewiki.com/Protheion</description>
    </rule>
    <rule id="01d9-2e78-bee8-6e35" name="Regeneration" publicationId="c98c-3c50-3d4f-04b5" hidden="false">
      <description>Special Skill · Automatic Skill · States Phase, Optional
In the States Phase, roll PH. A pass heals one wound and can end Unconscious; a fail adds one.
Full rule: https://infinitythewiki.com/Regeneration</description>
    </rule>
    <rule id="f1fe-3164-b1df-63ff" name="Religious Troop" publicationId="c98c-3c50-3d4f-04b5" hidden="false">
      <description>Special Skill · Automatic Skill · Obligatory
The trooper passes Guts rolls automatically and holds its ground, though it may roll WIP to fall back as if it had failed. It ignores Retreat!, but Loss of Lieutenant still applies.
Full rule: https://infinitythewiki.com/Religious_Troop</description>
    </rule>
    <rule id="a8d2-9929-5ff9-e7ce" name="Remdriver" publicationId="c98c-3c50-3d4f-04b5" hidden="false">
      <description>Special Skill · Deployment Skill · Optional
On deployment, tag one Remote already on the table. That Remote gains the bonuses listed on this trooper's profile until this trooper enters a Null state.
Full rule: https://infinitythewiki.com/Remdriver</description>
    </rule>
    <rule id="25d8-4e0e-645f-2955" name="Remote Presence" publicationId="c98c-3c50-3d4f-04b5" hidden="false">
      <description>Special Skill · Automatic Skill · Obligatory
A trooper with STR gets two levels of Unconscious, so it dies one wound later than usual. A single Engineer or GizmoKit success clears all the wounds keeping it down.
Full rule: https://infinitythewiki.com/Remote_Presence</description>
    </rule>
    <rule id="5d98-e8e0-464c-6da4" name="Request Reinforcements" publicationId="c98c-3c50-3d4f-04b5" hidden="false">
      <description>Special Skill · Obligatory
With a Commlink trooper, keep a Reinforcement Section off the table and bring it in after taking casualties or in the final round, through an extra Request Reinforcements step in the turn.
Full rule: https://infinitythewiki.com/Infinity_Reinforcements</description>
    </rule>
    <rule id="6c56-e468-2b55-8d32" name="Sapper" publicationId="c98c-3c50-3d4f-04b5" hidden="false">
      <description>Special Skill · Deployment Skill / Long Skill · Optional
The trooper can deploy in the Foxhole state, or dig into it later as a Long Skill, as long as there's room for its template.
Full rule: https://infinitythewiki.com/Sapper</description>
    </rule>
    <rule id="1a74-4676-263a-ddc4" name="Sensor" publicationId="c98c-3c50-3d4f-04b5" hidden="false">
      <description>Special Skill · Short Skill · Attack, Optional, Zone of Control
A WIP+6 roll that reveals every hidden or camouflaged enemy in the trooper's ZoC at once, without needing LoF. Enemies can't re-camouflage there, and Discover rolls against camouflage markers get +6.
Full rule: https://infinitythewiki.com/Sensor</description>
    </rule>
    <rule id="13a5-e03b-507b-e198" name="Shasvastii" publicationId="c98c-3c50-3d4f-04b5" hidden="false">
      <description>Special Skill · Automatic Skill · Obligatory
When the trooper falls Unconscious it becomes an embryo instead. It still counts for Retreat! and scenario conditions during the game, but not at final scoring, and Shock ammunition kills it outright.
Full rule: https://infinitythewiki.com/Shasvastii</description>
    </rule>
    <rule id="3cf6-7205-1a36-37d4" name="Sixth Sense" publicationId="c98c-3c50-3d4f-04b5" hidden="false">
      <description>Special Skill · Automatic Skill · Optional
The trooper can react to attacks from outside its LoF as if it saw all around, ignores the -6 for shooting through zero visibility, and takes no penalties to Dodge or Reset except those from Immobilized and Isolated.
Full rule: https://infinitythewiki.com/Sixth_Sense</description>
    </rule>
    <rule id="4e85-2481-9162-7597" name="Specialist Operative" publicationId="c98c-3c50-3d4f-04b5" hidden="false">
      <description>Special Skill · Automatic Skill · Optional
The trooper counts as a Specialist for mission and scenario rules.
Full rule: https://infinitythewiki.com/Specialist_Operative</description>
    </rule>
    <rule id="84da-ce41-fb04-cc69" name="Stealth" publicationId="c98c-3c50-3d4f-04b5" hidden="false">
      <description>Special Skill · Automatic Skill · Optional
In its Active Turn, the trooper can use Cautious Movement inside enemy ZoC and hacking areas, and its movement only draws AROs from enemies who can see it.
Full rule: https://infinitythewiki.com/Stealth</description>
    </rule>
    <rule id="c4f3-8b3a-6d8a-cfba" name="Strategic Deployment" publicationId="c98c-3c50-3d4f-04b5" hidden="false">
      <description>Special Skill · Deployment Skill · Optional
As a Fireteam's leader, the trooper deploys first and brings the whole team forward as if it had Forward Deployment (+4 inches).
Full rule: https://infinitythewiki.com/Strategic_Deployment</description>
    </rule>
    <rule id="b1ea-3c65-6f8a-5999" name="Strategos" publicationId="c98c-3c50-3d4f-04b5" hidden="false">
      <description>Special Skill · Automatic Skill · Optional
As Lieutenant, hold back two troopers to deploy after your opponent instead of one, and convert Special Lieutenant Orders into Regular Orders.
Full rule: https://infinitythewiki.com/Strategos</description>
    </rule>
    <rule id="1c3b-0a2a-1d08-f947" name="Super-Jump" publicationId="c98c-3c50-3d4f-04b5" hidden="false">
      <description>Special Skill · Automatic Skill · Movement, Optional
Jump becomes a Short Skill when declared first in an Order, so the trooper can jump and shoot in one Order. A Jump taken as a Long Skill covers the first MOV value plus 4 inches. No Partial Cover while jumping.
Full rule: https://infinitythewiki.com/Super-Jump</description>
    </rule>
    <rule id="8d0e-3eb9-18e7-35eb" name="Surprise Attack" publicationId="c98c-3c50-3d4f-04b5" hidden="false">
      <description>Special Skill · Automatic Skill · Obligatory
Attacking from marker form or Hidden Deployment in its Active Turn, the trooper imposes the bracketed penalty on its targets. It must return to marker form before it can do so again.
Full rule: https://infinitythewiki.com/Surprise_Attack</description>
    </rule>
    <rule id="d4e9-8b47-8f37-84cc" name="Tactical Awareness" publicationId="c98c-3c50-3d4f-04b5" hidden="false">
      <description>Special Skill · Automatic Skill · Optional
The trooper generates an extra Tactical Order, for its own use only, on top of its usual Order.
Full rule: https://infinitythewiki.com/Tactical_Awareness</description>
    </rule>
    <rule id="23a7-3c5e-5fd4-4c5d" name="TAGCom" publicationId="c98c-3c50-3d4f-04b5" hidden="false">
      <description>Special Skill · Automatic Skill · Optional
While on the table and not in a Null state, the trooper gives every TAG in its Combat Group the bonuses listed on its profile.
Full rule: https://infinitythewiki.com/TAGCom</description>
    </rule>
    <rule id="abbb-b794-29e5-3aa2" name="Tech-Recovery" publicationId="c98c-3c50-3d4f-04b5" hidden="false">
      <description>Special Skill · Automatic Skill · Optional
When hit by an allied GizmoKit, pass a PH roll to clear every state an Engineer could fix, such as Immobilized or Isolated. It doesn't cover Unconscious.
Full rule: https://infinitythewiki.com/Tech-Recovery</description>
    </rule>
    <rule id="f3bd-6218-95fe-b386" name="Technorganic" publicationId="c98c-3c50-3d4f-04b5" hidden="false">
      <description>Special Skill · Automatic Skill · Optional
Doctor, Engineer, MediKit or GizmoKit can each revive this trooper from Unconscious, whatever its wound attribute.
Full rule: https://infinitythewiki.com/Technorganic</description>
    </rule>
    <rule id="1711-c9cd-43b7-6d20" name="Terrain" publicationId="c98c-3c50-3d4f-04b5" hidden="false">
      <description>Special Skill · Automatic Skill · Optional
In terrain of the listed type, the trooper gets +1 inch on its first MOV value and ignores that terrain's movement restrictions.
Full rule: https://infinitythewiki.com/Terrain</description>
    </rule>
    <rule id="4875-3ee6-96cd-d4de" name="Total Reaction" publicationId="c98c-3c50-3d4f-04b5" hidden="false">
      <description>Special Skill · Automatic Skill · Optional
The trooper can shoot AROs with its weapon's full Burst.
Full rule: https://infinitythewiki.com/Total_Reaction</description>
    </rule>
    <rule id="0032-2249-623a-c113" name="Transmutation" publicationId="c98c-3c50-3d4f-04b5" hidden="false">
      <description>Special Skill · Automatic Skill
The trooper has a second profile and switches to it when the bracketed condition is met, such as taking a set number of wounds. Wounds and states carry over. Escape System is the version for bailing out of a vehicle.
Full rule: https://infinitythewiki.com/Transmutation</description>
    </rule>
    <rule id="51d0-4833-4878-fa27" name="Triangulated Fire" publicationId="c98c-3c50-3d4f-04b5" hidden="false">
      <description>Special Skill · Long Skill · Attack, Optional
A BS Attack against a target in LoF that ignores every MOD to the roll (range, cover, Mimetism and so on). Only Burst MODs still apply.
Full rule: https://infinitythewiki.com/Triangulated_Fire</description>
    </rule>
    <rule id="fe6d-4f69-5803-f8d5" name="Vulnerability" publicationId="c98c-3c50-3d4f-04b5" hidden="false">
      <description>Special Skill · Automatic Skill · Obligatory
The trooper is vulnerable to the bracketed attack, weapon or ammunition, and its Immunity doesn't apply against it.
Full rule: https://infinitythewiki.com/Vulnerability</description>
    </rule>
    <rule id="68e6-d06f-7887-e349" name="Warhorse" publicationId="c98c-3c50-3d4f-04b5" hidden="false">
      <description>Special Skill · Automatic Skill · Optional
The trooper ignores Loss of Lieutenant and Retreat!, staying Regular throughout, and can never become Isolated.
Full rule: https://infinitythewiki.com/Warhorse</description>
    </rule>
    <rule id="9910-bb40-f0a8-a5a9" name="360° Visor" publicationId="c98c-3c50-3d4f-04b5" hidden="false">
      <description>Equipment · Automatic Equipment · Obligatory
Gives the trooper all-round vision: a 360° LoF arc instead of the usual 180°.
Full rule: https://infinitythewiki.com/360%C2%BA_Visor</description>
    </rule>
    <rule id="68bf-a1a4-62b5-1fe6" name="AI Motorcycle" publicationId="c98c-3c50-3d4f-04b5" hidden="false">
      <description>Equipment · Automatic Equipment
The trooper has mounted and dismounted profiles and switches between them by getting on or off its AI-driven bike. While mounted, it follows the Motorcycle rules.
Full rule: https://infinitythewiki.com/AI_Motorcycle</description>
    </rule>
    <rule id="f255-29d8-8b45-5254" name="Albedo" publicationId="c98c-3c50-3d4f-04b5" hidden="false">
      <description>Equipment · Automatic Equipment · Obligatory, NFB
Enemies with a Multispectral Visor or Marksmanship who shoot at the trooper with LoF, or try to Discover it, take the bracketed penalty. It doesn't apply in close combat.
Full rule: https://infinitythewiki.com/Albedo</description>
    </rule>
    <rule id="d5ea-b330-f4e2-8d38" name="Baggage" publicationId="c98c-3c50-3d4f-04b5" hidden="false">
      <description>Equipment · Automatic Equipment · Obligatory, No Roll
Allies in the bearer's ZoC can Reload, and they automatically recover spent Disposable uses (or clear Unloaded) in the States Phase.
Full rule: https://infinitythewiki.com/Baggage</description>
    </rule>
    <rule id="3ca4-45e6-bf05-0166" name="Bangbomb" publicationId="c98c-3c50-3d4f-04b5" hidden="false">
      <description>Equipment · Automatic Equipment · Optional
The trooper adds the bracketed bonus to Dodge rolls against attackers in its LoF or ZoC. Not against template weapons.
Full rule: https://infinitythewiki.com/Bangbomb</description>
    </rule>
    <rule id="de40-eec4-a4fb-8bd8" name="Biometric Visor" publicationId="c98c-3c50-3d4f-04b5" hidden="false">
      <description>Equipment · Automatic Equipment · Obligatory
Sees through Impersonation: ignores its WIP-3 penalty, reveals the disguised trooper on a successful Discover, and blocks Surprise Attack penalties from impersonators and holoechoes.
Full rule: https://infinitythewiki.com/Biometric_Visor</description>
    </rule>
    <rule id="261d-84b1-b4fc-721a" name="Cube" publicationId="c98c-3c50-3d4f-04b5" hidden="false">
      <description>Equipment · Automatic Equipment
A backup of the trooper's mind. When a Doctor tries to save it, you can spend Command Tokens to re-roll a failed WIP roll.
Full rule: https://infinitythewiki.com/Cube</description>
    </rule>
    <rule id="eb4c-dc80-2996-bd63" name="Dazer" publicationId="c98c-3c50-3d4f-04b5" hidden="false">
      <description>Equipment · Automatic Equipment · Deployable, Disposable (3), Zone of Control
A deployable device that turns its ZoC into Difficult Terrain of unlimited height until destroyed. Troopers with Terrain (Total) ignore it.
Full rule: https://infinitythewiki.com/Dazer</description>
    </rule>
    <rule id="32d7-b534-9381-b2a5" name="Deactivator" publicationId="c98c-3c50-3d4f-04b5" hidden="false">
      <description>Equipment · Short Skill · Attack
Pass a WIP roll to shut down an enemy deployable weapon or piece of equipment in your LoF or ZoC, such as a mine, FastPanda or turret. Not camouflage markers.
Full rule: https://infinitythewiki.com/Deactivator</description>
    </rule>
    <rule id="3494-fbe8-dfbe-9583" name="Deployable Cover" publicationId="c98c-3c50-3d4f-04b5" hidden="false">
      <description>Equipment · Automatic Equipment · Deployable, Disposable (2), Indiscriminate, Perimeter
Place a Silhouette 3 cover piece anywhere in your ZoC. It provides Partial Cover until a Deactivator removes it.
Full rule: https://infinitythewiki.com/Deployable_Cover</description>
    </rule>
    <rule id="86a4-dcb9-fa97-a970" name="Deployable Repeater" publicationId="c98c-3c50-3d4f-04b5" hidden="false">
      <description>Equipment · Equipment · Comms Equipment, Deployable, Disposable (3), Indiscriminate, Zone of Control
Place a token that works as a Repeater for your Hackers.
Full rule: https://infinitythewiki.com/Deployable_Repeater</description>
    </rule>
    <rule id="ef04-02c6-e2f1-ae4e" name="ECM" publicationId="c98c-3c50-3d4f-04b5" hidden="false">
      <description>Equipment · Automatic Equipment
Electronic countermeasures: enemies attacking the trooper with the attack type in brackets take the listed penalty.
Full rule: https://infinitythewiki.com/ECM</description>
    </rule>
    <rule id="7c08-5614-a336-8bde" name="EVO Hacking Device" publicationId="c98c-3c50-3d4f-04b5" hidden="false">
      <description>Equipment · Automatic Equipment · Comms Equipment
A support device that runs the Supportware programs: Assisted Fire, Controlled Jump, Enhanced Reaction and Fairy Dust.
Full rule: https://infinitythewiki.com/Hacking_Device#EVO_Hacking_Device</description>
    </rule>
    <rule id="d106-8035-7411-471f" name="FastPanda" publicationId="c98c-3c50-3d4f-04b5" hidden="false">
      <description>Equipment · Automatic Equipment
A deployable Repeater that can be placed anywhere in the trooper's ZoC rather than in base contact. It stays until destroyed.
Full rule: https://infinitythewiki.com/FastPanda</description>
    </rule>
    <rule id="c743-149e-0d8b-b92d" name="Firewall" publicationId="c98c-3c50-3d4f-04b5" hidden="false">
      <description>Equipment · Automatic Equipment · Obligatory
Enemies making Comms Attacks against the trooper take the bracketed penalty, and the trooper gets +3 to saving rolls against Comms Attacks. Only one Firewall applies at a time.
Full rule: https://infinitythewiki.com/Firewall</description>
    </rule>
    <rule id="81a3-173c-745e-b37d" name="GizmoKit" publicationId="c98c-3c50-3d4f-04b5" hidden="false">
      <description>Equipment · Short Skill
Repairs allies with STR, either by shooting a remote hit (Non-Lethal) or in base contact. The target then rolls PH to recover.
Full rule: https://infinitythewiki.com/GizmoKit</description>
    </rule>
    <rule id="df33-f1d8-5267-b20b" name="Hacking Device" publicationId="c98c-3c50-3d4f-04b5" hidden="false">
      <description>Equipment · Automatic Equipment · Comms Equipment
Comms equipment that lets a Hacker run Hacking Programs. The basic device carries Carbonite, Oblivion, Spotlight and Total Control; other devices add more.
Full rule: https://infinitythewiki.com/Hacking_Device</description>
    </rule>
    <rule id="2080-5f00-90e3-474b" name="Hacking Device Plus" publicationId="c98c-3c50-3d4f-04b5" hidden="false">
      <description>Equipment · Automatic Equipment · Comms Equipment
A Hacking Device that runs Carbonite, Cybermask, Oblivion, Spotlight, Total Control and White Noise.
Full rule: https://infinitythewiki.com/Hacking_Device#Hacking_Device_Plus</description>
    </rule>
    <rule id="780f-1e58-e0ec-c930" name="HoloMask" publicationId="c98c-3c50-3d4f-04b5" hidden="false">
      <description>Equipment · Automatic Equipment · Optional
The trooper can deploy in, or later switch to, the HoloMask state.
Full rule: https://infinitythewiki.com/HoloMask</description>
    </rule>
    <rule id="3bf6-ced2-9117-bc03" name="Holoprojector" publicationId="c98c-3c50-3d4f-04b5" hidden="false">
      <description>Equipment · Automatic Equipment · Optional, NFB
The trooper can deploy in, or later switch to, the Holoecho state.
Full rule: https://infinitythewiki.com/Holoprojector</description>
    </rule>
    <rule id="3d95-6eaa-02c5-0811" name="Killer Hacking Device" publicationId="c98c-3c50-3d4f-04b5" hidden="false">
      <description>Equipment · Automatic Equipment · Comms Equipment
A hunter's device that runs Cybermask and Trinity, for taking down enemy Hackers.
Full rule: https://infinitythewiki.com/Hacking_Device#Killer_Hacking_Device</description>
    </rule>
    <rule id="e4bc-5900-c716-cbb5" name="MediKit" publicationId="c98c-3c50-3d4f-04b5" hidden="false">
      <description>Equipment · Short Skill
Revives Unconscious allies with VITA, either by shooting a remote hit (Non-Lethal) or in base contact. The patient then rolls PH to recover.
Full rule: https://infinitythewiki.com/MediKit</description>
    </rule>
    <rule id="2a28-ed87-412f-2111" name="Motorcycle" publicationId="c98c-3c50-3d4f-04b5" hidden="false">
      <description>Equipment · Automatic Equipment
A mounted trooper can't go Prone, Climb, use Cautious Movement, or Jump upward. It can only Jump across or down.
Full rule: https://infinitythewiki.com/Motorcycle</description>
    </rule>
    <rule id="06a4-9e4a-a963-55d8" name="Multispectral Visor" publicationId="c98c-3c50-3d4f-04b5" hidden="false">
      <description>Equipment · Automatic Equipment · Obligatory
Cuts through camouflage and poor visibility: reduces Mimetism and visibility penalties, lets the trooper see through zero-visibility zones at -6, and makes it immune to Smoke.
Full rule: https://infinitythewiki.com/Multispectral_Visor</description>
    </rule>
    <rule id="6244-7f4b-7965-5069" name="Nanoscreen" publicationId="c98c-3c50-3d4f-04b5" hidden="false">
      <description>Equipment · Automatic Equipment · Obligatory
Ranged attacks against the trooper take -3, and it gets +3 to saving rolls against them. Doesn't apply to Comms Attacks.
Full rule: https://infinitythewiki.com/Nanoscreen</description>
    </rule>
    <rule id="f01e-d699-2b1a-dc98" name="Repeater" publicationId="c98c-3c50-3d4f-04b5" hidden="false">
      <description>Equipment · Automatic Equipment · Comms Equipment, Obligatory, Zone of Control
Extends the hacking area of every Hacker in your army. Enemy Hackers inside its ZoC can use it against your Hackers, at a -3 Firewall penalty.
Full rule: https://infinitythewiki.com/Repeater</description>
    </rule>
    <rule id="98fd-2c0c-65dd-ae8a" name="SymbioMate" publicationId="c98c-3c50-3d4f-04b5" hidden="false">
      <description>Equipment · Automatic Equipment · Assignable (Transmutation), Obligatory
When the trooper must make a saving roll, it uses ARM and BTS 9 with Immunity (Enhanced), and this also works against Comms Attacks.
Full rule: https://infinitythewiki.com/SymbioMate</description>
    </rule>
    <rule id="54d4-b4f8-d461-3fb3" name="TinBot" publicationId="c98c-3c50-3d4f-04b5" hidden="false">
      <description>Equipment · Automatic Equipment · Comms Equipment, Prior Deployment
A drone companion token that gives its owner the MOD, skill or equipment listed on the profile, as long as the owner isn't Isolated or in a Null state.
Full rule: https://infinitythewiki.com/TinBot</description>
    </rule>
    <rule id="039a-ca2c-44ee-4967" name="X-Visor" publicationId="c98c-3c50-3d4f-04b5" hidden="false">
      <description>Equipment · Automatic Equipment · Obligatory
Improves the trooper's range penalties: -3 becomes 0 and -6 becomes -3, for weapons and for ranged skills such as Discover.
Full rule: https://infinitythewiki.com/X-Visor</description>
    </rule>
    <rule id="dd7c-6890-300f-d707" name="Hacking Area" publicationId="c98c-3c50-3d4f-04b5" hidden="false">
      <description>Hacking
Where Hacking Programs reach: the Hacker's own ZoC plus the ZoC of every friendly Repeater. A Hacker inside an enemy Repeater's ZoC can reach the whole table, but only enemy Hackers can be targeted that way.
Full rule: https://infinitythewiki.com/Hacking_Area</description>
    </rule>
    <rule id="fa48-c592-c940-ca9c" name="Carbonite" publicationId="c98c-3c50-3d4f-04b5" hidden="false">
      <description>Hacking Program · Short Skill / ARO · Comms Attack, Non-Lethal
A Burst 2 Comms Attack on enemy Hackable troopers or Hackers. Each hit forces two BTS saves at PS 7, and a failure leaves the target Immobilized-B.
Full rule: https://infinitythewiki.com/Carbonite</description>
    </rule>
    <rule id="0ad9-aa2e-b1d7-d83b" name="Cybermask" publicationId="c98c-3c50-3d4f-04b5" hidden="false">
      <description>Hacking Program · Long Skill · NFB, No Roll
No roll: while out of enemy LoF, the Hacker disguises itself as an IMP-2 marker until it reveals itself.
Full rule: https://infinitythewiki.com/Cybermask</description>
    </rule>
    <rule id="2b85-5bbb-76d8-13b0" name="Oblivion" publicationId="c98c-3c50-3d4f-04b5" hidden="false">
      <description>Hacking Program · Short Skill / ARO · Comms Attack, Non-Lethal
A Burst 2 Comms Attack on enemy Hackable troopers or Hackers. Each hit forces a save at half BTS, PS 4, and a failure leaves the target Isolated.
Full rule: https://infinitythewiki.com/Oblivion</description>
    </rule>
    <rule id="a6ef-dd80-be82-b35f" name="Spotlight" publicationId="c98c-3c50-3d4f-04b5" hidden="false">
      <description>Hacking Program · Short Skill / ARO · Comms Attack, Non-Lethal
A Burst 2 Comms Attack. Each hit forces a save at half BTS, PS 5, and a failure leaves the target Targeted.
Full rule: https://infinitythewiki.com/Spotlight</description>
    </rule>
    <rule id="ded0-2afe-5722-3925" name="Total Control" publicationId="c98c-3c50-3d4f-04b5" hidden="false">
      <description>Hacking Program · Short Skill / ARO · Comms Attack, Non-Lethal
A Burst 1 Comms Attack on an enemy TAG. Each hit forces two BTS saves at PS 4, and a failure takes the TAG over (Possessed). Used on a Possessed TAG, it frees it instead.
Full rule: https://infinitythewiki.com/Total_Control</description>
    </rule>
    <rule id="b0e2-e5a9-7000-7919" name="Trinity" publicationId="c98c-3c50-3d4f-04b5" hidden="false">
      <description>Hacking Program · Short Skills / ARO · Comms Attack
A Burst 3 Comms Attack on enemy Hackers, at +3 WIP. Each hit forces a BTS save at PS 6, and each failure is a wound.
Full rule: https://infinitythewiki.com/Trinity</description>
    </rule>
    <rule id="7b63-67e7-a3a6-43e0" name="White Noise" publicationId="c98c-3c50-3d4f-04b5" hidden="false">
      <description>Hacking Program · Short Skill · NFB
On a WIP roll, place a circular White Noise zone of unlimited height inside your Hacking Area until the States Phase. It's Reflective, so it affects troopers with Multispectral Visors or Marksmanship.
Full rule: https://infinitythewiki.com/White_Noise</description>
    </rule>
    <rule id="c669-1340-97e1-f22c" name="Zero Pain" publicationId="c98c-3c50-3d4f-04b5" hidden="false">
      <description>Hacking Program · Short Skill / ARO · Comms Attack, Non-Lethal
A defensive program: roll WIP twice, face to face, to evade every Comms Attack in the Order, with -3 to the attackers. Burst 2 in ARO.
Full rule: https://infinitythewiki.com/Zero_Pain</description>
    </rule>
    <rule id="101c-f0d7-056c-8aa3" name="Assisted Fire" publicationId="c98c-3c50-3d4f-04b5" hidden="false">
      <description>Supportware · Long Skill · Supportware, No Roll
Supportware, no roll: an allied Remote in your Hacking Area gains Marksmanship. Once it's running, it reaches across the whole table.
Full rule: https://infinitythewiki.com/Assisted_Fire</description>
    </rule>
    <rule id="6290-6631-cd10-866f" name="Controlled Jump" publicationId="c98c-3c50-3d4f-04b5" hidden="false">
      <description>Supportware · Short Skill / ARO · Supportware, No Roll
Supportware, no roll: shifts the PH rolls for Combat Jumps, +3 for your jumpers and -3 for the enemy's.
Full rule: https://infinitythewiki.com/Controlled_Jump</description>
    </rule>
    <rule id="4dd2-9e24-a424-6532" name="Enhanced Reaction" publicationId="c98c-3c50-3d4f-04b5" hidden="false">
      <description>Supportware · Long Skill · Supportware, No Roll
Supportware, no roll: an allied Remote in your Hacking Area gets Burst 2 in ARO. Once it's running, it reaches across the whole table.
Full rule: https://infinitythewiki.com/Enhanced_Reaction</description>
    </rule>
    <rule id="1f3d-d9b2-f10b-a54d" name="Fairy Dust" publicationId="c98c-3c50-3d4f-04b5" hidden="false">
      <description>Supportware · Long Skill · Supportware, No Roll
Supportware, no roll: pick one troop type (HI, REM, TAG or VH). All of your troopers of that type get Firewall (-3) against Comms Attacks.
Full rule: https://infinitythewiki.com/Fairy_Dust</description>
    </rule>
    <rule id="e196-fa3f-b53c-73ee" name="Anti-materiel" publicationId="c98c-3c50-3d4f-04b5" hidden="false">
      <description>Weapon Trait
The weapon's special ammunition can damage scenery and structures.
Full rule: https://infinitythewiki.com/Traits#Anti-materiel</description>
    </rule>
    <rule id="ebaf-19d5-300d-6896" name="ARM = 0" publicationId="c98c-3c50-3d4f-04b5" hidden="false">
      <description>Weapon Trait
The target saves with ARM 0 against this weapon.
Full rule: https://infinitythewiki.com/Traits#ARM_.3D_0</description>
    </rule>
    <rule id="8338-0790-5c2f-97cd" name="ARO" publicationId="c98c-3c50-3d4f-04b5" hidden="false">
      <description>Weapon Trait
The weapon or equipment can only be used as an ARO.
Full rule: https://infinitythewiki.com/Traits#ARO</description>
    </rule>
    <rule id="857d-68c2-aa74-da8f" name="BioWeapon" publicationId="c98c-3c50-3d4f-04b5" hidden="false">
      <description>Weapon Trait
Against targets with VITA, the weapon hits with DA and Shock ammunition combined.
Full rule: https://infinitythewiki.com/Traits#BioWeapon</description>
    </rule>
    <rule id="eeb9-4096-995a-55d4" name="Boost" publicationId="c98c-3c50-3d4f-04b5" hidden="false">
      <description>Weapon Trait
The weapon activates when an enemy model declares or carries out an Order or ARO in its ZoC.
Full rule: https://infinitythewiki.com/Traits#Boost</description>
    </rule>
    <rule id="e484-20cb-65f9-bd30" name="BS Weapon (PH)" publicationId="c98c-3c50-3d4f-04b5" hidden="false">
      <description>Weapon Trait
A ranged weapon rolled on PH instead of BS. Anything that would change the user's BS changes its PH instead.
Full rule: https://infinitythewiki.com/Traits#BS_Weapon_.28PH.29</description>
    </rule>
    <rule id="64df-5f16-6f83-af68" name="BS Weapon (WIP)" publicationId="c98c-3c50-3d4f-04b5" hidden="false">
      <description>Weapon Trait
A ranged weapon rolled on WIP instead of BS. Anything that would change the user's BS changes its WIP instead.
Full rule: https://infinitythewiki.com/Traits#BS_Weapon_.28WIP.29</description>
    </rule>
    <rule id="9726-f9c9-0fd6-ad17" name="BTS = 0" publicationId="c98c-3c50-3d4f-04b5" hidden="false">
      <description>Weapon Trait
The target saves with BTS 0 against this weapon.
Full rule: https://infinitythewiki.com/Traits#BTS_.3D_0</description>
    </rule>
    <rule id="2fd3-ebad-cd8f-a1f8" name="Burst (B)" publicationId="c98c-3c50-3d4f-04b5" hidden="false">
      <description>Weapon Trait
How many dice the weapon rolls.
Full rule: https://infinitythewiki.com/Traits#Burst_.28B.29</description>
    </rule>
    <rule id="7145-42b2-218a-314e" name="Burst: Single Target" publicationId="c98c-3c50-3d4f-04b5" hidden="false">
      <description>Weapon Trait
All of the weapon's shots must go at one target.
Full rule: https://infinitythewiki.com/Traits#Burst:_Single_Target</description>
    </rule>
    <rule id="9297-b5bd-8bc3-59b1" name="CC" publicationId="c98c-3c50-3d4f-04b5" hidden="false">
      <description>Weapon Trait
The weapon can be used for CC Attacks.
Full rule: https://infinitythewiki.com/Traits#CC</description>
    </rule>
    <rule id="fd9a-f945-a26b-9789" name="Concealed" publicationId="c98c-3c50-3d4f-04b5" hidden="false">
      <description>Weapon Trait
The item sits on the table hidden as a Silhouette 2 Camouflage marker, using the Camouflaged rules.
Full rule: https://infinitythewiki.com/Traits#Concealed</description>
    </rule>
    <rule id="88e9-ae8b-2910-5ad7" name="Continuous Damage" publicationId="c98c-3c50-3d4f-04b5" hidden="false">
      <description>Weapon Trait
Each failed saving roll causes a wound and forces another roll, until the target passes or dies.
Full rule: https://infinitythewiki.com/Traits#Continuous_Damage</description>
    </rule>
    <rule id="357f-b859-148b-1db0" name="Deployable" publicationId="c98c-3c50-3d4f-04b5" hidden="false">
      <description>Weapon Trait
The item is placed on the table and becomes its own target, with its own profile. If it goes Unconscious, it's removed as Dead.
Full rule: https://infinitythewiki.com/Traits#Deployable</description>
    </rule>
    <rule id="4577-cc2e-4bd4-74e1" name="Direct Template" publicationId="c98c-3c50-3d4f-04b5" hidden="false">
      <description>Weapon Trait
The weapon fires the template named in brackets straight from the user.
Full rule: https://infinitythewiki.com/Traits#Direct_Template</description>
    </rule>
    <rule id="8b2d-eeb9-e446-9928" name="Disposable (X)" publicationId="c98c-3c50-3d4f-04b5" hidden="false">
      <description>Weapon Trait
The item has X uses, and declaring it spends one whether or not it works.
Full rule: https://infinitythewiki.com/Traits#Disposable_.28X.29</description>
    </rule>
    <rule id="de00-dbcc-e17d-a405" name="Double Shot" publicationId="c98c-3c50-3d4f-04b5" hidden="false">
      <description>Weapon Trait
In the Active Turn, the weapon can add +1 Burst. With Disposable (2), this spends both uses and leaves the trooper Unloaded.
Full rule: https://infinitythewiki.com/Traits#Double_Shot</description>
    </rule>
    <rule id="d515-904e-7f49-17b1" name="Impact Template" publicationId="c98c-3c50-3d4f-04b5" hidden="false">
      <description>Weapon Trait
The weapon places the template named in brackets at the point of impact.
Full rule: https://infinitythewiki.com/Traits#Impact_Template</description>
    </rule>
    <rule id="891d-1dc5-3836-2d6f" name="Improvised" publicationId="c98c-3c50-3d4f-04b5" hidden="false">
      <description>Weapon Trait
The item isn't made for this use, so its user rolls at -6.
Full rule: https://infinitythewiki.com/Traits#Improvised</description>
    </rule>
    <rule id="e908-d9c8-0558-d806" name="Indiscriminate" publicationId="c98c-3c50-3d4f-04b5" hidden="false">
      <description>Weapon Trait
The item can be used or deployed even with camouflage markers in its area, or with no valid target nearby.
Full rule: https://infinitythewiki.com/Traits#Indiscriminate</description>
    </rule>
    <rule id="5583-38f0-d3ae-fac6" name="Intuitive Attack (Trait)" publicationId="c98c-3c50-3d4f-04b5" hidden="false">
      <description>Weapon Trait
The weapon can be used for Intuitive Attacks.
Full rule: https://infinitythewiki.com/Traits#Intuitive_Attack</description>
    </rule>
    <rule id="d803-d330-3780-823e" name="Non-Lethal" publicationId="c98c-3c50-3d4f-04b5" hidden="false">
      <description>Weapon Trait
The weapon never causes wounds or saving rolls, whatever ammunition it uses. Only its other effects apply.
Full rule: https://infinitythewiki.com/Traits#Non-Lethal</description>
    </rule>
    <rule id="6534-e972-15b2-6d5c" name="Non-Reloadable" publicationId="c98c-3c50-3d4f-04b5" hidden="false">
      <description>Weapon Trait
Spent uses of this Disposable item can never be recovered.
Full rule: https://infinitythewiki.com/Traits#Non-Reloadable</description>
    </rule>
    <rule id="1a45-8ac4-80d6-5b7e" name="Perimeter" publicationId="c98c-3c50-3d4f-04b5" hidden="false">
      <description>Weapon Trait
The item is placed anywhere in the user's ZoC instead of in base contact.
Full rule: https://infinitythewiki.com/Traits#Perimeter</description>
    </rule>
    <rule id="9184-e8be-e313-bf53" name="Prior Deployment" publicationId="c98c-3c50-3d4f-04b5" hidden="false">
      <description>Weapon Trait
The item must be placed on the table during the Deployment Phase.
Full rule: https://infinitythewiki.com/Traits#Prior_Deployment</description>
    </rule>
    <rule id="a5c2-9e7d-b60b-fa4b" name="Reflective" publicationId="c98c-3c50-3d4f-04b5" hidden="false">
      <description>Weapon Trait
The effect also works on troopers with Marksmanship, a Multispectral Visor, or similar.
Full rule: https://infinitythewiki.com/Traits#Reflective</description>
    </rule>
    <rule id="8107-bbbe-ba62-8ded" name="Silent (X)" publicationId="c98c-3c50-3d4f-04b5" hidden="false">
      <description>Weapon Trait
Attacking from inside the target's ZoC but outside its LoF gives the target the bracketed penalty to Dodge.
Full rule: https://infinitythewiki.com/Traits#Silent_.28X.29</description>
    </rule>
    <rule id="8b9b-9a45-e031-f9d2" name="Speculative Attack (Trait)" publicationId="c98c-3c50-3d4f-04b5" hidden="false">
      <description>Weapon Trait
The weapon can be used for Speculative Attacks.
Full rule: https://infinitythewiki.com/Traits#Speculative_Attack</description>
    </rule>
    <rule id="a15e-7481-0da9-5e08" name="State" publicationId="c98c-3c50-3d4f-04b5" hidden="false">
      <description>Weapon Trait
The weapon puts its target into the game state named on its profile.
Full rule: https://infinitythewiki.com/Traits#State</description>
    </rule>
    <rule id="5f14-9dd9-f80b-6451" name="Suppressive Fire (Trait)" publicationId="c98c-3c50-3d4f-04b5" hidden="false">
      <description>Weapon Trait
The weapon can enter the Suppressive Fire state, swapping to the Suppressive Fire Mode profile.
Full rule: https://infinitythewiki.com/Traits#Suppressive_Fire_.28SF.29</description>
    </rule>
    <rule id="dde6-0d19-eea0-be11" name="Target (Attribute)" publicationId="c98c-3c50-3d4f-04b5" hidden="false">
      <description>Weapon Trait
The weapon only affects targets with the bracketed attribute (VITA or STR). Others ignore it.
Full rule: https://infinitythewiki.com/Traits#Target_.28Attribute.29</description>
    </rule>
    <rule id="956f-7124-cea8-5050" name="Targetless" publicationId="c98c-3c50-3d4f-04b5" hidden="false">
      <description>Weapon Trait
The weapon can be fired without targeting an enemy. As an ARO, it still needs LoF to the active trooper.
Full rule: https://infinitythewiki.com/Traits#Targetless</description>
    </rule>
    <rule id="c109-1d75-0a8d-9b35" name="Zone of Control (ZoC)" publicationId="c98c-3c50-3d4f-04b5" hidden="false">
      <description>Weapon Trait
The item's range is the user's Zone of Control (8 inches).
Full rule: https://infinitythewiki.com/Traits#Zone_of_Control_.28ZoC.29</description>
    </rule>
    <rule id="e35a-bc8f-d118-568b" name="Airborne Deployment (AD)" publicationId="c98c-3c50-3d4f-04b5" hidden="false">
      <description>Label
Groups the skills for airborne troops, so a rule that mentions Airborne Deployment covers all of them.
Full rule: https://infinitythewiki.com/Labels#Airborne_Deployment_.28AD.29</description>
    </rule>
    <rule id="3d71-5cc5-abd4-d46d" name="Assignable (Transmutation)" publicationId="c98c-3c50-3d4f-04b5" hidden="false">
      <description>Label
At deployment only, the item can be handed to a trooper with Transmutation that's on the table as a model. It stays in base contact with that trooper and moves with it.
Full rule: https://infinitythewiki.com/Labels#Assignable_.28Transmutation.29</description>
    </rule>
    <rule id="5830-338e-da7a-f3fe" name="Attack" publicationId="c98c-3c50-3d4f-04b5" hidden="false">
      <description>Label
Using it counts as an Attack, and Attacks can't target allies or neutral elements.
Full rule: https://infinitythewiki.com/Labels#Attack</description>
    </rule>
    <rule id="3723-cbec-ac6f-a7c0" name="BS Attack (Label)" publicationId="c98c-3c50-3d4f-04b5" hidden="false">
      <description>Label
Using it counts as a BS Attack.
Full rule: https://infinitythewiki.com/Labels#BS_Attack</description>
    </rule>
    <rule id="304b-9d1f-519c-090f" name="CC Attack (Label)" publicationId="c98c-3c50-3d4f-04b5" hidden="false">
      <description>Label
Using it counts as a CC Attack.
Full rule: https://infinitythewiki.com/Labels#CC_Attack</description>
    </rule>
    <rule id="63f7-0388-5f92-b1d5" name="CC Special Skill" publicationId="c98c-3c50-3d4f-04b5" hidden="false">
      <description>Label
Works only in base contact with the target. Its MODs stack with other CC Special Skills, in both the Active and Reactive Turn.
Full rule: https://infinitythewiki.com/Labels#CC_Special_Skill</description>
    </rule>
    <rule id="4899-55d1-2017-b7ca" name="Comms Attack" publicationId="c98c-3c50-3d4f-04b5" hidden="false">
      <description>Label
An attack you avoid with Reset, not Dodge. Partial Cover doesn't help against it.
Full rule: https://infinitythewiki.com/Labels#Comms_Attack</description>
    </rule>
    <rule id="36b0-1f74-eace-57bc" name="Comms Equipment" publicationId="c98c-3c50-3d4f-04b5" hidden="false">
      <description>Label
Equipment that certain Hacking Programs and ammunition can affect.
Full rule: https://infinitythewiki.com/Labels#Comms_Equipment</description>
    </rule>
    <rule id="5204-f121-97ae-0681" name="Hackable" publicationId="c98c-3c50-3d4f-04b5" hidden="false">
      <description>Label
Allies and enemies can target it with certain Hacking Programs.
Full rule: https://infinitythewiki.com/Labels#Hackable</description>
    </rule>
    <rule id="8ef7-15f7-a803-01f0" name="Hostile" publicationId="c98c-3c50-3d4f-04b5" hidden="false">
      <description>Label
A game element outside every army list, with its own attributes. Every player treats it as an enemy, and it can attack and be attacked.
Full rule: https://infinitythewiki.com/Labels#Hostile</description>
    </rule>
    <rule id="85a2-a189-815f-ec59" name="Marker" publicationId="c98c-3c50-3d4f-04b5" hidden="false">
      <description>Label
Can be shown on the table as a marker instead of a model or token.
Full rule: https://infinitythewiki.com/Labels#Marker</description>
    </rule>
    <rule id="e7de-09fd-1c02-65b8" name="Movement" publicationId="c98c-3c50-3d4f-04b5" hidden="false">
      <description>Label
Using it counts as Movement.
Full rule: https://infinitythewiki.com/Labels#Movement</description>
    </rule>
    <rule id="781f-3be4-4eb7-f206" name="Negative Feedback (NFB)" publicationId="c98c-3c50-3d4f-04b5" hidden="false">
      <description>Label
Only one NFB skill, item or program can be active at a time. Switching one on switches off any other.
Full rule: https://infinitythewiki.com/Labels#Negative_Feedback_.28NFB.29</description>
    </rule>
    <rule id="cd08-a6c9-521f-ea33" name="No LoF" publicationId="c98c-3c50-3d4f-04b5" hidden="false">
      <description>Label
Doesn't need LoF to the target.
Full rule: https://infinitythewiki.com/Labels#No_LoF</description>
    </rule>
    <rule id="47a4-10ec-d338-8f86" name="No Roll" publicationId="c98c-3c50-3d4f-04b5" hidden="false">
      <description>Label
Works automatically, without a roll. Any fixed result is shown in brackets.
Full rule: https://infinitythewiki.com/Labels#No_Roll</description>
    </rule>
    <rule id="ad61-ed14-9b53-fa09" name="Non-Reloadable (Label)" publicationId="c98c-3c50-3d4f-04b5" hidden="false">
      <description>Label
Spent uses can never be recovered, and Unloaded can't be cleared.
Full rule: https://infinitythewiki.com/Labels#Non-Reloadable</description>
    </rule>
    <rule id="70ee-127b-9a17-a96a" name="Null" publicationId="c98c-3c50-3d4f-04b5" hidden="false">
      <description>Label
A state that stops the trooper giving an Order or counting for scoring: Dead, Disconnected, Possessed, Sepsitorized and Unconscious.
Full rule: https://infinitythewiki.com/Labels#Null</description>
    </rule>
    <rule id="9bee-d639-78fc-e47b" name="Obligatory" publicationId="c98c-3c50-3d4f-04b5" hidden="false">
      <description>Label
Its use is mandatory.
Full rule: https://infinitythewiki.com/Labels#Obligatory</description>
    </rule>
    <rule id="5b59-6bdb-3b22-3ee3" name="Optional" publicationId="c98c-3c50-3d4f-04b5" hidden="false">
      <description>Label
Its use is optional.
Full rule: https://infinitythewiki.com/Labels#Optional</description>
    </rule>
    <rule id="d2ee-d518-68ff-c360" name="Private Information" publicationId="c98c-3c50-3d4f-04b5" hidden="false">
      <description>Label
You don't have to reveal it until it's used or the game ends.
Full rule: https://infinitythewiki.com/Labels#Private_Information</description>
    </rule>
    <rule id="73ee-62a7-8188-fc31" name="States Phase" publicationId="c98c-3c50-3d4f-04b5" hidden="false">
      <description>Label
Used only in the States Phase, unless stated otherwise.
Full rule: https://infinitythewiki.com/Labels#States_Phase</description>
    </rule>
    <rule id="ddd8-9177-8a1d-7920" name="Superior Deployment" publicationId="c98c-3c50-3d4f-04b5" hidden="false">
      <description>Label
Groups the skills that let troopers deploy outside their Deployment Zone, so a rule that mentions Superior Deployment covers all of them.
Full rule: https://infinitythewiki.com/Labels#Superior_Deployment</description>
    </rule>
    <rule id="1635-0212-9657-e379" name="Supportware" publicationId="c98c-3c50-3d4f-04b5" hidden="false">
      <description>Label
Hacking Programs that support allied troopers or hinder enemies rather than attacking directly.
Full rule: https://infinitythewiki.com/Labels#Supportware</description>
    </rule>
    <rule id="2ac2-f449-3f7a-1b55" name="Armor Piercing (AP) Ammunition" publicationId="c98c-3c50-3d4f-04b5" hidden="false">
      <description>Ammunition
Halves the target's ARM or BTS (rounding up) for its saving rolls. Each failure is a wound.
Full rule: https://infinitythewiki.com/Armor_Piercing_(AP)_Ammunition</description>
    </rule>
    <rule id="a39d-d03c-7ffe-826c" name="Combined Ammunition" publicationId="c98c-3c50-3d4f-04b5" hidden="false">
      <description>Ammunition
Ammunition written with a plus sign (such as AP+DA) applies all its parts' effects at once.
Full rule: https://infinitythewiki.com/Combined_Ammunition</description>
    </rule>
    <rule id="30dc-566e-e55e-3203" name="Combined Saving Roll" publicationId="c98c-3c50-3d4f-04b5" hidden="false">
      <description>Ammunition
Some weapons force saving rolls against more than one attribute (ARM and BTS, for example). A critical hit adds one more roll against ARM.
Full rule: https://infinitythewiki.com/Combined_Saving_Roll</description>
    </rule>
    <rule id="21dc-e91b-9e96-4177" name="Double Action (DA) Ammunition" publicationId="c98c-3c50-3d4f-04b5" hidden="false">
      <description>Ammunition
Two saving rolls per hit, both mandatory. Each failure is a wound.
Full rule: https://infinitythewiki.com/Double_Action_(DA)_Ammunition</description>
    </rule>
    <rule id="be3e-e602-2b41-46d6" name="Eclipse Ammunition" publicationId="c98c-3c50-3d4f-04b5" hidden="false">
      <description>Ammunition
Smoke that also blinds Multispectral Visors: a zero-visibility zone no visor can see through.
Full rule: https://infinitythewiki.com/Eclipse_Ammunition</description>
    </rule>
    <rule id="7ffd-7d13-7405-caaf" name="Electromagnetic (E/M) Ammunition" publicationId="c98c-3c50-3d4f-04b5" hidden="false">
      <description>Ammunition
Two saving rolls per hit against half BTS. A failure leaves the target Isolated, unable to take Orders from the pool.
Full rule: https://infinitythewiki.com/Electromagnetic_(E/M)_Ammunition</description>
    </rule>
    <rule id="76d1-fa53-e7ab-9899" name="Explosive (EXP) Ammunition" publicationId="c98c-3c50-3d4f-04b5" hidden="false">
      <description>Ammunition
Three saving rolls per hit, all mandatory. Each failure is a wound.
Full rule: https://infinitythewiki.com/Explosive_(EXP)_Ammunition</description>
    </rule>
    <rule id="61e7-ed5e-a7bb-7504" name="Normal (N) Ammunition" publicationId="c98c-3c50-3d4f-04b5" hidden="false">
      <description>Ammunition
One saving roll per hit. Each failure is a wound, and a critical hit adds a saving roll.
Full rule: https://infinitythewiki.com/Normal_(N)_Ammunition</description>
    </rule>
    <rule id="6ef5-4d6c-d207-598c" name="Paralysis (PARA) Ammunition" publicationId="c98c-3c50-3d4f-04b5" hidden="false">
      <description>Ammunition
One PH-6 roll per hit. A failure leaves the target Immobilized-A. No effect on targets without PH.
Full rule: https://infinitythewiki.com/Paralysis_(PARA)_Ammunition</description>
    </rule>
    <rule id="9c2d-e96a-8cbd-8996" name="Shock Ammunition" publicationId="c98c-3c50-3d4f-04b5" hidden="false">
      <description>Ammunition
One saving roll per hit. Against a target with VITA 1, a failure kills outright instead of leaving it Unconscious.
Full rule: https://infinitythewiki.com/Shock_Ammunition</description>
    </rule>
    <rule id="19e3-0813-c2c7-874d" name="Smoke Ammunition" publicationId="c98c-3c50-3d4f-04b5" hidden="false">
      <description>Ammunition
Lays a circular zero-visibility zone of unlimited height until the States Phase. It needs no target, and lets the user oppose attacks whose LoF passes through it.
Full rule: https://infinitythewiki.com/Smoke_Ammunition</description>
    </rule>
    <rule id="c21d-88aa-e901-8c0a" name="Stun Ammunition" publicationId="c98c-3c50-3d4f-04b5" hidden="false">
      <description>Ammunition
One saving roll per hit. A failure leaves the target Stunned and fails its Guts roll automatically.
Full rule: https://infinitythewiki.com/Stun_Ammunition</description>
    </rule>
    <rule id="877b-3861-b22a-7f24" name="T2 Ammunition" publicationId="c98c-3c50-3d4f-04b5" hidden="false">
      <description>Ammunition
One saving roll per hit, and each failure causes two wounds.
Full rule: https://infinitythewiki.com/T2_Ammunition</description>
    </rule>
    <rule id="51d7-b0a5-20f0-1934" name="Armed Turret" publicationId="c98c-3c50-3d4f-04b5" hidden="false">
      <description>Weaponry
A deployable gun placed in the trooper's ZoC that automatically shoots or strikes enemy models acting in its view or in contact.
Full rule: https://infinitythewiki.com/Armed_Turret</description>
    </rule>
    <rule id="22f6-8099-655c-c066" name="Chest Mines" publicationId="c98c-3c50-3d4f-04b5" hidden="false">
      <description>Weaponry
A body-worn charge used as a direct template in ranged mode, or in close combat to blast every enemy in contact. Two uses in total.
Full rule: https://infinitythewiki.com/Chest_Mines</description>
    </rule>
    <rule id="3628-28eb-21ac-bbd5" name="D-Charges" publicationId="c98c-3c50-3d4f-04b5" hidden="false">
      <description>Weaponry
Demolition charges: plant one on a structure or a downed enemy and it detonates without a roll, or use it as a close combat weapon. Three uses in total.
Full rule: https://infinitythewiki.com/D-Charges</description>
    </rule>
    <rule id="5150-d604-a883-1168" name="Disco Baller" publicationId="c98c-3c50-3d4f-04b5" hidden="false">
      <description>Weaponry · Short Skill · Attack
Throw a Disco Ball to any spot with a BS roll. It projects an Eclipse smoke template until the States Phase and can be reactivated later.
Full rule: https://infinitythewiki.com/Disco_Baller</description>
    </rule>
    <rule id="df3c-1c46-be9f-1d23" name="Drop Bears" publicationId="c98c-3c50-3d4f-04b5" hidden="false">
      <description>Weaponry
Throwable mines: lay one like a normal mine, or throw it to any spot with a BS roll, where it becomes a mine.
Full rule: https://infinitythewiki.com/Drop_Bears</description>
    </rule>
    <rule id="0fb2-12d0-889c-5b96" name="Mine Dispenser" publicationId="c98c-3c50-3d4f-04b5" hidden="false">
      <description>Weaponry
Throws mines to any spot like a thrown Drop Bear. The mine type is listed in brackets.
Full rule: https://infinitythewiki.com/Mine_Dispenser</description>
    </rule>
    <rule id="40b0-7bdb-3b3c-2148" name="Mines" publicationId="c98c-3c50-3d4f-04b5" hidden="false">
      <description>Weaponry
Placed as Camouflage markers with Mimetism (-3) and a 360° view. They trigger as a small teardrop template.
Full rule: https://infinitythewiki.com/Mines</description>
    </rule>
    <rule id="4c56-e5ad-a1f0-7281" name="Mixed Weapons" publicationId="c98c-3c50-3d4f-04b5" hidden="false">
      <description>Weaponry
Weapons with both a ranged mode and a close combat mode. Each mode counts as that kind of weapon and uses the matching attribute.
Full rule: https://infinitythewiki.com/Mixed_Weapons</description>
    </rule>
    <rule id="1a8b-af12-d471-a081" name="Perimeter Weapons" publicationId="c98c-3c50-3d4f-04b5" hidden="false">
      <description>Weaponry
Deployable weapons placed anywhere in the trooper's ZoC rather than in base contact.
Full rule: https://infinitythewiki.com/Perimeter_Weapons</description>
    </rule>
    <rule id="ec5c-9818-175e-0b8c" name="Pitcher" publicationId="c98c-3c50-3d4f-04b5" hidden="false">
      <description>Weaponry
Fires a Deployable Repeater onto the table at the point of impact.
Full rule: https://infinitythewiki.com/Pitcher</description>
    </rule>
    <rule id="6ade-2a78-32c1-9e2f" name="Sepsitor" publicationId="c98c-3c50-3d4f-04b5" hidden="false">
      <description>Weaponry · Attack
A direct template that only works on targets with a Cube. A failed saving roll leaves the target Sepsitorized, turned against its own side.
Full rule: https://infinitythewiki.com/Sepsitor</description>
    </rule>
    <rule id="f606-381b-f6b7-fbce" name="SymbioBomb" publicationId="c98c-3c50-3d4f-04b5" hidden="false">
      <description>Weaponry · Assignable (Transmutation), Comms Attack, Optional
A one-use symbiotic charge that lets the trooper run one Pheroware Tactic (Endgame, Eraser or Mirrorball), with a -3 penalty on the target for Endgame and Eraser.
Full rule: https://infinitythewiki.com/SymbioBomb</description>
    </rule>
    <rule id="d549-7f58-d394-c53b" name="WildParrot" publicationId="c98c-3c50-3d4f-04b5" hidden="false">
      <description>Weaponry
A deployable E/M mine placed anywhere in the trooper's ZoC as a visible token rather than a camouflage marker.
Full rule: https://infinitythewiki.com/WildParrot</description>
    </rule>
    <rule id="157e-9430-cbd3-75a8" name="Camouflaged State" publicationId="c98c-3c50-3d4f-04b5" hidden="false">
      <description>State · Marker
The trooper is on the table as a Camouflage marker, showing its Mimetism value if it has one. Enemies can't move into contact with it or attack it until it's revealed. Re-entering the state takes a Long Skill out of enemy LoF.
Full rule: https://infinitythewiki.com/Camouflaged_State</description>
    </rule>
    <rule id="4bbb-f9a5-e18f-1905" name="Dead State" publicationId="c98c-3c50-3d4f-04b5" hidden="false">
      <description>State · Null
The trooper took more wounds than it can survive. It's removed from the table, gives no more Orders and counts for nothing at scoring.
Full rule: https://infinitythewiki.com/Dead_State</description>
    </rule>
    <rule id="1f32-e815-6fce-f39e" name="Decoy State" publicationId="c98c-3c50-3d4f-04b5" hidden="false">
      <description>State · Marker
When the trooper deploys, it also places the bracketed number of Decoy markers (one or two) within coherency, so the opponent can't tell which is real.
Full rule: https://infinitythewiki.com/Decoy_State</description>
    </rule>
    <rule id="4e9f-0738-7f21-1dbb" name="Disconnected State" publicationId="c98c-3c50-3d4f-04b5" hidden="false">
      <description>State · Null
A Peripheral cut off from its Controller (the Controller is Isolated or down, a coherency check failed, or an attack caused it). It can't act or ARO, its automatic skills stop working, and it scores nothing.
Full rule: https://infinitythewiki.com/Disconnected_State</description>
    </rule>
    <rule id="4db4-856e-af87-4593" name="Engaged State" publicationId="c98c-3c50-3d4f-04b5" hidden="false">
      <description>State
Models in base contact with an enemy are locked in close combat. They can only Berserk, CC Attack, Dodge, Idle, Reset or use close combat skills, and can't see outside the fight. Shooting into a close combat follows special rules.
Full rule: https://infinitythewiki.com/Engaged_State</description>
    </rule>
    <rule id="22cc-8242-115d-c703" name="Foxhole State" publicationId="c98c-3c50-3d4f-04b5" hidden="false">
      <description>State
The trooper is dug in: at least Silhouette 3, Partial Cover from every direction, Mimetism (-3) and Courage, but it can't move while it stays in the foxhole.
Full rule: https://infinitythewiki.com/Foxhole_State</description>
    </rule>
    <rule id="3d53-aae5-954c-190a" name="Hidden Deployment State" publicationId="c98c-3c50-3d4f-04b5" hidden="false">
      <description>State
The trooper deploys with no model or marker on the table. Its position is written down secretly, and until it's revealed it doesn't count as being on the table.
Full rule: https://infinitythewiki.com/Hidden_Deployment_State</description>
    </rule>
    <rule id="8648-0c17-e5b1-19fd" name="Holoecho State" publicationId="c98c-3c50-3d4f-04b5" hidden="false">
      <description>State · Marker
The trooper is shown as up to three Holoecho markers, only one of them real. It can re-enter the state in the States Phase, or with a Long Skill, while out of enemy LoF.
Full rule: https://infinitythewiki.com/Holoecho_State</description>
    </rule>
    <rule id="2d40-ae4a-0121-dfdf" name="HoloMask State" publicationId="c98c-3c50-3d4f-04b5" hidden="false">
      <description>State
The trooper is shown as a different model of the same Silhouette, disguising what it really is while it plays with its own profile.
Full rule: https://infinitythewiki.com/HoloMask_State</description>
    </rule>
    <rule id="92d0-fd93-3458-e1a5" name="Immobilized-A State" publicationId="c98c-3c50-3d4f-04b5" hidden="false">
      <description>State
The trooper can't act or ARO except to Dodge at PH-6, though it still provides its Order. It can be cleared by the means the full rule lists.
Full rule: https://infinitythewiki.com/Immobilized-A_State</description>
    </rule>
    <rule id="7e54-dbab-8645-2573" name="Immobilized-B State" publicationId="c98c-3c50-3d4f-04b5" hidden="false">
      <description>State
The trooper can't act or ARO except to Reset at WIP-3, though it still provides its Order.
Full rule: https://infinitythewiki.com/Immobilized-B_State</description>
    </rule>
    <rule id="172e-2d11-3b10-551a" name="Impersonation State" publicationId="c98c-3c50-3d4f-04b5" hidden="false">
      <description>State · Marker
The trooper is disguised as an Impersonation marker. Enemies can't move into contact with it, and can't attack it at all while it's at IMP-1, until it's revealed.
Full rule: https://infinitythewiki.com/Impersonation_State</description>
    </rule>
    <rule id="5664-fa14-012c-9bd5" name="Isolated State" publicationId="c98c-3c50-3d4f-04b5" hidden="false">
      <description>State
The trooper is cut off from command: it can't receive Orders from the pool, becomes Irregular if it stays Isolated, and can't join a Fireteam.
Full rule: https://infinitythewiki.com/Isolated_State</description>
    </rule>
    <rule id="44c9-94d6-584b-59f9" name="Normal State" publicationId="c98c-3c50-3d4f-04b5" hidden="false">
      <description>State
The default state: the trooper provides its Order and counts for scoring. A trooper returns to it once every Null state is cleared.
Full rule: https://infinitythewiki.com/Normal_State</description>
    </rule>
    <rule id="9cb1-a85a-ead7-2b6f" name="Possessed State" publicationId="c98c-3c50-3d4f-04b5" hidden="false">
      <description>State · Null
The trooper has been taken over. Its owner can't activate it, it gives no Order, and it counts as an enemy to its own side and an ally to whoever possessed it.
Full rule: https://infinitythewiki.com/Possessed_State</description>
    </rule>
    <rule id="3fbf-031d-aab9-854f" name="Prone State" publicationId="c98c-3c50-3d4f-04b5" hidden="false">
      <description>State
The trooper is lying down. It can go prone or stand at the start or end of a movement skill (not Jump), which changes its Silhouette and how far it moves. Unconscious troopers go prone automatically, except TAGs, vehicles and riders.
Full rule: https://infinitythewiki.com/Prone_State</description>
    </rule>
    <rule id="1c34-51a1-7e47-c181" name="Retreat! State" publicationId="c98c-3c50-3d4f-04b5" hidden="false">
      <description>State
Once the army is in Retreat!, each surviving trooper can only use Basic Short Skills, Cautious Movement, Dodge or Reset, and drops out of any marker state.
Full rule: https://infinitythewiki.com/Retreat_State</description>
    </rule>
    <rule id="fb97-1ec4-e3a4-96a4" name="Sepsitorized State" publicationId="c98c-3c50-3d4f-04b5" hidden="false">
      <description>State · Null
The trooper's mind has been taken over: it leaves its Combat Group, can't receive Orders, and counts as an enemy to its own side.
Full rule: https://infinitythewiki.com/Sepsitorized_State</description>
    </rule>
    <rule id="8ffa-6d42-5f8c-5e77" name="Stunned State" publicationId="c98c-3c50-3d4f-04b5" hidden="false">
      <description>State
The trooper can't attack and takes -3 to every roll except saving rolls.
Full rule: https://infinitythewiki.com/Stunned_State</description>
    </rule>
    <rule id="d000-60a5-705a-f299" name="Suppressive Fire State" publicationId="c98c-3c50-3d4f-04b5" hidden="false">
      <description>State
The trooper covers an area with its weapon's SF Mode profile. Enemies within 24 inches take -3 in face-to-face rolls against it, and it can ARO with the full Burst 3 at a single target.
Full rule: https://infinitythewiki.com/Suppressive_Fire_State</description>
    </rule>
    <rule id="6715-ce0a-94c8-8d7c" name="Targeted State" publicationId="c98c-3c50-3d4f-04b5" hidden="false">
      <description>State
The trooper has been painted for strikes. Ranged attacks, Comms Attacks and Discover against it get +3, it takes -3 to Reset, and it loses Cautious Movement and Stealth.
Full rule: https://infinitythewiki.com/Targeted_State</description>
    </rule>
    <rule id="b6fd-9a4b-f299-d590" name="Unconscious State" publicationId="c98c-3c50-3d4f-04b5" hidden="false">
      <description>State · Null
The trooper has taken as many wounds as its VITA or STR. It can't act or ARO, gives no Order, its automatic skills stop working, it goes Prone, and it scores nothing until it's healed.
Full rule: https://infinitythewiki.com/Unconscious_State</description>
    </rule>
    <rule id="aab4-86e8-b833-f08a" name="Unloaded State" publicationId="c98c-3c50-3d4f-04b5" hidden="false">
      <description>State
The trooper has used up a Disposable item and can't use it again until it Reloads, or recovers in the States Phase, next to an ally with Baggage.
Full rule: https://infinitythewiki.com/Unloaded_State</description>
    </rule>
    <rule id="40e0-a1b9-eb7e-ac6e" name="Round Structure" publicationId="991d-8065-dcd4-a396" hidden="false">
      <description>Dogs of War
Three rounds. Each round runs Impetuous, Pilot (pilots and their TAG), Elite, Trooper, then Reinforcement. In each phase the player with initiative takes a full N5 Active Turn, then the other player does; only that phase's models spend Orders. The Lieutenant Order can be spent in any phase.
Full rule: https://github.com/OptimusPrimarch/DogsOfWar/blob/main/rules/core-rules.md#3-round-structure</description>
    </rule>
    <rule id="243e-b87f-aa0a-cc0d" name="Order Pool" publicationId="991d-8065-dcd4-a396" hidden="false">
      <description>Dogs of War
Pilots and Elites give Regular Orders to one pool, spent by whoever acts in the current phase. Troopers are Irregular and act on their own Orders in the Trooper phase. Track the pool with tokens: one per Regular model at the start of the round, discard one per Order spent, and at the start of each of your turns discard one per Regular model lost since your last turn.
Full rule: https://github.com/OptimusPrimarch/DogsOfWar/blob/main/rules/core-rules.md#4-orders</description>
    </rule>
    <rule id="4b1a-a6ff-0ec8-3dfd" name="Command Tokens" publicationId="991d-8065-dcd4-a396" hidden="false">
      <description>Dogs of War
The N5 starting pool, slightly enlarged (number to be set), never regained. Besides N5's uses they pay for drop pods, replacement TAGs, extra Elite slots and calldowns.
Full rule: https://github.com/OptimusPrimarch/DogsOfWar/blob/main/rules/core-rules.md#5-command</description>
    </rule>
    <rule id="b3ea-8b45-a666-1699" name="Reinforcements" publicationId="991d-8065-dcd4-a396" hidden="false">
      <description>Dogs of War
Arrivals come in the Reinforcement phase, by the first method possible: a drop pod (1 Command Token) anywhere on the table, Deployment (Tactical), or your deployment zone. Elite reserves are chosen before the game; Trooper reserves are unlimited. The 10-infantry cap is the only limit.
Full rule: https://github.com/OptimusPrimarch/DogsOfWar/blob/main/rules/core-rules.md#6-reinforcements-and-calldowns</description>
    </rule>
    <rule id="c1d9-fa17-1341-02f7" name="Deployment (Tactical)" publicationId="991d-8065-dcd4-a396" hidden="false">
      <description>Dogs of War
Every reinforcing model has this skill. Place the model within the Zone of Control of an allied model and outside the LoF of every enemy.
Full rule: https://github.com/OptimusPrimarch/DogsOfWar/blob/main/rules/core-rules.md#6-reinforcements-and-calldowns</description>
    </rule>
    <rule id="854f-48f0-28b2-06b7" name="Replacement TAGs" publicationId="991d-8065-dcd4-a396" hidden="false">
      <description>Dogs of War
During the Pilot phase a pilot can call in a TAG from the stock lineup, the same for every company, paid with Command Tokens (roughly most of the pool). Lineup and prices to be written.
Full rule: https://github.com/OptimusPrimarch/DogsOfWar/blob/main/rules/core-rules.md#6-reinforcements-and-calldowns</description>
    </rule>
    <rule id="9be1-1acb-7ccf-06d3" name="Mount and Dismount (N4)" publicationId="991d-8065-dcd4-a396" hidden="false">
      <description>Dogs of War · N4 rule
N5 dropped this; Dogs of War brings back N4's version. A pilot gets into or out of a TAG as part of any skill with the Movement label, at no extra cost. A pilot can still get out of an Unconscious TAG, and can't get in or out of a Possessed one. An empty TAG can't spend Orders or AROs but can still be targeted. Game states carry across when the pilot gets in or out, except Unconscious and Possessed. While aboard, the pilot isn't on the table, so it can't be hacked or hit by E/M; and while its TAG is Unconscious, the pilot gives no Order and only the TAG counts for scoring. If a dismounted pilot dies, its TAG is removed as a casualty too. N4 let pilots board only their own TAG; Dogs of War adds Jockey and Unmanned TAGs.
Full rule: https://github.com/OptimusPrimarch/DogsOfWar/blob/main/rules/core-rules.md#mount-and-dismount-n4</description>
    </rule>
    <rule id="22e3-0707-4bd8-3acb" name="Jockey" publicationId="991d-8065-dcd4-a396" hidden="false">
      <description>Dogs of War
Pilots only. A pilot that ends any movement in base contact with an enemy TAG makes a face-to-face WIP roll against it. Results to be written.
Full rule: https://github.com/OptimusPrimarch/DogsOfWar/blob/main/rules/core-rules.md#7-pilots-and-tags</description>
    </rule>
    <rule id="104b-90c4-6e9d-1575" name="Unmanned TAGs" publicationId="991d-8065-dcd4-a396" hidden="false">
      <description>Dogs of War
A pilot can climb into an enemy TAG whose pilot has dismounted, and take it over.
Full rule: https://github.com/OptimusPrimarch/DogsOfWar/blob/main/rules/core-rules.md#7-pilots-and-tags</description>
    </rule>
    <rule id="a13e-0cf9-2fdb-667c" name="Eject" publicationId="991d-8065-dcd4-a396" hidden="false">
      <description>Dogs of War
A TAG ejects its pilot through N5's Transmutation (Escape System). The profile the TAG turns into is the company's pilot.
Full rule: https://github.com/OptimusPrimarch/DogsOfWar/blob/main/rules/core-rules.md#7-pilots-and-tags</description>
    </rule>
  </sharedRules>
  <sharedProfiles>
    <profile id="ae4d-afba-b05a-7236" name="Tactical Bow" publicationId="c98c-3c50-3d4f-04b5" hidden="false" typeId="823d-0831-7e58-14c1" typeName="Ranged Weapon">
      <characteristics>
        <characteristic name="8&quot;" typeId="7046-e56f-ef50-74c9">+3</characteristic>
        <characteristic name="16&quot;" typeId="2ada-ee84-15b1-16de">0</characteristic>
        <characteristic name="24&quot;" typeId="a76a-eeaf-1570-194a">-6</characteristic>
        <characteristic name="32&quot;" typeId="e949-94f9-a0ae-7cfb">-</characteristic>
        <characteristic name="40&quot;" typeId="f7a4-faba-99f6-29fb">-</characteristic>
        <characteristic name="48&quot;" typeId="91e4-92a2-a53d-3d19">-</characteristic>
        <characteristic name="96&quot;" typeId="6afb-0457-2e94-f18a">-</characteristic>
        <characteristic name="PS" typeId="76b7-f614-c586-ebbc">8</characteristic>
        <characteristic name="B" typeId="84de-037e-e867-4da8">1</characteristic>
        <characteristic name="Ammo" typeId="d983-a03e-e480-712a">DA</characteristic>
        <characteristic name="Save Attr." typeId="2f8f-e4af-90c5-d10c">ARM</characteristic>
        <characteristic name="Save Rolls" typeId="efdb-3922-b270-2241">2</characteristic>
        <characteristic name="Traits" typeId="766c-53d8-3f54-618d">Anti-materiel, Silent (-6)</characteristic>
      </characteristics>
    </profile>
    <profile id="7b4f-6540-f6a3-f347" name="Viral Tactical Bow" publicationId="c98c-3c50-3d4f-04b5" hidden="false" typeId="823d-0831-7e58-14c1" typeName="Ranged Weapon">
      <characteristics>
        <characteristic name="8&quot;" typeId="7046-e56f-ef50-74c9">+3</characteristic>
        <characteristic name="16&quot;" typeId="2ada-ee84-15b1-16de">0</characteristic>
        <characteristic name="24&quot;" typeId="a76a-eeaf-1570-194a">-6</characteristic>
        <characteristic name="32&quot;" typeId="e949-94f9-a0ae-7cfb">-</characteristic>
        <characteristic name="40&quot;" typeId="f7a4-faba-99f6-29fb">-</characteristic>
        <characteristic name="48&quot;" typeId="91e4-92a2-a53d-3d19">-</characteristic>
        <characteristic name="96&quot;" typeId="6afb-0457-2e94-f18a">-</characteristic>
        <characteristic name="PS" typeId="76b7-f614-c586-ebbc">8</characteristic>
        <characteristic name="B" typeId="84de-037e-e867-4da8">1</characteristic>
        <characteristic name="Ammo" typeId="d983-a03e-e480-712a">N</characteristic>
        <characteristic name="Save Attr." typeId="2f8f-e4af-90c5-d10c">BTS</characteristic>
        <characteristic name="Save Rolls" typeId="efdb-3922-b270-2241">1</characteristic>
        <characteristic name="Traits" typeId="766c-53d8-3f54-618d">BioWeapon (DA+Shock), Silent (-6)</characteristic>
      </characteristics>
    </profile>
    <profile id="c1e0-fe7b-305e-f72f" name="E/M Carbine" publicationId="c98c-3c50-3d4f-04b5" hidden="false" typeId="823d-0831-7e58-14c1" typeName="Ranged Weapon">
      <characteristics>
        <characteristic name="8&quot;" typeId="7046-e56f-ef50-74c9">+3</characteristic>
        <characteristic name="16&quot;" typeId="2ada-ee84-15b1-16de">+3</characteristic>
        <characteristic name="24&quot;" typeId="a76a-eeaf-1570-194a">-3</characteristic>
        <characteristic name="32&quot;" typeId="e949-94f9-a0ae-7cfb">-3</characteristic>
        <characteristic name="40&quot;" typeId="f7a4-faba-99f6-29fb">-6</characteristic>
        <characteristic name="48&quot;" typeId="91e4-92a2-a53d-3d19">-</characteristic>
        <characteristic name="96&quot;" typeId="6afb-0457-2e94-f18a">-</characteristic>
        <characteristic name="PS" typeId="76b7-f614-c586-ebbc">7</characteristic>
        <characteristic name="B" typeId="84de-037e-e867-4da8">2</characteristic>
        <characteristic name="Ammo" typeId="d983-a03e-e480-712a">E/M</characteristic>
        <characteristic name="Save Attr." typeId="2f8f-e4af-90c5-d10c">BTS/2</characteristic>
        <characteristic name="Save Rolls" typeId="efdb-3922-b270-2241">2</characteristic>
        <characteristic name="Traits" typeId="766c-53d8-3f54-618d">Non-Lethal</characteristic>
      </characteristics>
    </profile>
    <profile id="17a1-55c1-7ef6-c105" name="Plasma Carbine (Blast Mode)" publicationId="c98c-3c50-3d4f-04b5" hidden="false" typeId="823d-0831-7e58-14c1" typeName="Ranged Weapon">
      <characteristics>
        <characteristic name="8&quot;" typeId="7046-e56f-ef50-74c9">+3</characteristic>
        <characteristic name="16&quot;" typeId="2ada-ee84-15b1-16de">+3</characteristic>
        <characteristic name="24&quot;" typeId="a76a-eeaf-1570-194a">-3</characteristic>
        <characteristic name="32&quot;" typeId="e949-94f9-a0ae-7cfb">-3</characteristic>
        <characteristic name="40&quot;" typeId="f7a4-faba-99f6-29fb">-6</characteristic>
        <characteristic name="48&quot;" typeId="91e4-92a2-a53d-3d19">-</characteristic>
        <characteristic name="96&quot;" typeId="6afb-0457-2e94-f18a">-</characteristic>
        <characteristic name="PS" typeId="76b7-f614-c586-ebbc">7</characteristic>
        <characteristic name="B" typeId="84de-037e-e867-4da8">2</characteristic>
        <characteristic name="Ammo" typeId="d983-a03e-e480-712a">N</characteristic>
        <characteristic name="Save Attr." typeId="2f8f-e4af-90c5-d10c">ARM and BTS</characteristic>
        <characteristic name="Save Rolls" typeId="efdb-3922-b270-2241">1 and 1</characteristic>
        <characteristic name="Traits" typeId="766c-53d8-3f54-618d">Impact Template (Circular)</characteristic>
      </characteristics>
    </profile>
    <profile id="37cd-060d-7c52-7779" name="Plasma Carbine (Hit Mode)" publicationId="c98c-3c50-3d4f-04b5" hidden="false" typeId="823d-0831-7e58-14c1" typeName="Ranged Weapon">
      <characteristics>
        <characteristic name="8&quot;" typeId="7046-e56f-ef50-74c9">+3</characteristic>
        <characteristic name="16&quot;" typeId="2ada-ee84-15b1-16de">+3</characteristic>
        <characteristic name="24&quot;" typeId="a76a-eeaf-1570-194a">-3</characteristic>
        <characteristic name="32&quot;" typeId="e949-94f9-a0ae-7cfb">-3</characteristic>
        <characteristic name="40&quot;" typeId="f7a4-faba-99f6-29fb">-6</characteristic>
        <characteristic name="48&quot;" typeId="91e4-92a2-a53d-3d19">-</characteristic>
        <characteristic name="96&quot;" typeId="6afb-0457-2e94-f18a">-</characteristic>
        <characteristic name="PS" typeId="76b7-f614-c586-ebbc">6</characteristic>
        <characteristic name="B" typeId="84de-037e-e867-4da8">2</characteristic>
        <characteristic name="Ammo" typeId="d983-a03e-e480-712a">N</characteristic>
        <characteristic name="Save Attr." typeId="2f8f-e4af-90c5-d10c">ARM and BTS</characteristic>
        <characteristic name="Save Rolls" typeId="efdb-3922-b270-2241">1 and 1</characteristic>
        <characteristic name="Traits" typeId="766c-53d8-3f54-618d">-</characteristic>
      </characteristics>
    </profile>
    <profile id="90ae-0bbf-2d91-d8e2" name="AP CC Weapon" publicationId="c98c-3c50-3d4f-04b5" hidden="false" typeId="354b-86b7-6889-2cfb" typeName="CC Weapon">
      <characteristics>
        <characteristic name="PS" typeId="8a39-81db-8fb4-7a5d">8</characteristic>
        <characteristic name="B" typeId="72d4-548e-6490-4171">1</characteristic>
        <characteristic name="Ammo" typeId="2915-1d89-9c05-198e">AP</characteristic>
        <characteristic name="Save Attr." typeId="ab0c-f7a7-8c87-f00d">ARM/2</characteristic>
        <characteristic name="Save Rolls" typeId="e492-5807-b9f5-be97">1</characteristic>
        <characteristic name="Traits" typeId="337b-7a28-801d-7808">CC</characteristic>
      </characteristics>
    </profile>
    <profile id="2cc9-bb7e-8ba3-8713" name="AP+DA CC Weapon" publicationId="c98c-3c50-3d4f-04b5" hidden="false" typeId="354b-86b7-6889-2cfb" typeName="CC Weapon">
      <characteristics>
        <characteristic name="PS" typeId="8a39-81db-8fb4-7a5d">8</characteristic>
        <characteristic name="B" typeId="72d4-548e-6490-4171">1</characteristic>
        <characteristic name="Ammo" typeId="2915-1d89-9c05-198e">AP+DA</characteristic>
        <characteristic name="Save Attr." typeId="ab0c-f7a7-8c87-f00d">ARM/2</characteristic>
        <characteristic name="Save Rolls" typeId="e492-5807-b9f5-be97">2</characteristic>
        <characteristic name="Traits" typeId="337b-7a28-801d-7808">Anti-materiel, CC</characteristic>
      </characteristics>
    </profile>
    <profile id="d97b-91f6-c5a5-6027" name="AP+EXP CC Weapon" publicationId="c98c-3c50-3d4f-04b5" hidden="false" typeId="354b-86b7-6889-2cfb" typeName="CC Weapon">
      <characteristics>
        <characteristic name="PS" typeId="8a39-81db-8fb4-7a5d">8</characteristic>
        <characteristic name="B" typeId="72d4-548e-6490-4171">1</characteristic>
        <characteristic name="Ammo" typeId="2915-1d89-9c05-198e">AP+EXP</characteristic>
        <characteristic name="Save Attr." typeId="ab0c-f7a7-8c87-f00d">ARM/2</characteristic>
        <characteristic name="Save Rolls" typeId="e492-5807-b9f5-be97">3</characteristic>
        <characteristic name="Traits" typeId="337b-7a28-801d-7808">Anti-materiel, CC</characteristic>
      </characteristics>
    </profile>
    <profile id="c67e-2e2a-2f12-1542" name="AP+Shock CC Weapon" publicationId="c98c-3c50-3d4f-04b5" hidden="false" typeId="354b-86b7-6889-2cfb" typeName="CC Weapon">
      <characteristics>
        <characteristic name="PS" typeId="8a39-81db-8fb4-7a5d">8</characteristic>
        <characteristic name="B" typeId="72d4-548e-6490-4171">1</characteristic>
        <characteristic name="Ammo" typeId="2915-1d89-9c05-198e">AP+SHOCK</characteristic>
        <characteristic name="Save Attr." typeId="ab0c-f7a7-8c87-f00d">ARM/2</characteristic>
        <characteristic name="Save Rolls" typeId="e492-5807-b9f5-be97">1</characteristic>
        <characteristic name="Traits" typeId="337b-7a28-801d-7808">CC</characteristic>
      </characteristics>
    </profile>
    <profile id="6559-e2de-b9a6-0a34" name="AP+T2 CC Weapon" publicationId="c98c-3c50-3d4f-04b5" hidden="false" typeId="354b-86b7-6889-2cfb" typeName="CC Weapon">
      <characteristics>
        <characteristic name="PS" typeId="8a39-81db-8fb4-7a5d">8</characteristic>
        <characteristic name="B" typeId="72d4-548e-6490-4171">1</characteristic>
        <characteristic name="Ammo" typeId="2915-1d89-9c05-198e">AP+T2</characteristic>
        <characteristic name="Save Attr." typeId="ab0c-f7a7-8c87-f00d">ARM/2</characteristic>
        <characteristic name="Save Rolls" typeId="e492-5807-b9f5-be97">1</characteristic>
        <characteristic name="Traits" typeId="337b-7a28-801d-7808">Anti-materiel, CC</characteristic>
      </characteristics>
    </profile>
    <profile id="5a72-f250-090b-8603" name="CC Weapon" publicationId="c98c-3c50-3d4f-04b5" hidden="false" typeId="354b-86b7-6889-2cfb" typeName="CC Weapon">
      <characteristics>
        <characteristic name="PS" typeId="8a39-81db-8fb4-7a5d">8</characteristic>
        <characteristic name="B" typeId="72d4-548e-6490-4171">1</characteristic>
        <characteristic name="Ammo" typeId="2915-1d89-9c05-198e">N</characteristic>
        <characteristic name="Save Attr." typeId="ab0c-f7a7-8c87-f00d">ARM</characteristic>
        <characteristic name="Save Rolls" typeId="e492-5807-b9f5-be97">1</characteristic>
        <characteristic name="Traits" typeId="337b-7a28-801d-7808">CC</characteristic>
      </characteristics>
    </profile>
    <profile id="5eb7-9f0c-4fa1-a4b1" name="DA CC Weapon" publicationId="c98c-3c50-3d4f-04b5" hidden="false" typeId="354b-86b7-6889-2cfb" typeName="CC Weapon">
      <characteristics>
        <characteristic name="PS" typeId="8a39-81db-8fb4-7a5d">8</characteristic>
        <characteristic name="B" typeId="72d4-548e-6490-4171">1</characteristic>
        <characteristic name="Ammo" typeId="2915-1d89-9c05-198e">DA</characteristic>
        <characteristic name="Save Attr." typeId="ab0c-f7a7-8c87-f00d">ARM</characteristic>
        <characteristic name="Save Rolls" typeId="e492-5807-b9f5-be97">2</characteristic>
        <characteristic name="Traits" typeId="337b-7a28-801d-7808">Anti-materiel, CC</characteristic>
      </characteristics>
    </profile>
    <profile id="99df-aeee-d111-4e5a" name="E/M CC Weapon" publicationId="c98c-3c50-3d4f-04b5" hidden="false" typeId="354b-86b7-6889-2cfb" typeName="CC Weapon">
      <characteristics>
        <characteristic name="PS" typeId="8a39-81db-8fb4-7a5d">8</characteristic>
        <characteristic name="B" typeId="72d4-548e-6490-4171">1</characteristic>
        <characteristic name="Ammo" typeId="2915-1d89-9c05-198e">N+E/M</characteristic>
        <characteristic name="Save Attr." typeId="ab0c-f7a7-8c87-f00d">BTS/2</characteristic>
        <characteristic name="Save Rolls" typeId="e492-5807-b9f5-be97">2</characteristic>
        <characteristic name="Traits" typeId="337b-7a28-801d-7808">CC</characteristic>
      </characteristics>
    </profile>
    <profile id="9b0b-9b31-c6df-2a3f" name="EXP CC Weapon" publicationId="c98c-3c50-3d4f-04b5" hidden="false" typeId="354b-86b7-6889-2cfb" typeName="CC Weapon">
      <characteristics>
        <characteristic name="PS" typeId="8a39-81db-8fb4-7a5d">8</characteristic>
        <characteristic name="B" typeId="72d4-548e-6490-4171">1</characteristic>
        <characteristic name="Ammo" typeId="2915-1d89-9c05-198e">EXP</characteristic>
        <characteristic name="Save Attr." typeId="ab0c-f7a7-8c87-f00d">ARM</characteristic>
        <characteristic name="Save Rolls" typeId="e492-5807-b9f5-be97">3</characteristic>
        <characteristic name="Traits" typeId="337b-7a28-801d-7808">Anti-materiel, CC</characteristic>
      </characteristics>
    </profile>
    <profile id="5d61-e2aa-7291-3855" name="Monofilament CC Weapon" publicationId="c98c-3c50-3d4f-04b5" hidden="false" typeId="354b-86b7-6889-2cfb" typeName="CC Weapon">
      <characteristics>
        <characteristic name="PS" typeId="8a39-81db-8fb4-7a5d">8</characteristic>
        <characteristic name="B" typeId="72d4-548e-6490-4171">1</characteristic>
        <characteristic name="Ammo" typeId="2915-1d89-9c05-198e">N</characteristic>
        <characteristic name="Save Attr." typeId="ab0c-f7a7-8c87-f00d">ARM=0</characteristic>
        <characteristic name="Save Rolls" typeId="e492-5807-b9f5-be97">1</characteristic>
        <characteristic name="Traits" typeId="337b-7a28-801d-7808">CC, State: Dead</characteristic>
      </characteristics>
    </profile>
    <profile id="9346-cb70-99d2-a7f9" name="PARA CC Weapon" publicationId="c98c-3c50-3d4f-04b5" hidden="false" typeId="354b-86b7-6889-2cfb" typeName="CC Weapon">
      <characteristics>
        <characteristic name="PS" typeId="8a39-81db-8fb4-7a5d">-</characteristic>
        <characteristic name="B" typeId="72d4-548e-6490-4171">1</characteristic>
        <characteristic name="Ammo" typeId="2915-1d89-9c05-198e">PARA</characteristic>
        <characteristic name="Save Attr." typeId="ab0c-f7a7-8c87-f00d">PH-6</characteristic>
        <characteristic name="Save Rolls" typeId="e492-5807-b9f5-be97">1</characteristic>
        <characteristic name="Traits" typeId="337b-7a28-801d-7808">CC, State: Immobilized-A, Non-Lethal</characteristic>
      </characteristics>
    </profile>
    <profile id="700d-8b0e-7aa9-6bb5" name="Shock CC Weapon" publicationId="c98c-3c50-3d4f-04b5" hidden="false" typeId="354b-86b7-6889-2cfb" typeName="CC Weapon">
      <characteristics>
        <characteristic name="PS" typeId="8a39-81db-8fb4-7a5d">8</characteristic>
        <characteristic name="B" typeId="72d4-548e-6490-4171">1</characteristic>
        <characteristic name="Ammo" typeId="2915-1d89-9c05-198e">SHOCK</characteristic>
        <characteristic name="Save Attr." typeId="ab0c-f7a7-8c87-f00d">ARM</characteristic>
        <characteristic name="Save Rolls" typeId="e492-5807-b9f5-be97">1</characteristic>
        <characteristic name="Traits" typeId="337b-7a28-801d-7808">CC</characteristic>
      </characteristics>
    </profile>
    <profile id="287e-3cc2-d884-fdc3" name="T2 CC Weapon" publicationId="c98c-3c50-3d4f-04b5" hidden="false" typeId="354b-86b7-6889-2cfb" typeName="CC Weapon">
      <characteristics>
        <characteristic name="PS" typeId="8a39-81db-8fb4-7a5d">8</characteristic>
        <characteristic name="B" typeId="72d4-548e-6490-4171">1</characteristic>
        <characteristic name="Ammo" typeId="2915-1d89-9c05-198e">T2</characteristic>
        <characteristic name="Save Attr." typeId="ab0c-f7a7-8c87-f00d">ARM</characteristic>
        <characteristic name="Save Rolls" typeId="e492-5807-b9f5-be97">1</characteristic>
        <characteristic name="Traits" typeId="337b-7a28-801d-7808">Anti-materiel, CC</characteristic>
      </characteristics>
    </profile>
    <profile id="bffa-b232-2470-76a9" name="Trench-Hammer (BS Mode)" publicationId="c98c-3c50-3d4f-04b5" hidden="false" typeId="823d-0831-7e58-14c1" typeName="Ranged Weapon">
      <characteristics>
        <characteristic name="8&quot;" typeId="7046-e56f-ef50-74c9">0</characteristic>
        <characteristic name="16&quot;" typeId="2ada-ee84-15b1-16de">-</characteristic>
        <characteristic name="24&quot;" typeId="a76a-eeaf-1570-194a">-</characteristic>
        <characteristic name="32&quot;" typeId="e949-94f9-a0ae-7cfb">-</characteristic>
        <characteristic name="40&quot;" typeId="f7a4-faba-99f6-29fb">-</characteristic>
        <characteristic name="48&quot;" typeId="91e4-92a2-a53d-3d19">-</characteristic>
        <characteristic name="96&quot;" typeId="6afb-0457-2e94-f18a">-</characteristic>
        <characteristic name="PS" typeId="76b7-f614-c586-ebbc">6</characteristic>
        <characteristic name="B" typeId="84de-037e-e867-4da8">1</characteristic>
        <characteristic name="Ammo" typeId="d983-a03e-e480-712a">DA</characteristic>
        <characteristic name="Save Attr." typeId="2f8f-e4af-90c5-d10c">ARM</characteristic>
        <characteristic name="Save Rolls" typeId="efdb-3922-b270-2241">2</characteristic>
        <characteristic name="Traits" typeId="766c-53d8-3f54-618d">Anti-materiel, BS Weapon (PH)</characteristic>
      </characteristics>
    </profile>
    <profile id="f7c3-7e7f-64b7-43cf" name="Trench-Hammer (CC Mode)" publicationId="c98c-3c50-3d4f-04b5" hidden="false" typeId="354b-86b7-6889-2cfb" typeName="CC Weapon">
      <characteristics>
        <characteristic name="PS" typeId="8a39-81db-8fb4-7a5d">6</characteristic>
        <characteristic name="B" typeId="72d4-548e-6490-4171">1</characteristic>
        <characteristic name="Ammo" typeId="2915-1d89-9c05-198e">DA</characteristic>
        <characteristic name="Save Attr." typeId="ab0c-f7a7-8c87-f00d">ARM</characteristic>
        <characteristic name="Save Rolls" typeId="e492-5807-b9f5-be97">2</characteristic>
        <characteristic name="Traits" typeId="337b-7a28-801d-7808">Anti-materiel, CC</characteristic>
      </characteristics>
    </profile>
    <profile id="53a1-e17e-684d-ba7a" name="Viral CC Weapon" publicationId="c98c-3c50-3d4f-04b5" hidden="false" typeId="354b-86b7-6889-2cfb" typeName="CC Weapon">
      <characteristics>
        <characteristic name="PS" typeId="8a39-81db-8fb4-7a5d">8</characteristic>
        <characteristic name="B" typeId="72d4-548e-6490-4171">1</characteristic>
        <characteristic name="Ammo" typeId="2915-1d89-9c05-198e">N</characteristic>
        <characteristic name="Save Attr." typeId="ab0c-f7a7-8c87-f00d">BTS</characteristic>
        <characteristic name="Save Rolls" typeId="e492-5807-b9f5-be97">1</characteristic>
        <characteristic name="Traits" typeId="337b-7a28-801d-7808">BioWeapon (DA+Shock), CC</characteristic>
      </characteristics>
    </profile>
    <profile id="a7ca-a764-92e7-7a46" name="Vorpal CC Weapon (BS Mode)" publicationId="c98c-3c50-3d4f-04b5" hidden="false" typeId="823d-0831-7e58-14c1" typeName="Ranged Weapon">
      <characteristics>
        <characteristic name="8&quot;" typeId="7046-e56f-ef50-74c9">+3</characteristic>
        <characteristic name="16&quot;" typeId="2ada-ee84-15b1-16de">-</characteristic>
        <characteristic name="24&quot;" typeId="a76a-eeaf-1570-194a">-</characteristic>
        <characteristic name="32&quot;" typeId="e949-94f9-a0ae-7cfb">-</characteristic>
        <characteristic name="40&quot;" typeId="f7a4-faba-99f6-29fb">-</characteristic>
        <characteristic name="48&quot;" typeId="91e4-92a2-a53d-3d19">-</characteristic>
        <characteristic name="96&quot;" typeId="6afb-0457-2e94-f18a">-</characteristic>
        <characteristic name="PS" typeId="76b7-f614-c586-ebbc">8</characteristic>
        <characteristic name="B" typeId="84de-037e-e867-4da8">1</characteristic>
        <characteristic name="Ammo" typeId="d983-a03e-e480-712a">N</characteristic>
        <characteristic name="Save Attr." typeId="2f8f-e4af-90c5-d10c">ARM=0</characteristic>
        <characteristic name="Save Rolls" typeId="efdb-3922-b270-2241">1</characteristic>
        <characteristic name="Traits" typeId="766c-53d8-3f54-618d">BS Weapon (PH), State: Dead</characteristic>
      </characteristics>
    </profile>
    <profile id="37a0-1d21-2e91-b7dc" name="Vorpal CC Weapon (CC Mode)" publicationId="c98c-3c50-3d4f-04b5" hidden="false" typeId="354b-86b7-6889-2cfb" typeName="CC Weapon">
      <characteristics>
        <characteristic name="PS" typeId="8a39-81db-8fb4-7a5d">8</characteristic>
        <characteristic name="B" typeId="72d4-548e-6490-4171">1</characteristic>
        <characteristic name="Ammo" typeId="2915-1d89-9c05-198e">N</characteristic>
        <characteristic name="Save Attr." typeId="ab0c-f7a7-8c87-f00d">ARM=0</characteristic>
        <characteristic name="Save Rolls" typeId="e492-5807-b9f5-be97">1</characteristic>
        <characteristic name="Traits" typeId="337b-7a28-801d-7808">CC, State: Dead</characteristic>
      </characteristics>
    </profile>
    <profile id="48c5-57e1-5fd1-38e6" name="Akrylat-Kanone" publicationId="c98c-3c50-3d4f-04b5" hidden="false" typeId="823d-0831-7e58-14c1" typeName="Ranged Weapon">
      <characteristics>
        <characteristic name="8&quot;" typeId="7046-e56f-ef50-74c9">-3</characteristic>
        <characteristic name="16&quot;" typeId="2ada-ee84-15b1-16de">0</characteristic>
        <characteristic name="24&quot;" typeId="a76a-eeaf-1570-194a">+3</characteristic>
        <characteristic name="32&quot;" typeId="e949-94f9-a0ae-7cfb">+3</characteristic>
        <characteristic name="40&quot;" typeId="f7a4-faba-99f6-29fb">-3</characteristic>
        <characteristic name="48&quot;" typeId="91e4-92a2-a53d-3d19">-3</characteristic>
        <characteristic name="96&quot;" typeId="6afb-0457-2e94-f18a">-</characteristic>
        <characteristic name="PS" typeId="76b7-f614-c586-ebbc">-</characteristic>
        <characteristic name="B" typeId="84de-037e-e867-4da8">1</characteristic>
        <characteristic name="Ammo" typeId="d983-a03e-e480-712a">PARA</characteristic>
        <characteristic name="Save Attr." typeId="2f8f-e4af-90c5-d10c">PH-6</characteristic>
        <characteristic name="Save Rolls" typeId="efdb-3922-b270-2241">1</characteristic>
        <characteristic name="Traits" typeId="766c-53d8-3f54-618d">Disposable (2), State: Immobilized-A, Non-Lethal</characteristic>
      </characteristics>
    </profile>
    <profile id="b1fa-86c7-4d3d-99ff" name="Blitzen" publicationId="c98c-3c50-3d4f-04b5" hidden="false" typeId="823d-0831-7e58-14c1" typeName="Ranged Weapon">
      <characteristics>
        <characteristic name="8&quot;" typeId="7046-e56f-ef50-74c9">-3</characteristic>
        <characteristic name="16&quot;" typeId="2ada-ee84-15b1-16de">0</characteristic>
        <characteristic name="24&quot;" typeId="a76a-eeaf-1570-194a">+3</characteristic>
        <characteristic name="32&quot;" typeId="e949-94f9-a0ae-7cfb">+3</characteristic>
        <characteristic name="40&quot;" typeId="f7a4-faba-99f6-29fb">-3</characteristic>
        <characteristic name="48&quot;" typeId="91e4-92a2-a53d-3d19">-3</characteristic>
        <characteristic name="96&quot;" typeId="6afb-0457-2e94-f18a">-</characteristic>
        <characteristic name="PS" typeId="76b7-f614-c586-ebbc">6</characteristic>
        <characteristic name="B" typeId="84de-037e-e867-4da8">1</characteristic>
        <characteristic name="Ammo" typeId="d983-a03e-e480-712a">E/M</characteristic>
        <characteristic name="Save Attr." typeId="2f8f-e4af-90c5-d10c">BTS/2</characteristic>
        <characteristic name="Save Rolls" typeId="efdb-3922-b270-2241">2</characteristic>
        <characteristic name="Traits" typeId="766c-53d8-3f54-618d">Disposable (2), Non-Lethal</characteristic>
      </characteristics>
    </profile>
    <profile id="2469-da08-2a5c-34d9" name="Flammenspeer (Blast Mode)" publicationId="c98c-3c50-3d4f-04b5" hidden="false" typeId="823d-0831-7e58-14c1" typeName="Ranged Weapon">
      <characteristics>
        <characteristic name="8&quot;" typeId="7046-e56f-ef50-74c9">-3</characteristic>
        <characteristic name="16&quot;" typeId="2ada-ee84-15b1-16de">0</characteristic>
        <characteristic name="24&quot;" typeId="a76a-eeaf-1570-194a">+3</characteristic>
        <characteristic name="32&quot;" typeId="e949-94f9-a0ae-7cfb">+3</characteristic>
        <characteristic name="40&quot;" typeId="f7a4-faba-99f6-29fb">-3</characteristic>
        <characteristic name="48&quot;" typeId="91e4-92a2-a53d-3d19">-3</characteristic>
        <characteristic name="96&quot;" typeId="6afb-0457-2e94-f18a">-</characteristic>
        <characteristic name="PS" typeId="76b7-f614-c586-ebbc">6</characteristic>
        <characteristic name="B" typeId="84de-037e-e867-4da8">1</characteristic>
        <characteristic name="Ammo" typeId="d983-a03e-e480-712a">N</characteristic>
        <characteristic name="Save Attr." typeId="2f8f-e4af-90c5-d10c">ARM</characteristic>
        <characteristic name="Save Rolls" typeId="efdb-3922-b270-2241">1</characteristic>
        <characteristic name="Traits" typeId="766c-53d8-3f54-618d">Continuous Damage, Disposable (2), Impact Template (Circular)</characteristic>
      </characteristics>
    </profile>
    <profile id="c44d-c707-463e-65ae" name="Flammenspeer (Hit Mode)" publicationId="c98c-3c50-3d4f-04b5" hidden="false" typeId="823d-0831-7e58-14c1" typeName="Ranged Weapon">
      <characteristics>
        <characteristic name="8&quot;" typeId="7046-e56f-ef50-74c9">-3</characteristic>
        <characteristic name="16&quot;" typeId="2ada-ee84-15b1-16de">0</characteristic>
        <characteristic name="24&quot;" typeId="a76a-eeaf-1570-194a">+3</characteristic>
        <characteristic name="32&quot;" typeId="e949-94f9-a0ae-7cfb">+3</characteristic>
        <characteristic name="40&quot;" typeId="f7a4-faba-99f6-29fb">-3</characteristic>
        <characteristic name="48&quot;" typeId="91e4-92a2-a53d-3d19">-3</characteristic>
        <characteristic name="96&quot;" typeId="6afb-0457-2e94-f18a">-</characteristic>
        <characteristic name="PS" typeId="76b7-f614-c586-ebbc">6</characteristic>
        <characteristic name="B" typeId="84de-037e-e867-4da8">1</characteristic>
        <characteristic name="Ammo" typeId="d983-a03e-e480-712a">AP</characteristic>
        <characteristic name="Save Attr." typeId="2f8f-e4af-90c5-d10c">ARM/2</characteristic>
        <characteristic name="Save Rolls" typeId="efdb-3922-b270-2241">1</characteristic>
        <characteristic name="Traits" typeId="766c-53d8-3f54-618d">Continuous Damage, Disposable (2)</characteristic>
      </characteristics>
    </profile>
    <profile id="3996-c9e2-a9bd-8b1a" name="Panzerfaust" publicationId="c98c-3c50-3d4f-04b5" hidden="false" typeId="823d-0831-7e58-14c1" typeName="Ranged Weapon">
      <characteristics>
        <characteristic name="8&quot;" typeId="7046-e56f-ef50-74c9">-3</characteristic>
        <characteristic name="16&quot;" typeId="2ada-ee84-15b1-16de">0</characteristic>
        <characteristic name="24&quot;" typeId="a76a-eeaf-1570-194a">+3</characteristic>
        <characteristic name="32&quot;" typeId="e949-94f9-a0ae-7cfb">+3</characteristic>
        <characteristic name="40&quot;" typeId="f7a4-faba-99f6-29fb">-3</characteristic>
        <characteristic name="48&quot;" typeId="91e4-92a2-a53d-3d19">-3</characteristic>
        <characteristic name="96&quot;" typeId="6afb-0457-2e94-f18a">-</characteristic>
        <characteristic name="PS" typeId="76b7-f614-c586-ebbc">6</characteristic>
        <characteristic name="B" typeId="84de-037e-e867-4da8">1</characteristic>
        <characteristic name="Ammo" typeId="d983-a03e-e480-712a">AP+EXP</characteristic>
        <characteristic name="Save Attr." typeId="2f8f-e4af-90c5-d10c">ARM/2</characteristic>
        <characteristic name="Save Rolls" typeId="efdb-3922-b270-2241">3</characteristic>
        <characteristic name="Traits" typeId="766c-53d8-3f54-618d">Anti-materiel, Disposable (2)</characteristic>
      </characteristics>
    </profile>
    <profile id="750b-a173-a42a-e72c" name="Heavy Flamethrower" publicationId="c98c-3c50-3d4f-04b5" hidden="false" typeId="823d-0831-7e58-14c1" typeName="Ranged Weapon">
      <characteristics>
        <characteristic name="8&quot;" typeId="7046-e56f-ef50-74c9">Large Teardrop</characteristic>
        <characteristic name="16&quot;" typeId="2ada-ee84-15b1-16de">-</characteristic>
        <characteristic name="24&quot;" typeId="a76a-eeaf-1570-194a">-</characteristic>
        <characteristic name="32&quot;" typeId="e949-94f9-a0ae-7cfb">-</characteristic>
        <characteristic name="40&quot;" typeId="f7a4-faba-99f6-29fb">-</characteristic>
        <characteristic name="48&quot;" typeId="91e4-92a2-a53d-3d19">-</characteristic>
        <characteristic name="96&quot;" typeId="6afb-0457-2e94-f18a">-</characteristic>
        <characteristic name="PS" typeId="76b7-f614-c586-ebbc">6</characteristic>
        <characteristic name="B" typeId="84de-037e-e867-4da8">1</characteristic>
        <characteristic name="Ammo" typeId="d983-a03e-e480-712a">N</characteristic>
        <characteristic name="Save Attr." typeId="2f8f-e4af-90c5-d10c">ARM</characteristic>
        <characteristic name="Save Rolls" typeId="efdb-3922-b270-2241">1</characteristic>
        <characteristic name="Traits" typeId="766c-53d8-3f54-618d">Intuitive Attack, Continuous Damage, Direct Template (Large Teardrop)</characteristic>
      </characteristics>
    </profile>
    <profile id="1b8f-69f7-6d26-dbe9" name="Light Flamethrower" publicationId="c98c-3c50-3d4f-04b5" hidden="false" typeId="823d-0831-7e58-14c1" typeName="Ranged Weapon">
      <characteristics>
        <characteristic name="8&quot;" typeId="7046-e56f-ef50-74c9">Small Teardrop</characteristic>
        <characteristic name="16&quot;" typeId="2ada-ee84-15b1-16de">-</characteristic>
        <characteristic name="24&quot;" typeId="a76a-eeaf-1570-194a">-</characteristic>
        <characteristic name="32&quot;" typeId="e949-94f9-a0ae-7cfb">-</characteristic>
        <characteristic name="40&quot;" typeId="f7a4-faba-99f6-29fb">-</characteristic>
        <characteristic name="48&quot;" typeId="91e4-92a2-a53d-3d19">-</characteristic>
        <characteristic name="96&quot;" typeId="6afb-0457-2e94-f18a">-</characteristic>
        <characteristic name="PS" typeId="76b7-f614-c586-ebbc">7</characteristic>
        <characteristic name="B" typeId="84de-037e-e867-4da8">1</characteristic>
        <characteristic name="Ammo" typeId="d983-a03e-e480-712a">N</characteristic>
        <characteristic name="Save Attr." typeId="2f8f-e4af-90c5-d10c">ARM</characteristic>
        <characteristic name="Save Rolls" typeId="efdb-3922-b270-2241">1</characteristic>
        <characteristic name="Traits" typeId="766c-53d8-3f54-618d">Intuitive Attack, Continuous Damage, Direct Template (Small Teardrop)</characteristic>
      </characteristics>
    </profile>
    <profile id="da14-407a-7165-4562" name="Eclipse Grenades" publicationId="c98c-3c50-3d4f-04b5" hidden="false" typeId="823d-0831-7e58-14c1" typeName="Ranged Weapon">
      <characteristics>
        <characteristic name="8&quot;" typeId="7046-e56f-ef50-74c9">0</characteristic>
        <characteristic name="16&quot;" typeId="2ada-ee84-15b1-16de">-3</characteristic>
        <characteristic name="24&quot;" typeId="a76a-eeaf-1570-194a">-</characteristic>
        <characteristic name="32&quot;" typeId="e949-94f9-a0ae-7cfb">-</characteristic>
        <characteristic name="40&quot;" typeId="f7a4-faba-99f6-29fb">-</characteristic>
        <characteristic name="48&quot;" typeId="91e4-92a2-a53d-3d19">-</characteristic>
        <characteristic name="96&quot;" typeId="6afb-0457-2e94-f18a">-</characteristic>
        <characteristic name="PS" typeId="76b7-f614-c586-ebbc">-</characteristic>
        <characteristic name="B" typeId="84de-037e-e867-4da8">1</characteristic>
        <characteristic name="Ammo" typeId="d983-a03e-e480-712a">ECLIPSE</characteristic>
        <characteristic name="Save Attr." typeId="2f8f-e4af-90c5-d10c">-</characteristic>
        <characteristic name="Save Rolls" typeId="efdb-3922-b270-2241">-</characteristic>
        <characteristic name="Traits" typeId="766c-53d8-3f54-618d">Speculative Attack, BS Weapon (PH), Impact Template (Circular), Non-Lethal, Reflective, Targetless</characteristic>
      </characteristics>
    </profile>
    <profile id="2e27-c99d-b43a-b73c" name="E/M Grenades" publicationId="c98c-3c50-3d4f-04b5" hidden="false" typeId="823d-0831-7e58-14c1" typeName="Ranged Weapon">
      <characteristics>
        <characteristic name="8&quot;" typeId="7046-e56f-ef50-74c9">+3</characteristic>
        <characteristic name="16&quot;" typeId="2ada-ee84-15b1-16de">-3</characteristic>
        <characteristic name="24&quot;" typeId="a76a-eeaf-1570-194a">-</characteristic>
        <characteristic name="32&quot;" typeId="e949-94f9-a0ae-7cfb">-</characteristic>
        <characteristic name="40&quot;" typeId="f7a4-faba-99f6-29fb">-</characteristic>
        <characteristic name="48&quot;" typeId="91e4-92a2-a53d-3d19">-</characteristic>
        <characteristic name="96&quot;" typeId="6afb-0457-2e94-f18a">-</characteristic>
        <characteristic name="PS" typeId="76b7-f614-c586-ebbc">7</characteristic>
        <characteristic name="B" typeId="84de-037e-e867-4da8">1</characteristic>
        <characteristic name="Ammo" typeId="d983-a03e-e480-712a">E/M</characteristic>
        <characteristic name="Save Attr." typeId="2f8f-e4af-90c5-d10c">BTS/2</characteristic>
        <characteristic name="Save Rolls" typeId="efdb-3922-b270-2241">2</characteristic>
        <characteristic name="Traits" typeId="766c-53d8-3f54-618d">Speculative Attack, BS Weapon (PH), Impact Template (Circular), Non-Lethal</characteristic>
      </characteristics>
    </profile>
    <profile id="c641-4fa9-59e7-846b" name="Grenades" publicationId="c98c-3c50-3d4f-04b5" hidden="false" typeId="823d-0831-7e58-14c1" typeName="Ranged Weapon">
      <characteristics>
        <characteristic name="8&quot;" typeId="7046-e56f-ef50-74c9">+3</characteristic>
        <characteristic name="16&quot;" typeId="2ada-ee84-15b1-16de">-3</characteristic>
        <characteristic name="24&quot;" typeId="a76a-eeaf-1570-194a">-</characteristic>
        <characteristic name="32&quot;" typeId="e949-94f9-a0ae-7cfb">-</characteristic>
        <characteristic name="40&quot;" typeId="f7a4-faba-99f6-29fb">-</characteristic>
        <characteristic name="48&quot;" typeId="91e4-92a2-a53d-3d19">-</characteristic>
        <characteristic name="96&quot;" typeId="6afb-0457-2e94-f18a">-</characteristic>
        <characteristic name="PS" typeId="76b7-f614-c586-ebbc">7</characteristic>
        <characteristic name="B" typeId="84de-037e-e867-4da8">1</characteristic>
        <characteristic name="Ammo" typeId="d983-a03e-e480-712a">N</characteristic>
        <characteristic name="Save Attr." typeId="2f8f-e4af-90c5-d10c">ARM</characteristic>
        <characteristic name="Save Rolls" typeId="efdb-3922-b270-2241">1</characteristic>
        <characteristic name="Traits" typeId="766c-53d8-3f54-618d">Speculative Attack, BS Weapon (PH), Impact Template (Circular)</characteristic>
      </characteristics>
    </profile>
    <profile id="a978-a0bc-be17-13b5" name="Smoke Grenades" publicationId="c98c-3c50-3d4f-04b5" hidden="false" typeId="823d-0831-7e58-14c1" typeName="Ranged Weapon">
      <characteristics>
        <characteristic name="8&quot;" typeId="7046-e56f-ef50-74c9">0</characteristic>
        <characteristic name="16&quot;" typeId="2ada-ee84-15b1-16de">-3</characteristic>
        <characteristic name="24&quot;" typeId="a76a-eeaf-1570-194a">-</characteristic>
        <characteristic name="32&quot;" typeId="e949-94f9-a0ae-7cfb">-</characteristic>
        <characteristic name="40&quot;" typeId="f7a4-faba-99f6-29fb">-</characteristic>
        <characteristic name="48&quot;" typeId="91e4-92a2-a53d-3d19">-</characteristic>
        <characteristic name="96&quot;" typeId="6afb-0457-2e94-f18a">-</characteristic>
        <characteristic name="PS" typeId="76b7-f614-c586-ebbc">-</characteristic>
        <characteristic name="B" typeId="84de-037e-e867-4da8">1</characteristic>
        <characteristic name="Ammo" typeId="d983-a03e-e480-712a">SMOKE</characteristic>
        <characteristic name="Save Attr." typeId="2f8f-e4af-90c5-d10c">-</characteristic>
        <characteristic name="Save Rolls" typeId="efdb-3922-b270-2241">-</characteristic>
        <characteristic name="Traits" typeId="766c-53d8-3f54-618d">Speculative Attack, BS Weapon (PH), Impact Template (Circular), Non-Lethal, Targetless</characteristic>
      </characteristics>
    </profile>
    <profile id="235a-a3ee-c833-134c" name="Eclipse Grenade Launcher" publicationId="c98c-3c50-3d4f-04b5" hidden="false" typeId="823d-0831-7e58-14c1" typeName="Ranged Weapon">
      <characteristics>
        <characteristic name="8&quot;" typeId="7046-e56f-ef50-74c9">0</characteristic>
        <characteristic name="16&quot;" typeId="2ada-ee84-15b1-16de">0</characteristic>
        <characteristic name="24&quot;" typeId="a76a-eeaf-1570-194a">0</characteristic>
        <characteristic name="32&quot;" typeId="e949-94f9-a0ae-7cfb">-3</characteristic>
        <characteristic name="40&quot;" typeId="f7a4-faba-99f6-29fb">-6</characteristic>
        <characteristic name="48&quot;" typeId="91e4-92a2-a53d-3d19">-6</characteristic>
        <characteristic name="96&quot;" typeId="6afb-0457-2e94-f18a">-</characteristic>
        <characteristic name="PS" typeId="76b7-f614-c586-ebbc">-</characteristic>
        <characteristic name="B" typeId="84de-037e-e867-4da8">1</characteristic>
        <characteristic name="Ammo" typeId="d983-a03e-e480-712a">ECLIPSE</characteristic>
        <characteristic name="Save Attr." typeId="2f8f-e4af-90c5-d10c">-</characteristic>
        <characteristic name="Save Rolls" typeId="efdb-3922-b270-2241">-</characteristic>
        <characteristic name="Traits" typeId="766c-53d8-3f54-618d">Speculative Attack, Non-Lethal, Impact Template (Circular), Reflective, Targetless</characteristic>
      </characteristics>
    </profile>
    <profile id="1125-d96c-22e0-44c0" name="E/M Grenade Launcher" publicationId="c98c-3c50-3d4f-04b5" hidden="false" typeId="823d-0831-7e58-14c1" typeName="Ranged Weapon">
      <characteristics>
        <characteristic name="8&quot;" typeId="7046-e56f-ef50-74c9">0</characteristic>
        <characteristic name="16&quot;" typeId="2ada-ee84-15b1-16de">0</characteristic>
        <characteristic name="24&quot;" typeId="a76a-eeaf-1570-194a">0</characteristic>
        <characteristic name="32&quot;" typeId="e949-94f9-a0ae-7cfb">-3</characteristic>
        <characteristic name="40&quot;" typeId="f7a4-faba-99f6-29fb">-6</characteristic>
        <characteristic name="48&quot;" typeId="91e4-92a2-a53d-3d19">-6</characteristic>
        <characteristic name="96&quot;" typeId="6afb-0457-2e94-f18a">-</characteristic>
        <characteristic name="PS" typeId="76b7-f614-c586-ebbc">7</characteristic>
        <characteristic name="B" typeId="84de-037e-e867-4da8">1</characteristic>
        <characteristic name="Ammo" typeId="d983-a03e-e480-712a">E/M</characteristic>
        <characteristic name="Save Attr." typeId="2f8f-e4af-90c5-d10c">BTS/2</characteristic>
        <characteristic name="Save Rolls" typeId="efdb-3922-b270-2241">2</characteristic>
        <characteristic name="Traits" typeId="766c-53d8-3f54-618d">Speculative Attack, Non-Lethal, Impact Template (Circular)</characteristic>
      </characteristics>
    </profile>
    <profile id="dd79-f402-c653-fc6d" name="Grenade Launcher" publicationId="c98c-3c50-3d4f-04b5" hidden="false" typeId="823d-0831-7e58-14c1" typeName="Ranged Weapon">
      <characteristics>
        <characteristic name="8&quot;" typeId="7046-e56f-ef50-74c9">0</characteristic>
        <characteristic name="16&quot;" typeId="2ada-ee84-15b1-16de">0</characteristic>
        <characteristic name="24&quot;" typeId="a76a-eeaf-1570-194a">0</characteristic>
        <characteristic name="32&quot;" typeId="e949-94f9-a0ae-7cfb">-3</characteristic>
        <characteristic name="40&quot;" typeId="f7a4-faba-99f6-29fb">-6</characteristic>
        <characteristic name="48&quot;" typeId="91e4-92a2-a53d-3d19">-6</characteristic>
        <characteristic name="96&quot;" typeId="6afb-0457-2e94-f18a">-</characteristic>
        <characteristic name="PS" typeId="76b7-f614-c586-ebbc">7</characteristic>
        <characteristic name="B" typeId="84de-037e-e867-4da8">1</characteristic>
        <characteristic name="Ammo" typeId="d983-a03e-e480-712a">N</characteristic>
        <characteristic name="Save Attr." typeId="2f8f-e4af-90c5-d10c">ARM</characteristic>
        <characteristic name="Save Rolls" typeId="efdb-3922-b270-2241">1</characteristic>
        <characteristic name="Traits" typeId="766c-53d8-3f54-618d">Speculative Attack, Impact Template (Circular)</characteristic>
      </characteristics>
    </profile>
    <profile id="d52a-292b-b65a-f37b" name="Smoke Grenade Launcher" publicationId="c98c-3c50-3d4f-04b5" hidden="false" typeId="823d-0831-7e58-14c1" typeName="Ranged Weapon">
      <characteristics>
        <characteristic name="8&quot;" typeId="7046-e56f-ef50-74c9">0</characteristic>
        <characteristic name="16&quot;" typeId="2ada-ee84-15b1-16de">0</characteristic>
        <characteristic name="24&quot;" typeId="a76a-eeaf-1570-194a">0</characteristic>
        <characteristic name="32&quot;" typeId="e949-94f9-a0ae-7cfb">-3</characteristic>
        <characteristic name="40&quot;" typeId="f7a4-faba-99f6-29fb">-6</characteristic>
        <characteristic name="48&quot;" typeId="91e4-92a2-a53d-3d19">-6</characteristic>
        <characteristic name="96&quot;" typeId="6afb-0457-2e94-f18a">-</characteristic>
        <characteristic name="PS" typeId="76b7-f614-c586-ebbc">-</characteristic>
        <characteristic name="B" typeId="84de-037e-e867-4da8">1</characteristic>
        <characteristic name="Ammo" typeId="d983-a03e-e480-712a">SMOKE</characteristic>
        <characteristic name="Save Attr." typeId="2f8f-e4af-90c5-d10c">-</characteristic>
        <characteristic name="Save Rolls" typeId="efdb-3922-b270-2241">-</characteristic>
        <characteristic name="Traits" typeId="766c-53d8-3f54-618d">Speculative Attack, Non-Lethal, Impact Template (Circular), Targetless</characteristic>
      </characteristics>
    </profile>
    <profile id="4e73-eef5-ee11-3b4c" name="AP Heavy Machine Gun" publicationId="c98c-3c50-3d4f-04b5" hidden="false" typeId="823d-0831-7e58-14c1" typeName="Ranged Weapon">
      <characteristics>
        <characteristic name="8&quot;" typeId="7046-e56f-ef50-74c9">-3</characteristic>
        <characteristic name="16&quot;" typeId="2ada-ee84-15b1-16de">0</characteristic>
        <characteristic name="24&quot;" typeId="a76a-eeaf-1570-194a">+3</characteristic>
        <characteristic name="32&quot;" typeId="e949-94f9-a0ae-7cfb">+3</characteristic>
        <characteristic name="40&quot;" typeId="f7a4-faba-99f6-29fb">-3</characteristic>
        <characteristic name="48&quot;" typeId="91e4-92a2-a53d-3d19">-3</characteristic>
        <characteristic name="96&quot;" typeId="6afb-0457-2e94-f18a">-</characteristic>
        <characteristic name="PS" typeId="76b7-f614-c586-ebbc">5</characteristic>
        <characteristic name="B" typeId="84de-037e-e867-4da8">4</characteristic>
        <characteristic name="Ammo" typeId="d983-a03e-e480-712a">AP</characteristic>
        <characteristic name="Save Attr." typeId="2f8f-e4af-90c5-d10c">ARM/2</characteristic>
        <characteristic name="Save Rolls" typeId="efdb-3922-b270-2241">1</characteristic>
        <characteristic name="Traits" typeId="766c-53d8-3f54-618d">Suppressive Fire</characteristic>
      </characteristics>
    </profile>
    <profile id="8412-d672-8525-7d7c" name="Heavy Machine Gun" publicationId="c98c-3c50-3d4f-04b5" hidden="false" typeId="823d-0831-7e58-14c1" typeName="Ranged Weapon">
      <characteristics>
        <characteristic name="8&quot;" typeId="7046-e56f-ef50-74c9">-3</characteristic>
        <characteristic name="16&quot;" typeId="2ada-ee84-15b1-16de">0</characteristic>
        <characteristic name="24&quot;" typeId="a76a-eeaf-1570-194a">+3</characteristic>
        <characteristic name="32&quot;" typeId="e949-94f9-a0ae-7cfb">+3</characteristic>
        <characteristic name="40&quot;" typeId="f7a4-faba-99f6-29fb">-3</characteristic>
        <characteristic name="48&quot;" typeId="91e4-92a2-a53d-3d19">-3</characteristic>
        <characteristic name="96&quot;" typeId="6afb-0457-2e94-f18a">-</characteristic>
        <characteristic name="PS" typeId="76b7-f614-c586-ebbc">5</characteristic>
        <characteristic name="B" typeId="84de-037e-e867-4da8">4</characteristic>
        <characteristic name="Ammo" typeId="d983-a03e-e480-712a">N</characteristic>
        <characteristic name="Save Attr." typeId="2f8f-e4af-90c5-d10c">ARM</characteristic>
        <characteristic name="Save Rolls" typeId="efdb-3922-b270-2241">1</characteristic>
        <characteristic name="Traits" typeId="766c-53d8-3f54-618d">Suppressive Fire</characteristic>
      </characteristics>
    </profile>
    <profile id="f6f6-ace9-3b38-1323" name="MULTI Heavy Machine Gun" publicationId="c98c-3c50-3d4f-04b5" hidden="false" typeId="823d-0831-7e58-14c1" typeName="Ranged Weapon">
      <characteristics>
        <characteristic name="8&quot;" typeId="7046-e56f-ef50-74c9">-3</characteristic>
        <characteristic name="16&quot;" typeId="2ada-ee84-15b1-16de">0</characteristic>
        <characteristic name="24&quot;" typeId="a76a-eeaf-1570-194a">+3</characteristic>
        <characteristic name="32&quot;" typeId="e949-94f9-a0ae-7cfb">+3</characteristic>
        <characteristic name="40&quot;" typeId="f7a4-faba-99f6-29fb">-3</characteristic>
        <characteristic name="48&quot;" typeId="91e4-92a2-a53d-3d19">-3</characteristic>
        <characteristic name="96&quot;" typeId="6afb-0457-2e94-f18a">-</characteristic>
        <characteristic name="PS" typeId="76b7-f614-c586-ebbc">5</characteristic>
        <characteristic name="B" typeId="84de-037e-e867-4da8">1 · 4 · 4</characteristic>
        <characteristic name="Ammo" typeId="d983-a03e-e480-712a">EXP · AP · SHOCK</characteristic>
        <characteristic name="Save Attr." typeId="2f8f-e4af-90c5-d10c">ARM · ARM/2 · ARM</characteristic>
        <characteristic name="Save Rolls" typeId="efdb-3922-b270-2241">3 · 1 · 1</characteristic>
        <characteristic name="Traits" typeId="766c-53d8-3f54-618d">Anti-materiel (EXP), Suppressive Fire (AP, SHOCK)</characteristic>
      </characteristics>
    </profile>
    <profile id="0bde-d960-9411-155c" name="AP Marksman Rifle" publicationId="c98c-3c50-3d4f-04b5" hidden="false" typeId="823d-0831-7e58-14c1" typeName="Ranged Weapon">
      <characteristics>
        <characteristic name="8&quot;" typeId="7046-e56f-ef50-74c9">-3</characteristic>
        <characteristic name="16&quot;" typeId="2ada-ee84-15b1-16de">+3</characteristic>
        <characteristic name="24&quot;" typeId="a76a-eeaf-1570-194a">+3</characteristic>
        <characteristic name="32&quot;" typeId="e949-94f9-a0ae-7cfb">-3</characteristic>
        <characteristic name="40&quot;" typeId="f7a4-faba-99f6-29fb">-3</characteristic>
        <characteristic name="48&quot;" typeId="91e4-92a2-a53d-3d19">-6</characteristic>
        <characteristic name="96&quot;" typeId="6afb-0457-2e94-f18a">-</characteristic>
        <characteristic name="PS" typeId="76b7-f614-c586-ebbc">7</characteristic>
        <characteristic name="B" typeId="84de-037e-e867-4da8">3</characteristic>
        <characteristic name="Ammo" typeId="d983-a03e-e480-712a">AP</characteristic>
        <characteristic name="Save Attr." typeId="2f8f-e4af-90c5-d10c">ARM/2</characteristic>
        <characteristic name="Save Rolls" typeId="efdb-3922-b270-2241">1</characteristic>
        <characteristic name="Traits" typeId="766c-53d8-3f54-618d">Suppressive Fire</characteristic>
      </characteristics>
    </profile>
    <profile id="8781-86f0-c36b-9197" name="Breaker Marksman Rifle" publicationId="c98c-3c50-3d4f-04b5" hidden="false" typeId="823d-0831-7e58-14c1" typeName="Ranged Weapon">
      <characteristics>
        <characteristic name="8&quot;" typeId="7046-e56f-ef50-74c9">-3</characteristic>
        <characteristic name="16&quot;" typeId="2ada-ee84-15b1-16de">+3</characteristic>
        <characteristic name="24&quot;" typeId="a76a-eeaf-1570-194a">+3</characteristic>
        <characteristic name="32&quot;" typeId="e949-94f9-a0ae-7cfb">-3</characteristic>
        <characteristic name="40&quot;" typeId="f7a4-faba-99f6-29fb">-3</characteristic>
        <characteristic name="48&quot;" typeId="91e4-92a2-a53d-3d19">-6</characteristic>
        <characteristic name="96&quot;" typeId="6afb-0457-2e94-f18a">-</characteristic>
        <characteristic name="PS" typeId="76b7-f614-c586-ebbc">7</characteristic>
        <characteristic name="B" typeId="84de-037e-e867-4da8">3</characteristic>
        <characteristic name="Ammo" typeId="d983-a03e-e480-712a">AP</characteristic>
        <characteristic name="Save Attr." typeId="2f8f-e4af-90c5-d10c">BTS/2</characteristic>
        <characteristic name="Save Rolls" typeId="efdb-3922-b270-2241">1</characteristic>
        <characteristic name="Traits" typeId="766c-53d8-3f54-618d">Suppressive Fire</characteristic>
      </characteristics>
    </profile>
    <profile id="4083-42a5-bd91-03dd" name="K1 Marksman Rifle" publicationId="c98c-3c50-3d4f-04b5" hidden="false" typeId="823d-0831-7e58-14c1" typeName="Ranged Weapon">
      <characteristics>
        <characteristic name="8&quot;" typeId="7046-e56f-ef50-74c9">-3</characteristic>
        <characteristic name="16&quot;" typeId="2ada-ee84-15b1-16de">+3</characteristic>
        <characteristic name="24&quot;" typeId="a76a-eeaf-1570-194a">+3</characteristic>
        <characteristic name="32&quot;" typeId="e949-94f9-a0ae-7cfb">-3</characteristic>
        <characteristic name="40&quot;" typeId="f7a4-faba-99f6-29fb">-3</characteristic>
        <characteristic name="48&quot;" typeId="91e4-92a2-a53d-3d19">-6</characteristic>
        <characteristic name="96&quot;" typeId="6afb-0457-2e94-f18a">-</characteristic>
        <characteristic name="PS" typeId="76b7-f614-c586-ebbc">7</characteristic>
        <characteristic name="B" typeId="84de-037e-e867-4da8">3</characteristic>
        <characteristic name="Ammo" typeId="d983-a03e-e480-712a">N</characteristic>
        <characteristic name="Save Attr." typeId="2f8f-e4af-90c5-d10c">ARM=0</characteristic>
        <characteristic name="Save Rolls" typeId="efdb-3922-b270-2241">1</characteristic>
        <characteristic name="Traits" typeId="766c-53d8-3f54-618d">Anti-materiel, Suppressive Fire</characteristic>
      </characteristics>
    </profile>
    <profile id="8cf7-1d3f-d176-c1ab" name="Marksman Rifle" publicationId="c98c-3c50-3d4f-04b5" hidden="false" typeId="823d-0831-7e58-14c1" typeName="Ranged Weapon">
      <characteristics>
        <characteristic name="8&quot;" typeId="7046-e56f-ef50-74c9">-3</characteristic>
        <characteristic name="16&quot;" typeId="2ada-ee84-15b1-16de">+3</characteristic>
        <characteristic name="24&quot;" typeId="a76a-eeaf-1570-194a">+3</characteristic>
        <characteristic name="32&quot;" typeId="e949-94f9-a0ae-7cfb">-3</characteristic>
        <characteristic name="40&quot;" typeId="f7a4-faba-99f6-29fb">-3</characteristic>
        <characteristic name="48&quot;" typeId="91e4-92a2-a53d-3d19">-6</characteristic>
        <characteristic name="96&quot;" typeId="6afb-0457-2e94-f18a">-</characteristic>
        <characteristic name="PS" typeId="76b7-f614-c586-ebbc">7</characteristic>
        <characteristic name="B" typeId="84de-037e-e867-4da8">3</characteristic>
        <characteristic name="Ammo" typeId="d983-a03e-e480-712a">N</characteristic>
        <characteristic name="Save Attr." typeId="2f8f-e4af-90c5-d10c">ARM</characteristic>
        <characteristic name="Save Rolls" typeId="efdb-3922-b270-2241">1</characteristic>
        <characteristic name="Traits" typeId="766c-53d8-3f54-618d">Suppressive Fire</characteristic>
      </characteristics>
    </profile>
    <profile id="fa7c-2e11-c7a5-b49a" name="MULTI Marksman Rifle" publicationId="c98c-3c50-3d4f-04b5" hidden="false" typeId="823d-0831-7e58-14c1" typeName="Ranged Weapon">
      <characteristics>
        <characteristic name="8&quot;" typeId="7046-e56f-ef50-74c9">-3</characteristic>
        <characteristic name="16&quot;" typeId="2ada-ee84-15b1-16de">+3</characteristic>
        <characteristic name="24&quot;" typeId="a76a-eeaf-1570-194a">+3</characteristic>
        <characteristic name="32&quot;" typeId="e949-94f9-a0ae-7cfb">-3</characteristic>
        <characteristic name="40&quot;" typeId="f7a4-faba-99f6-29fb">-3</characteristic>
        <characteristic name="48&quot;" typeId="91e4-92a2-a53d-3d19">-6</characteristic>
        <characteristic name="96&quot;" typeId="6afb-0457-2e94-f18a">-</characteristic>
        <characteristic name="PS" typeId="76b7-f614-c586-ebbc">7</characteristic>
        <characteristic name="B" typeId="84de-037e-e867-4da8">1 · 3 · 3</characteristic>
        <characteristic name="Ammo" typeId="d983-a03e-e480-712a">DA · AP · SHOCK</characteristic>
        <characteristic name="Save Attr." typeId="2f8f-e4af-90c5-d10c">ARM · ARM/2 · ARM</characteristic>
        <characteristic name="Save Rolls" typeId="efdb-3922-b270-2241">2 · 1 · 1</characteristic>
        <characteristic name="Traits" typeId="766c-53d8-3f54-618d">Anti-materiel (DA), Suppressive Fire (AP, SHOCK)</characteristic>
      </characteristics>
    </profile>
    <profile id="dad7-02f5-1b4a-c07f" name="Shock Marksman Rifle" publicationId="c98c-3c50-3d4f-04b5" hidden="false" typeId="823d-0831-7e58-14c1" typeName="Ranged Weapon">
      <characteristics>
        <characteristic name="8&quot;" typeId="7046-e56f-ef50-74c9">-3</characteristic>
        <characteristic name="16&quot;" typeId="2ada-ee84-15b1-16de">+3</characteristic>
        <characteristic name="24&quot;" typeId="a76a-eeaf-1570-194a">+3</characteristic>
        <characteristic name="32&quot;" typeId="e949-94f9-a0ae-7cfb">-3</characteristic>
        <characteristic name="40&quot;" typeId="f7a4-faba-99f6-29fb">-3</characteristic>
        <characteristic name="48&quot;" typeId="91e4-92a2-a53d-3d19">-6</characteristic>
        <characteristic name="96&quot;" typeId="6afb-0457-2e94-f18a">-</characteristic>
        <characteristic name="PS" typeId="76b7-f614-c586-ebbc">7</characteristic>
        <characteristic name="B" typeId="84de-037e-e867-4da8">3</characteristic>
        <characteristic name="Ammo" typeId="d983-a03e-e480-712a">SHOCK</characteristic>
        <characteristic name="Save Attr." typeId="2f8f-e4af-90c5-d10c">ARM</characteristic>
        <characteristic name="Save Rolls" typeId="efdb-3922-b270-2241">1</characteristic>
        <characteristic name="Traits" typeId="766c-53d8-3f54-618d">Suppressive Fire</characteristic>
      </characteristics>
    </profile>
    <profile id="f7c9-40ad-80a5-1011" name="T2 Marksman Rifle" publicationId="c98c-3c50-3d4f-04b5" hidden="false" typeId="823d-0831-7e58-14c1" typeName="Ranged Weapon">
      <characteristics>
        <characteristic name="8&quot;" typeId="7046-e56f-ef50-74c9">-3</characteristic>
        <characteristic name="16&quot;" typeId="2ada-ee84-15b1-16de">+3</characteristic>
        <characteristic name="24&quot;" typeId="a76a-eeaf-1570-194a">+3</characteristic>
        <characteristic name="32&quot;" typeId="e949-94f9-a0ae-7cfb">-3</characteristic>
        <characteristic name="40&quot;" typeId="f7a4-faba-99f6-29fb">-3</characteristic>
        <characteristic name="48&quot;" typeId="91e4-92a2-a53d-3d19">-6</characteristic>
        <characteristic name="96&quot;" typeId="6afb-0457-2e94-f18a">-</characteristic>
        <characteristic name="PS" typeId="76b7-f614-c586-ebbc">7</characteristic>
        <characteristic name="B" typeId="84de-037e-e867-4da8">3</characteristic>
        <characteristic name="Ammo" typeId="d983-a03e-e480-712a">T2</characteristic>
        <characteristic name="Save Attr." typeId="2f8f-e4af-90c5-d10c">ARM</characteristic>
        <characteristic name="Save Rolls" typeId="efdb-3922-b270-2241">1</characteristic>
        <characteristic name="Traits" typeId="766c-53d8-3f54-618d">Anti-materiel, Suppressive Fire</characteristic>
      </characteristics>
    </profile>
    <profile id="0938-8f16-0d2f-cd91" name="Viral Marksman Rifle" publicationId="c98c-3c50-3d4f-04b5" hidden="false" typeId="823d-0831-7e58-14c1" typeName="Ranged Weapon">
      <characteristics>
        <characteristic name="8&quot;" typeId="7046-e56f-ef50-74c9">-3</characteristic>
        <characteristic name="16&quot;" typeId="2ada-ee84-15b1-16de">+3</characteristic>
        <characteristic name="24&quot;" typeId="a76a-eeaf-1570-194a">+3</characteristic>
        <characteristic name="32&quot;" typeId="e949-94f9-a0ae-7cfb">-3</characteristic>
        <characteristic name="40&quot;" typeId="f7a4-faba-99f6-29fb">-3</characteristic>
        <characteristic name="48&quot;" typeId="91e4-92a2-a53d-3d19">-6</characteristic>
        <characteristic name="96&quot;" typeId="6afb-0457-2e94-f18a">-</characteristic>
        <characteristic name="PS" typeId="76b7-f614-c586-ebbc">7</characteristic>
        <characteristic name="B" typeId="84de-037e-e867-4da8">3</characteristic>
        <characteristic name="Ammo" typeId="d983-a03e-e480-712a">N</characteristic>
        <characteristic name="Save Attr." typeId="2f8f-e4af-90c5-d10c">BTS</characteristic>
        <characteristic name="Save Rolls" typeId="efdb-3922-b270-2241">1</characteristic>
        <characteristic name="Traits" typeId="766c-53d8-3f54-618d">BioWeapon (DA+Shock), Suppressive Fire</characteristic>
      </characteristics>
    </profile>
    <profile id="fa25-5e75-7d54-7a2e" name="AP Mines" publicationId="c98c-3c50-3d4f-04b5" hidden="false" typeId="823d-0831-7e58-14c1" typeName="Ranged Weapon">
      <characteristics>
        <characteristic name="8&quot;" typeId="7046-e56f-ef50-74c9">Small Teardrop</characteristic>
        <characteristic name="16&quot;" typeId="2ada-ee84-15b1-16de">-</characteristic>
        <characteristic name="24&quot;" typeId="a76a-eeaf-1570-194a">-</characteristic>
        <characteristic name="32&quot;" typeId="e949-94f9-a0ae-7cfb">-</characteristic>
        <characteristic name="40&quot;" typeId="f7a4-faba-99f6-29fb">-</characteristic>
        <characteristic name="48&quot;" typeId="91e4-92a2-a53d-3d19">-</characteristic>
        <characteristic name="96&quot;" typeId="6afb-0457-2e94-f18a">-</characteristic>
        <characteristic name="PS" typeId="76b7-f614-c586-ebbc">7</characteristic>
        <characteristic name="B" typeId="84de-037e-e867-4da8">1</characteristic>
        <characteristic name="Ammo" typeId="d983-a03e-e480-712a">AP</characteristic>
        <characteristic name="Save Attr." typeId="2f8f-e4af-90c5-d10c">ARM/2</characteristic>
        <characteristic name="Save Rolls" typeId="efdb-3922-b270-2241">1</characteristic>
        <characteristic name="Traits" typeId="766c-53d8-3f54-618d">Intuitive Attack, Concealed, Disposable (3), Direct Template (Small Teardrop), Deployable</characteristic>
      </characteristics>
    </profile>
    <profile id="5b86-3e50-f20f-08e0" name="Chest Mines (BS Mode)" publicationId="c98c-3c50-3d4f-04b5" hidden="false" typeId="823d-0831-7e58-14c1" typeName="Ranged Weapon">
      <characteristics>
        <characteristic name="8&quot;" typeId="7046-e56f-ef50-74c9">Small Teardrop</characteristic>
        <characteristic name="16&quot;" typeId="2ada-ee84-15b1-16de">-</characteristic>
        <characteristic name="24&quot;" typeId="a76a-eeaf-1570-194a">-</characteristic>
        <characteristic name="32&quot;" typeId="e949-94f9-a0ae-7cfb">-</characteristic>
        <characteristic name="40&quot;" typeId="f7a4-faba-99f6-29fb">-</characteristic>
        <characteristic name="48&quot;" typeId="91e4-92a2-a53d-3d19">-</characteristic>
        <characteristic name="96&quot;" typeId="6afb-0457-2e94-f18a">-</characteristic>
        <characteristic name="PS" typeId="76b7-f614-c586-ebbc">7</characteristic>
        <characteristic name="B" typeId="84de-037e-e867-4da8">1</characteristic>
        <characteristic name="Ammo" typeId="d983-a03e-e480-712a">SHOCK</characteristic>
        <characteristic name="Save Attr." typeId="2f8f-e4af-90c5-d10c">ARM</characteristic>
        <characteristic name="Save Rolls" typeId="efdb-3922-b270-2241">1</characteristic>
        <characteristic name="Traits" typeId="766c-53d8-3f54-618d">Intuitive Attack, Disposable (2), Double Shot, Direct Template (Small Teardrop)</characteristic>
      </characteristics>
    </profile>
    <profile id="340e-e1bf-6918-4c5d" name="Chest Mines (CC Mode)" publicationId="c98c-3c50-3d4f-04b5" hidden="false" typeId="823d-0831-7e58-14c1" typeName="Ranged Weapon">
      <characteristics>
        <characteristic name="8&quot;" typeId="7046-e56f-ef50-74c9">-</characteristic>
        <characteristic name="16&quot;" typeId="2ada-ee84-15b1-16de">-</characteristic>
        <characteristic name="24&quot;" typeId="a76a-eeaf-1570-194a">-</characteristic>
        <characteristic name="32&quot;" typeId="e949-94f9-a0ae-7cfb">-</characteristic>
        <characteristic name="40&quot;" typeId="f7a4-faba-99f6-29fb">-</characteristic>
        <characteristic name="48&quot;" typeId="91e4-92a2-a53d-3d19">-</characteristic>
        <characteristic name="96&quot;" typeId="6afb-0457-2e94-f18a">-</characteristic>
        <characteristic name="PS" typeId="76b7-f614-c586-ebbc">7</characteristic>
        <characteristic name="B" typeId="84de-037e-e867-4da8">1</characteristic>
        <characteristic name="Ammo" typeId="d983-a03e-e480-712a">SHOCK</characteristic>
        <characteristic name="Save Attr." typeId="2f8f-e4af-90c5-d10c">ARM</characteristic>
        <characteristic name="Save Rolls" typeId="efdb-3922-b270-2241">1</characteristic>
        <characteristic name="Traits" typeId="766c-53d8-3f54-618d">CC Attack (+3), Disposable (2)</characteristic>
      </characteristics>
    </profile>
    <profile id="bf48-9c6a-1c06-684b" name="Cybermines" publicationId="c98c-3c50-3d4f-04b5" hidden="false" typeId="823d-0831-7e58-14c1" typeName="Ranged Weapon">
      <characteristics>
        <characteristic name="8&quot;" typeId="7046-e56f-ef50-74c9">Small Teardrop</characteristic>
        <characteristic name="16&quot;" typeId="2ada-ee84-15b1-16de">-</characteristic>
        <characteristic name="24&quot;" typeId="a76a-eeaf-1570-194a">-</characteristic>
        <characteristic name="32&quot;" typeId="e949-94f9-a0ae-7cfb">-</characteristic>
        <characteristic name="40&quot;" typeId="f7a4-faba-99f6-29fb">-</characteristic>
        <characteristic name="48&quot;" typeId="91e4-92a2-a53d-3d19">-</characteristic>
        <characteristic name="96&quot;" typeId="6afb-0457-2e94-f18a">-</characteristic>
        <characteristic name="PS" typeId="76b7-f614-c586-ebbc">5</characteristic>
        <characteristic name="B" typeId="84de-037e-e867-4da8">1</characteristic>
        <characteristic name="Ammo" typeId="d983-a03e-e480-712a">-</characteristic>
        <characteristic name="Save Attr." typeId="2f8f-e4af-90c5-d10c">BTS</characteristic>
        <characteristic name="Save Rolls" typeId="efdb-3922-b270-2241">2</characteristic>
        <characteristic name="Traits" typeId="766c-53d8-3f54-618d">Comms Attack, Intuitive Attack, Concealed, Disposable (3), State: Stunned/Immobilized-B, Non-Lethal, Direct Template (Small Teardrop), Deployable</characteristic>
      </characteristics>
    </profile>
    <profile id="3337-bcce-e223-170e" name="Drop Bears (BS Mode)" publicationId="c98c-3c50-3d4f-04b5" hidden="false" typeId="823d-0831-7e58-14c1" typeName="Ranged Weapon">
      <characteristics>
        <characteristic name="8&quot;" typeId="7046-e56f-ef50-74c9">+3</characteristic>
        <characteristic name="16&quot;" typeId="2ada-ee84-15b1-16de">-3</characteristic>
        <characteristic name="24&quot;" typeId="a76a-eeaf-1570-194a">-</characteristic>
        <characteristic name="32&quot;" typeId="e949-94f9-a0ae-7cfb">-</characteristic>
        <characteristic name="40&quot;" typeId="f7a4-faba-99f6-29fb">-</characteristic>
        <characteristic name="48&quot;" typeId="91e4-92a2-a53d-3d19">-</characteristic>
        <characteristic name="96&quot;" typeId="6afb-0457-2e94-f18a">-</characteristic>
        <characteristic name="PS" typeId="76b7-f614-c586-ebbc">-</characteristic>
        <characteristic name="B" typeId="84de-037e-e867-4da8">1</characteristic>
        <characteristic name="Ammo" typeId="d983-a03e-e480-712a">-</characteristic>
        <characteristic name="Save Attr." typeId="2f8f-e4af-90c5-d10c">-</characteristic>
        <characteristic name="Save Rolls" typeId="efdb-3922-b270-2241">-</characteristic>
        <characteristic name="Traits" typeId="766c-53d8-3f54-618d">BS Weapon (PH), Speculative Attack, Disposable (3), Targetless</characteristic>
      </characteristics>
    </profile>
    <profile id="c0b4-89a8-c021-d548" name="Drop Bears (Deployable Mode)" publicationId="c98c-3c50-3d4f-04b5" hidden="false" typeId="823d-0831-7e58-14c1" typeName="Ranged Weapon">
      <characteristics>
        <characteristic name="8&quot;" typeId="7046-e56f-ef50-74c9">Small Teardrop</characteristic>
        <characteristic name="16&quot;" typeId="2ada-ee84-15b1-16de">-</characteristic>
        <characteristic name="24&quot;" typeId="a76a-eeaf-1570-194a">-</characteristic>
        <characteristic name="32&quot;" typeId="e949-94f9-a0ae-7cfb">-</characteristic>
        <characteristic name="40&quot;" typeId="f7a4-faba-99f6-29fb">-</characteristic>
        <characteristic name="48&quot;" typeId="91e4-92a2-a53d-3d19">-</characteristic>
        <characteristic name="96&quot;" typeId="6afb-0457-2e94-f18a">-</characteristic>
        <characteristic name="PS" typeId="76b7-f614-c586-ebbc">7</characteristic>
        <characteristic name="B" typeId="84de-037e-e867-4da8">1</characteristic>
        <characteristic name="Ammo" typeId="d983-a03e-e480-712a">SHOCK</characteristic>
        <characteristic name="Save Attr." typeId="2f8f-e4af-90c5-d10c">ARM</characteristic>
        <characteristic name="Save Rolls" typeId="efdb-3922-b270-2241">1</characteristic>
        <characteristic name="Traits" typeId="766c-53d8-3f54-618d">Intuitive Attack, Disposable (3), Direct Template (Small Teardrop), Deployable</characteristic>
      </characteristics>
    </profile>
    <profile id="f948-4dd0-e51f-fa35" name="E/M Mines" publicationId="c98c-3c50-3d4f-04b5" hidden="false" typeId="823d-0831-7e58-14c1" typeName="Ranged Weapon">
      <characteristics>
        <characteristic name="8&quot;" typeId="7046-e56f-ef50-74c9">Small Teardrop</characteristic>
        <characteristic name="16&quot;" typeId="2ada-ee84-15b1-16de">-</characteristic>
        <characteristic name="24&quot;" typeId="a76a-eeaf-1570-194a">-</characteristic>
        <characteristic name="32&quot;" typeId="e949-94f9-a0ae-7cfb">-</characteristic>
        <characteristic name="40&quot;" typeId="f7a4-faba-99f6-29fb">-</characteristic>
        <characteristic name="48&quot;" typeId="91e4-92a2-a53d-3d19">-</characteristic>
        <characteristic name="96&quot;" typeId="6afb-0457-2e94-f18a">-</characteristic>
        <characteristic name="PS" typeId="76b7-f614-c586-ebbc">7</characteristic>
        <characteristic name="B" typeId="84de-037e-e867-4da8">1</characteristic>
        <characteristic name="Ammo" typeId="d983-a03e-e480-712a">E/M</characteristic>
        <characteristic name="Save Attr." typeId="2f8f-e4af-90c5-d10c">BTS/2</characteristic>
        <characteristic name="Save Rolls" typeId="efdb-3922-b270-2241">2</characteristic>
        <characteristic name="Traits" typeId="766c-53d8-3f54-618d">Intuitive Attack, Concealed, Disposable (3), Direct Template (Small Teardrop), Non-Lethal, Deployable</characteristic>
      </characteristics>
    </profile>
    <profile id="1c3c-f9bd-8d3d-a34d" name="Mine Dispenser" publicationId="c98c-3c50-3d4f-04b5" hidden="false" typeId="823d-0831-7e58-14c1" typeName="Ranged Weapon">
      <characteristics>
        <characteristic name="8&quot;" typeId="7046-e56f-ef50-74c9">0</characteristic>
        <characteristic name="16&quot;" typeId="2ada-ee84-15b1-16de">+3</characteristic>
        <characteristic name="24&quot;" typeId="a76a-eeaf-1570-194a">-3</characteristic>
        <characteristic name="32&quot;" typeId="e949-94f9-a0ae-7cfb">-6</characteristic>
        <characteristic name="40&quot;" typeId="f7a4-faba-99f6-29fb">-6</characteristic>
        <characteristic name="48&quot;" typeId="91e4-92a2-a53d-3d19">-6</characteristic>
        <characteristic name="96&quot;" typeId="6afb-0457-2e94-f18a">-</characteristic>
        <characteristic name="PS" typeId="76b7-f614-c586-ebbc">-</characteristic>
        <characteristic name="B" typeId="84de-037e-e867-4da8">1</characteristic>
        <characteristic name="Ammo" typeId="d983-a03e-e480-712a">-</characteristic>
        <characteristic name="Save Attr." typeId="2f8f-e4af-90c5-d10c">-</characteristic>
        <characteristic name="Save Rolls" typeId="efdb-3922-b270-2241">-</characteristic>
        <characteristic name="Traits" typeId="766c-53d8-3f54-618d">Speculative Attack, Double Shot, Disposable (2), Targetless</characteristic>
      </characteristics>
    </profile>
    <profile id="2e26-3cae-b610-f257" name="Monofilament Mines" publicationId="c98c-3c50-3d4f-04b5" hidden="false" typeId="823d-0831-7e58-14c1" typeName="Ranged Weapon">
      <characteristics>
        <characteristic name="8&quot;" typeId="7046-e56f-ef50-74c9">Small Teardrop</characteristic>
        <characteristic name="16&quot;" typeId="2ada-ee84-15b1-16de">-</characteristic>
        <characteristic name="24&quot;" typeId="a76a-eeaf-1570-194a">-</characteristic>
        <characteristic name="32&quot;" typeId="e949-94f9-a0ae-7cfb">-</characteristic>
        <characteristic name="40&quot;" typeId="f7a4-faba-99f6-29fb">-</characteristic>
        <characteristic name="48&quot;" typeId="91e4-92a2-a53d-3d19">-</characteristic>
        <characteristic name="96&quot;" typeId="6afb-0457-2e94-f18a">-</characteristic>
        <characteristic name="PS" typeId="76b7-f614-c586-ebbc">8</characteristic>
        <characteristic name="B" typeId="84de-037e-e867-4da8">1</characteristic>
        <characteristic name="Ammo" typeId="d983-a03e-e480-712a">N</characteristic>
        <characteristic name="Save Attr." typeId="2f8f-e4af-90c5-d10c">ARM=0</characteristic>
        <characteristic name="Save Rolls" typeId="efdb-3922-b270-2241">1</characteristic>
        <characteristic name="Traits" typeId="766c-53d8-3f54-618d">Intuitive Attack, Concealed, Disposable (3), Direct Template (Small Teardrop), Deployable, State: Dead</characteristic>
      </characteristics>
    </profile>
    <profile id="1b77-db78-12ca-81ff" name="PARA Mines" publicationId="c98c-3c50-3d4f-04b5" hidden="false" typeId="823d-0831-7e58-14c1" typeName="Ranged Weapon">
      <characteristics>
        <characteristic name="8&quot;" typeId="7046-e56f-ef50-74c9">Small Teardrop</characteristic>
        <characteristic name="16&quot;" typeId="2ada-ee84-15b1-16de">-</characteristic>
        <characteristic name="24&quot;" typeId="a76a-eeaf-1570-194a">-</characteristic>
        <characteristic name="32&quot;" typeId="e949-94f9-a0ae-7cfb">-</characteristic>
        <characteristic name="40&quot;" typeId="f7a4-faba-99f6-29fb">-</characteristic>
        <characteristic name="48&quot;" typeId="91e4-92a2-a53d-3d19">-</characteristic>
        <characteristic name="96&quot;" typeId="6afb-0457-2e94-f18a">-</characteristic>
        <characteristic name="PS" typeId="76b7-f614-c586-ebbc">-</characteristic>
        <characteristic name="B" typeId="84de-037e-e867-4da8">1</characteristic>
        <characteristic name="Ammo" typeId="d983-a03e-e480-712a">PARA</characteristic>
        <characteristic name="Save Attr." typeId="2f8f-e4af-90c5-d10c">PH-6</characteristic>
        <characteristic name="Save Rolls" typeId="efdb-3922-b270-2241">1</characteristic>
        <characteristic name="Traits" typeId="766c-53d8-3f54-618d">Intuitive Attack, Concealed, Disposable (3), Direct Template (Small Teardrop), Non-Lethal, Deployable</characteristic>
      </characteristics>
    </profile>
    <profile id="2dc0-76e3-a949-58ef" name="Shock Mines" publicationId="c98c-3c50-3d4f-04b5" hidden="false" typeId="823d-0831-7e58-14c1" typeName="Ranged Weapon">
      <characteristics>
        <characteristic name="8&quot;" typeId="7046-e56f-ef50-74c9">Small Teardrop</characteristic>
        <characteristic name="16&quot;" typeId="2ada-ee84-15b1-16de">-</characteristic>
        <characteristic name="24&quot;" typeId="a76a-eeaf-1570-194a">-</characteristic>
        <characteristic name="32&quot;" typeId="e949-94f9-a0ae-7cfb">-</characteristic>
        <characteristic name="40&quot;" typeId="f7a4-faba-99f6-29fb">-</characteristic>
        <characteristic name="48&quot;" typeId="91e4-92a2-a53d-3d19">-</characteristic>
        <characteristic name="96&quot;" typeId="6afb-0457-2e94-f18a">-</characteristic>
        <characteristic name="PS" typeId="76b7-f614-c586-ebbc">7</characteristic>
        <characteristic name="B" typeId="84de-037e-e867-4da8">1</characteristic>
        <characteristic name="Ammo" typeId="d983-a03e-e480-712a">SHOCK</characteristic>
        <characteristic name="Save Attr." typeId="2f8f-e4af-90c5-d10c">ARM</characteristic>
        <characteristic name="Save Rolls" typeId="efdb-3922-b270-2241">1</characteristic>
        <characteristic name="Traits" typeId="766c-53d8-3f54-618d">Intuitive Attack, Concealed, Disposable (3), Direct Template (Small Teardrop), Deployable</characteristic>
      </characteristics>
    </profile>
    <profile id="6908-4686-2a74-f69e" name="Viral Mines" publicationId="c98c-3c50-3d4f-04b5" hidden="false" typeId="823d-0831-7e58-14c1" typeName="Ranged Weapon">
      <characteristics>
        <characteristic name="8&quot;" typeId="7046-e56f-ef50-74c9">Small Teardrop</characteristic>
        <characteristic name="16&quot;" typeId="2ada-ee84-15b1-16de">-</characteristic>
        <characteristic name="24&quot;" typeId="a76a-eeaf-1570-194a">-</characteristic>
        <characteristic name="32&quot;" typeId="e949-94f9-a0ae-7cfb">-</characteristic>
        <characteristic name="40&quot;" typeId="f7a4-faba-99f6-29fb">-</characteristic>
        <characteristic name="48&quot;" typeId="91e4-92a2-a53d-3d19">-</characteristic>
        <characteristic name="96&quot;" typeId="6afb-0457-2e94-f18a">-</characteristic>
        <characteristic name="PS" typeId="76b7-f614-c586-ebbc">7</characteristic>
        <characteristic name="B" typeId="84de-037e-e867-4da8">1</characteristic>
        <characteristic name="Ammo" typeId="d983-a03e-e480-712a">N</characteristic>
        <characteristic name="Save Attr." typeId="2f8f-e4af-90c5-d10c">BTS</characteristic>
        <characteristic name="Save Rolls" typeId="efdb-3922-b270-2241">1</characteristic>
        <characteristic name="Traits" typeId="766c-53d8-3f54-618d">Intuitive Attack, BioWeapon (DA+Shock), Concealed, Disposable (3), Direct Template (Small Teardrop), Deployable</characteristic>
      </characteristics>
    </profile>
    <profile id="06dd-ed46-c2f7-81c9" name="WildParrot" publicationId="c98c-3c50-3d4f-04b5" hidden="false" typeId="823d-0831-7e58-14c1" typeName="Ranged Weapon">
      <characteristics>
        <characteristic name="8&quot;" typeId="7046-e56f-ef50-74c9">Small Teardrop</characteristic>
        <characteristic name="16&quot;" typeId="2ada-ee84-15b1-16de">-</characteristic>
        <characteristic name="24&quot;" typeId="a76a-eeaf-1570-194a">-</characteristic>
        <characteristic name="32&quot;" typeId="e949-94f9-a0ae-7cfb">-</characteristic>
        <characteristic name="40&quot;" typeId="f7a4-faba-99f6-29fb">-</characteristic>
        <characteristic name="48&quot;" typeId="91e4-92a2-a53d-3d19">-</characteristic>
        <characteristic name="96&quot;" typeId="6afb-0457-2e94-f18a">-</characteristic>
        <characteristic name="PS" typeId="76b7-f614-c586-ebbc">7</characteristic>
        <characteristic name="B" typeId="84de-037e-e867-4da8">1</characteristic>
        <characteristic name="Ammo" typeId="d983-a03e-e480-712a">E/M</characteristic>
        <characteristic name="Save Attr." typeId="2f8f-e4af-90c5-d10c">BTS/2</characteristic>
        <characteristic name="Save Rolls" typeId="efdb-3922-b270-2241">2</characteristic>
        <characteristic name="Traits" typeId="766c-53d8-3f54-618d">Intuitive Attack, Disposable (1), Non-Lethal, Perimeter, Direct Template (Small Teardrop), Deployable</characteristic>
      </characteristics>
    </profile>
    <profile id="91ad-5255-a2ee-78c6" name="PT: Endgame" publicationId="c98c-3c50-3d4f-04b5" hidden="false" typeId="823d-0831-7e58-14c1" typeName="Ranged Weapon">
      <characteristics>
        <characteristic name="8&quot;" typeId="7046-e56f-ef50-74c9">-</characteristic>
        <characteristic name="16&quot;" typeId="2ada-ee84-15b1-16de">-</characteristic>
        <characteristic name="24&quot;" typeId="a76a-eeaf-1570-194a">-</characteristic>
        <characteristic name="32&quot;" typeId="e949-94f9-a0ae-7cfb">-</characteristic>
        <characteristic name="40&quot;" typeId="f7a4-faba-99f6-29fb">-</characteristic>
        <characteristic name="48&quot;" typeId="91e4-92a2-a53d-3d19">-</characteristic>
        <characteristic name="96&quot;" typeId="6afb-0457-2e94-f18a">-</characteristic>
        <characteristic name="PS" typeId="76b7-f614-c586-ebbc">7</characteristic>
        <characteristic name="B" typeId="84de-037e-e867-4da8">1</characteristic>
        <characteristic name="Ammo" typeId="d983-a03e-e480-712a">AP</characteristic>
        <characteristic name="Save Attr." typeId="2f8f-e4af-90c5-d10c">BTS/2</characteristic>
        <characteristic name="Save Rolls" typeId="efdb-3922-b270-2241">1</characteristic>
        <characteristic name="Traits" typeId="766c-53d8-3f54-618d">BS Weapon (WIP), Comms Attack, Disposable (2), Double Shot, Target (VITA), No LoF, Zone of Control</characteristic>
      </characteristics>
    </profile>
    <profile id="3601-9370-7e23-baef" name="PT: Eraser" publicationId="c98c-3c50-3d4f-04b5" hidden="false" typeId="823d-0831-7e58-14c1" typeName="Ranged Weapon">
      <characteristics>
        <characteristic name="8&quot;" typeId="7046-e56f-ef50-74c9">-</characteristic>
        <characteristic name="16&quot;" typeId="2ada-ee84-15b1-16de">-</characteristic>
        <characteristic name="24&quot;" typeId="a76a-eeaf-1570-194a">-</characteristic>
        <characteristic name="32&quot;" typeId="e949-94f9-a0ae-7cfb">-</characteristic>
        <characteristic name="40&quot;" typeId="f7a4-faba-99f6-29fb">-</characteristic>
        <characteristic name="48&quot;" typeId="91e4-92a2-a53d-3d19">-</characteristic>
        <characteristic name="96&quot;" typeId="6afb-0457-2e94-f18a">-</characteristic>
        <characteristic name="PS" typeId="76b7-f614-c586-ebbc">6</characteristic>
        <characteristic name="B" typeId="84de-037e-e867-4da8">2</characteristic>
        <characteristic name="Ammo" typeId="d983-a03e-e480-712a">DA</characteristic>
        <characteristic name="Save Attr." typeId="2f8f-e4af-90c5-d10c">BTS</characteristic>
        <characteristic name="Save Rolls" typeId="efdb-3922-b270-2241">2</characteristic>
        <characteristic name="Traits" typeId="766c-53d8-3f54-618d">BS Weapon (WIP), Comms Attack, Target (VITA), State: Isolated, Non-Lethal, No LoF, Zone of Control</characteristic>
      </characteristics>
    </profile>
    <profile id="af9e-2dbf-477c-47be" name="PT: Mirrorball" publicationId="c98c-3c50-3d4f-04b5" hidden="false" typeId="823d-0831-7e58-14c1" typeName="Ranged Weapon">
      <characteristics>
        <characteristic name="8&quot;" typeId="7046-e56f-ef50-74c9">-</characteristic>
        <characteristic name="16&quot;" typeId="2ada-ee84-15b1-16de">-</characteristic>
        <characteristic name="24&quot;" typeId="a76a-eeaf-1570-194a">-</characteristic>
        <characteristic name="32&quot;" typeId="e949-94f9-a0ae-7cfb">-</characteristic>
        <characteristic name="40&quot;" typeId="f7a4-faba-99f6-29fb">-</characteristic>
        <characteristic name="48&quot;" typeId="91e4-92a2-a53d-3d19">-</characteristic>
        <characteristic name="96&quot;" typeId="6afb-0457-2e94-f18a">-</characteristic>
        <characteristic name="PS" typeId="76b7-f614-c586-ebbc">-</characteristic>
        <characteristic name="B" typeId="84de-037e-e867-4da8">1</characteristic>
        <characteristic name="Ammo" typeId="d983-a03e-e480-712a">ECLIPSE</characteristic>
        <characteristic name="Save Attr." typeId="2f8f-e4af-90c5-d10c">-</characteristic>
        <characteristic name="Save Rolls" typeId="efdb-3922-b270-2241">-</characteristic>
        <characteristic name="Traits" typeId="766c-53d8-3f54-618d">BS Weapon (WIP), Comms Attack, Impact Template (Circular), Non-Lethal, Reflective, No LoF, Targetless, Zone of Control</characteristic>
      </characteristics>
    </profile>
    <profile id="74d8-82c1-1c6d-f8fb" name="AP Heavy Pistol" publicationId="c98c-3c50-3d4f-04b5" hidden="false" typeId="823d-0831-7e58-14c1" typeName="Ranged Weapon">
      <characteristics>
        <characteristic name="8&quot;" typeId="7046-e56f-ef50-74c9">+3</characteristic>
        <characteristic name="16&quot;" typeId="2ada-ee84-15b1-16de">0</characteristic>
        <characteristic name="24&quot;" typeId="a76a-eeaf-1570-194a">-6</characteristic>
        <characteristic name="32&quot;" typeId="e949-94f9-a0ae-7cfb">-</characteristic>
        <characteristic name="40&quot;" typeId="f7a4-faba-99f6-29fb">-</characteristic>
        <characteristic name="48&quot;" typeId="91e4-92a2-a53d-3d19">-</characteristic>
        <characteristic name="96&quot;" typeId="6afb-0457-2e94-f18a">-</characteristic>
        <characteristic name="PS" typeId="76b7-f614-c586-ebbc">6</characteristic>
        <characteristic name="B" typeId="84de-037e-e867-4da8">2</characteristic>
        <characteristic name="Ammo" typeId="d983-a03e-e480-712a">AP</characteristic>
        <characteristic name="Save Attr." typeId="2f8f-e4af-90c5-d10c">ARM/2</characteristic>
        <characteristic name="Save Rolls" typeId="efdb-3922-b270-2241">1</characteristic>
        <characteristic name="Traits" typeId="766c-53d8-3f54-618d">-</characteristic>
      </characteristics>
    </profile>
    <profile id="33ac-515d-7b86-33a5" name="Assault Pistol" publicationId="c98c-3c50-3d4f-04b5" hidden="false" typeId="823d-0831-7e58-14c1" typeName="Ranged Weapon">
      <characteristics>
        <characteristic name="8&quot;" typeId="7046-e56f-ef50-74c9">+3</characteristic>
        <characteristic name="16&quot;" typeId="2ada-ee84-15b1-16de">0</characteristic>
        <characteristic name="24&quot;" typeId="a76a-eeaf-1570-194a">-6</characteristic>
        <characteristic name="32&quot;" typeId="e949-94f9-a0ae-7cfb">-</characteristic>
        <characteristic name="40&quot;" typeId="f7a4-faba-99f6-29fb">-</characteristic>
        <characteristic name="48&quot;" typeId="91e4-92a2-a53d-3d19">-</characteristic>
        <characteristic name="96&quot;" typeId="6afb-0457-2e94-f18a">-</characteristic>
        <characteristic name="PS" typeId="76b7-f614-c586-ebbc">7</characteristic>
        <characteristic name="B" typeId="84de-037e-e867-4da8">4</characteristic>
        <characteristic name="Ammo" typeId="d983-a03e-e480-712a">N</characteristic>
        <characteristic name="Save Attr." typeId="2f8f-e4af-90c5-d10c">ARM</characteristic>
        <characteristic name="Save Rolls" typeId="efdb-3922-b270-2241">1</characteristic>
        <characteristic name="Traits" typeId="766c-53d8-3f54-618d">-</characteristic>
      </characteristics>
    </profile>
    <profile id="42a9-7358-ef37-5f11" name="Boarding Pistol (Blast Mode)" publicationId="c98c-3c50-3d4f-04b5" hidden="false" typeId="823d-0831-7e58-14c1" typeName="Ranged Weapon">
      <characteristics>
        <characteristic name="8&quot;" typeId="7046-e56f-ef50-74c9">Small Teardrop</characteristic>
        <characteristic name="16&quot;" typeId="2ada-ee84-15b1-16de">-</characteristic>
        <characteristic name="24&quot;" typeId="a76a-eeaf-1570-194a">-</characteristic>
        <characteristic name="32&quot;" typeId="e949-94f9-a0ae-7cfb">-</characteristic>
        <characteristic name="40&quot;" typeId="f7a4-faba-99f6-29fb">-</characteristic>
        <characteristic name="48&quot;" typeId="91e4-92a2-a53d-3d19">-</characteristic>
        <characteristic name="96&quot;" typeId="6afb-0457-2e94-f18a">-</characteristic>
        <characteristic name="PS" typeId="76b7-f614-c586-ebbc">7</characteristic>
        <characteristic name="B" typeId="84de-037e-e867-4da8">1</characteristic>
        <characteristic name="Ammo" typeId="d983-a03e-e480-712a">N</characteristic>
        <characteristic name="Save Attr." typeId="2f8f-e4af-90c5-d10c">ARM</characteristic>
        <characteristic name="Save Rolls" typeId="efdb-3922-b270-2241">1</characteristic>
        <characteristic name="Traits" typeId="766c-53d8-3f54-618d">Intuitive Attack, Direct Template (Small Teardrop)</characteristic>
      </characteristics>
    </profile>
    <profile id="eb72-952d-09d4-2dfd" name="Boarding Pistol (Hit Mode)" publicationId="c98c-3c50-3d4f-04b5" hidden="false" typeId="823d-0831-7e58-14c1" typeName="Ranged Weapon">
      <characteristics>
        <characteristic name="8&quot;" typeId="7046-e56f-ef50-74c9">+3</characteristic>
        <characteristic name="16&quot;" typeId="2ada-ee84-15b1-16de">0</characteristic>
        <characteristic name="24&quot;" typeId="a76a-eeaf-1570-194a">-6</characteristic>
        <characteristic name="32&quot;" typeId="e949-94f9-a0ae-7cfb">-</characteristic>
        <characteristic name="40&quot;" typeId="f7a4-faba-99f6-29fb">-</characteristic>
        <characteristic name="48&quot;" typeId="91e4-92a2-a53d-3d19">-</characteristic>
        <characteristic name="96&quot;" typeId="6afb-0457-2e94-f18a">-</characteristic>
        <characteristic name="PS" typeId="76b7-f614-c586-ebbc">7</characteristic>
        <characteristic name="B" typeId="84de-037e-e867-4da8">2</characteristic>
        <characteristic name="Ammo" typeId="d983-a03e-e480-712a">N</characteristic>
        <characteristic name="Save Attr." typeId="2f8f-e4af-90c5-d10c">ARM</characteristic>
        <characteristic name="Save Rolls" typeId="efdb-3922-b270-2241">1</characteristic>
        <characteristic name="Traits" typeId="766c-53d8-3f54-618d">-</characteristic>
      </characteristics>
    </profile>
    <profile id="b0e1-c531-27ec-f0a0" name="Breaker Pistol" publicationId="c98c-3c50-3d4f-04b5" hidden="false" typeId="823d-0831-7e58-14c1" typeName="Ranged Weapon">
      <characteristics>
        <characteristic name="8&quot;" typeId="7046-e56f-ef50-74c9">+3</characteristic>
        <characteristic name="16&quot;" typeId="2ada-ee84-15b1-16de">0</characteristic>
        <characteristic name="24&quot;" typeId="a76a-eeaf-1570-194a">-6</characteristic>
        <characteristic name="32&quot;" typeId="e949-94f9-a0ae-7cfb">-</characteristic>
        <characteristic name="40&quot;" typeId="f7a4-faba-99f6-29fb">-</characteristic>
        <characteristic name="48&quot;" typeId="91e4-92a2-a53d-3d19">-</characteristic>
        <characteristic name="96&quot;" typeId="6afb-0457-2e94-f18a">-</characteristic>
        <characteristic name="PS" typeId="76b7-f614-c586-ebbc">8</characteristic>
        <characteristic name="B" typeId="84de-037e-e867-4da8">2</characteristic>
        <characteristic name="Ammo" typeId="d983-a03e-e480-712a">AP</characteristic>
        <characteristic name="Save Attr." typeId="2f8f-e4af-90c5-d10c">BTS/2</characteristic>
        <characteristic name="Save Rolls" typeId="efdb-3922-b270-2241">1</characteristic>
        <characteristic name="Traits" typeId="766c-53d8-3f54-618d">-</characteristic>
      </characteristics>
    </profile>
    <profile id="0443-7d7c-077e-6978" name="Heavy Pistol" publicationId="c98c-3c50-3d4f-04b5" hidden="false" typeId="823d-0831-7e58-14c1" typeName="Ranged Weapon">
      <characteristics>
        <characteristic name="8&quot;" typeId="7046-e56f-ef50-74c9">+3</characteristic>
        <characteristic name="16&quot;" typeId="2ada-ee84-15b1-16de">0</characteristic>
        <characteristic name="24&quot;" typeId="a76a-eeaf-1570-194a">-6</characteristic>
        <characteristic name="32&quot;" typeId="e949-94f9-a0ae-7cfb">-</characteristic>
        <characteristic name="40&quot;" typeId="f7a4-faba-99f6-29fb">-</characteristic>
        <characteristic name="48&quot;" typeId="91e4-92a2-a53d-3d19">-</characteristic>
        <characteristic name="96&quot;" typeId="6afb-0457-2e94-f18a">-</characteristic>
        <characteristic name="PS" typeId="76b7-f614-c586-ebbc">6</characteristic>
        <characteristic name="B" typeId="84de-037e-e867-4da8">2</characteristic>
        <characteristic name="Ammo" typeId="d983-a03e-e480-712a">SHOCK</characteristic>
        <characteristic name="Save Attr." typeId="2f8f-e4af-90c5-d10c">ARM</characteristic>
        <characteristic name="Save Rolls" typeId="efdb-3922-b270-2241">1</characteristic>
        <characteristic name="Traits" typeId="766c-53d8-3f54-618d">-</characteristic>
      </characteristics>
    </profile>
    <profile id="c67b-c9e1-c0bb-fd7e" name="Kobra Pistol (BS Mode)" publicationId="c98c-3c50-3d4f-04b5" hidden="false" typeId="823d-0831-7e58-14c1" typeName="Ranged Weapon">
      <characteristics>
        <characteristic name="8&quot;" typeId="7046-e56f-ef50-74c9">+3</characteristic>
        <characteristic name="16&quot;" typeId="2ada-ee84-15b1-16de">0</characteristic>
        <characteristic name="24&quot;" typeId="a76a-eeaf-1570-194a">-6</characteristic>
        <characteristic name="32&quot;" typeId="e949-94f9-a0ae-7cfb">-</characteristic>
        <characteristic name="40&quot;" typeId="f7a4-faba-99f6-29fb">-</characteristic>
        <characteristic name="48&quot;" typeId="91e4-92a2-a53d-3d19">-</characteristic>
        <characteristic name="96&quot;" typeId="6afb-0457-2e94-f18a">-</characteristic>
        <characteristic name="PS" typeId="76b7-f614-c586-ebbc">7</characteristic>
        <characteristic name="B" typeId="84de-037e-e867-4da8">2</characteristic>
        <characteristic name="Ammo" typeId="d983-a03e-e480-712a">SHOCK</characteristic>
        <characteristic name="Save Attr." typeId="2f8f-e4af-90c5-d10c">ARM</characteristic>
        <characteristic name="Save Rolls" typeId="efdb-3922-b270-2241">1</characteristic>
        <characteristic name="Traits" typeId="766c-53d8-3f54-618d">-</characteristic>
      </characteristics>
    </profile>
    <profile id="198c-0120-2ece-abfb" name="Kobra Pistol (CC Mode)" publicationId="c98c-3c50-3d4f-04b5" hidden="false" typeId="354b-86b7-6889-2cfb" typeName="CC Weapon">
      <characteristics>
        <characteristic name="PS" typeId="8a39-81db-8fb4-7a5d">7</characteristic>
        <characteristic name="B" typeId="72d4-548e-6490-4171">1</characteristic>
        <characteristic name="Ammo" typeId="2915-1d89-9c05-198e">DA</characteristic>
        <characteristic name="Save Attr." typeId="ab0c-f7a7-8c87-f00d">ARM</characteristic>
        <characteristic name="Save Rolls" typeId="e492-5807-b9f5-be97">2</characteristic>
        <characteristic name="Traits" typeId="337b-7a28-801d-7808">Anti-materiel, CC</characteristic>
      </characteristics>
    </profile>
    <profile id="dd3b-3c3a-d838-dba8" name="MULTI Pistol" publicationId="c98c-3c50-3d4f-04b5" hidden="false" typeId="823d-0831-7e58-14c1" typeName="Ranged Weapon">
      <characteristics>
        <characteristic name="8&quot;" typeId="7046-e56f-ef50-74c9">+3</characteristic>
        <characteristic name="16&quot;" typeId="2ada-ee84-15b1-16de">0</characteristic>
        <characteristic name="24&quot;" typeId="a76a-eeaf-1570-194a">-6</characteristic>
        <characteristic name="32&quot;" typeId="e949-94f9-a0ae-7cfb">-</characteristic>
        <characteristic name="40&quot;" typeId="f7a4-faba-99f6-29fb">-</characteristic>
        <characteristic name="48&quot;" typeId="91e4-92a2-a53d-3d19">-</characteristic>
        <characteristic name="96&quot;" typeId="6afb-0457-2e94-f18a">-</characteristic>
        <characteristic name="PS" typeId="76b7-f614-c586-ebbc">7</characteristic>
        <characteristic name="B" typeId="84de-037e-e867-4da8">1 · 2 · 2</characteristic>
        <characteristic name="Ammo" typeId="d983-a03e-e480-712a">DA · AP · SHOCK</characteristic>
        <characteristic name="Save Attr." typeId="2f8f-e4af-90c5-d10c">ARM · ARM/2 · ARM</characteristic>
        <characteristic name="Save Rolls" typeId="efdb-3922-b270-2241">2 · 1 · 1</characteristic>
        <characteristic name="Traits" typeId="766c-53d8-3f54-618d">Anti-materiel (DA)</characteristic>
      </characteristics>
    </profile>
    <profile id="98f7-c555-889e-699d" name="Pistol" publicationId="c98c-3c50-3d4f-04b5" hidden="false" typeId="823d-0831-7e58-14c1" typeName="Ranged Weapon">
      <characteristics>
        <characteristic name="8&quot;" typeId="7046-e56f-ef50-74c9">+3</characteristic>
        <characteristic name="16&quot;" typeId="2ada-ee84-15b1-16de">0</characteristic>
        <characteristic name="24&quot;" typeId="a76a-eeaf-1570-194a">-6</characteristic>
        <characteristic name="32&quot;" typeId="e949-94f9-a0ae-7cfb">-</characteristic>
        <characteristic name="40&quot;" typeId="f7a4-faba-99f6-29fb">-</characteristic>
        <characteristic name="48&quot;" typeId="91e4-92a2-a53d-3d19">-</characteristic>
        <characteristic name="96&quot;" typeId="6afb-0457-2e94-f18a">-</characteristic>
        <characteristic name="PS" typeId="76b7-f614-c586-ebbc">9</characteristic>
        <characteristic name="B" typeId="84de-037e-e867-4da8">2</characteristic>
        <characteristic name="Ammo" typeId="d983-a03e-e480-712a">N</characteristic>
        <characteristic name="Save Attr." typeId="2f8f-e4af-90c5-d10c">ARM</characteristic>
        <characteristic name="Save Rolls" typeId="efdb-3922-b270-2241">1</characteristic>
        <characteristic name="Traits" typeId="766c-53d8-3f54-618d">-</characteristic>
      </characteristics>
    </profile>
    <profile id="f839-4425-4c04-9030" name="Silenced Pistol" publicationId="c98c-3c50-3d4f-04b5" hidden="false" typeId="823d-0831-7e58-14c1" typeName="Ranged Weapon">
      <characteristics>
        <characteristic name="8&quot;" typeId="7046-e56f-ef50-74c9">+3</characteristic>
        <characteristic name="16&quot;" typeId="2ada-ee84-15b1-16de">0</characteristic>
        <characteristic name="24&quot;" typeId="a76a-eeaf-1570-194a">-6</characteristic>
        <characteristic name="32&quot;" typeId="e949-94f9-a0ae-7cfb">-</characteristic>
        <characteristic name="40&quot;" typeId="f7a4-faba-99f6-29fb">-</characteristic>
        <characteristic name="48&quot;" typeId="91e4-92a2-a53d-3d19">-</characteristic>
        <characteristic name="96&quot;" typeId="6afb-0457-2e94-f18a">-</characteristic>
        <characteristic name="PS" typeId="76b7-f614-c586-ebbc">8</characteristic>
        <characteristic name="B" typeId="84de-037e-e867-4da8">2</characteristic>
        <characteristic name="Ammo" typeId="d983-a03e-e480-712a">AP+SHOCK</characteristic>
        <characteristic name="Save Attr." typeId="2f8f-e4af-90c5-d10c">BTS/2</characteristic>
        <characteristic name="Save Rolls" typeId="efdb-3922-b270-2241">1</characteristic>
        <characteristic name="Traits" typeId="766c-53d8-3f54-618d">Silent (-6)</characteristic>
      </characteristics>
    </profile>
    <profile id="6d1e-47e0-5df7-c635" name="Stun Pistol" publicationId="c98c-3c50-3d4f-04b5" hidden="false" typeId="823d-0831-7e58-14c1" typeName="Ranged Weapon">
      <characteristics>
        <characteristic name="8&quot;" typeId="7046-e56f-ef50-74c9">+3</characteristic>
        <characteristic name="16&quot;" typeId="2ada-ee84-15b1-16de">0</characteristic>
        <characteristic name="24&quot;" typeId="a76a-eeaf-1570-194a">-6</characteristic>
        <characteristic name="32&quot;" typeId="e949-94f9-a0ae-7cfb">-</characteristic>
        <characteristic name="40&quot;" typeId="f7a4-faba-99f6-29fb">-</characteristic>
        <characteristic name="48&quot;" typeId="91e4-92a2-a53d-3d19">-</characteristic>
        <characteristic name="96&quot;" typeId="6afb-0457-2e94-f18a">-</characteristic>
        <characteristic name="PS" typeId="76b7-f614-c586-ebbc">8</characteristic>
        <characteristic name="B" typeId="84de-037e-e867-4da8">2</characteristic>
        <characteristic name="Ammo" typeId="d983-a03e-e480-712a">STUN</characteristic>
        <characteristic name="Save Attr." typeId="2f8f-e4af-90c5-d10c">BTS</characteristic>
        <characteristic name="Save Rolls" typeId="efdb-3922-b270-2241">1</characteristic>
        <characteristic name="Traits" typeId="766c-53d8-3f54-618d">Non-Lethal, State: Stunned</characteristic>
      </characteristics>
    </profile>
    <profile id="8ccd-058f-ceb8-0fec" name="Viral Pistol" publicationId="c98c-3c50-3d4f-04b5" hidden="false" typeId="823d-0831-7e58-14c1" typeName="Ranged Weapon">
      <characteristics>
        <characteristic name="8&quot;" typeId="7046-e56f-ef50-74c9">+3</characteristic>
        <characteristic name="16&quot;" typeId="2ada-ee84-15b1-16de">0</characteristic>
        <characteristic name="24&quot;" typeId="a76a-eeaf-1570-194a">-6</characteristic>
        <characteristic name="32&quot;" typeId="e949-94f9-a0ae-7cfb">-</characteristic>
        <characteristic name="40&quot;" typeId="f7a4-faba-99f6-29fb">-</characteristic>
        <characteristic name="48&quot;" typeId="91e4-92a2-a53d-3d19">-</characteristic>
        <characteristic name="96&quot;" typeId="6afb-0457-2e94-f18a">-</characteristic>
        <characteristic name="PS" typeId="76b7-f614-c586-ebbc">8</characteristic>
        <characteristic name="B" typeId="84de-037e-e867-4da8">2</characteristic>
        <characteristic name="Ammo" typeId="d983-a03e-e480-712a">N</characteristic>
        <characteristic name="Save Attr." typeId="2f8f-e4af-90c5-d10c">BTS</characteristic>
        <characteristic name="Save Rolls" typeId="efdb-3922-b270-2241">1</characteristic>
        <characteristic name="Traits" typeId="766c-53d8-3f54-618d">BioWeapon (DA+Shock)</characteristic>
      </characteristics>
    </profile>
    <profile id="cf41-0817-c4bc-7c14" name="AP Red Fury" publicationId="c98c-3c50-3d4f-04b5" hidden="false" typeId="823d-0831-7e58-14c1" typeName="Ranged Weapon">
      <characteristics>
        <characteristic name="8&quot;" typeId="7046-e56f-ef50-74c9">0</characteristic>
        <characteristic name="16&quot;" typeId="2ada-ee84-15b1-16de">+3</characteristic>
        <characteristic name="24&quot;" typeId="a76a-eeaf-1570-194a">+3</characteristic>
        <characteristic name="32&quot;" typeId="e949-94f9-a0ae-7cfb">-3</characteristic>
        <characteristic name="40&quot;" typeId="f7a4-faba-99f6-29fb">-3</characteristic>
        <characteristic name="48&quot;" typeId="91e4-92a2-a53d-3d19">-6</characteristic>
        <characteristic name="96&quot;" typeId="6afb-0457-2e94-f18a">-</characteristic>
        <characteristic name="PS" typeId="76b7-f614-c586-ebbc">7</characteristic>
        <characteristic name="B" typeId="84de-037e-e867-4da8">4</characteristic>
        <characteristic name="Ammo" typeId="d983-a03e-e480-712a">AP</characteristic>
        <characteristic name="Save Attr." typeId="2f8f-e4af-90c5-d10c">ARM/2</characteristic>
        <characteristic name="Save Rolls" typeId="efdb-3922-b270-2241">1</characteristic>
        <characteristic name="Traits" typeId="766c-53d8-3f54-618d">Suppressive Fire</characteristic>
      </characteristics>
    </profile>
    <profile id="4a11-8dc6-4709-64ba" name="MULTI Red Fury" publicationId="c98c-3c50-3d4f-04b5" hidden="false" typeId="823d-0831-7e58-14c1" typeName="Ranged Weapon">
      <characteristics>
        <characteristic name="8&quot;" typeId="7046-e56f-ef50-74c9">0</characteristic>
        <characteristic name="16&quot;" typeId="2ada-ee84-15b1-16de">+3</characteristic>
        <characteristic name="24&quot;" typeId="a76a-eeaf-1570-194a">+3</characteristic>
        <characteristic name="32&quot;" typeId="e949-94f9-a0ae-7cfb">-3</characteristic>
        <characteristic name="40&quot;" typeId="f7a4-faba-99f6-29fb">-3</characteristic>
        <characteristic name="48&quot;" typeId="91e4-92a2-a53d-3d19">-6</characteristic>
        <characteristic name="96&quot;" typeId="6afb-0457-2e94-f18a">-</characteristic>
        <characteristic name="PS" typeId="76b7-f614-c586-ebbc">7</characteristic>
        <characteristic name="B" typeId="84de-037e-e867-4da8">1 · 4 · 4</characteristic>
        <characteristic name="Ammo" typeId="d983-a03e-e480-712a">DA · AP · SHOCK</characteristic>
        <characteristic name="Save Attr." typeId="2f8f-e4af-90c5-d10c">ARM · ARM/2 · ARM</characteristic>
        <characteristic name="Save Rolls" typeId="efdb-3922-b270-2241">2 · 1 · 1</characteristic>
        <characteristic name="Traits" typeId="766c-53d8-3f54-618d">Anti-materiel (DA), Suppressive Fire (AP, SHOCK)</characteristic>
      </characteristics>
    </profile>
    <profile id="ac82-1158-013f-a610" name="Red Fury" publicationId="c98c-3c50-3d4f-04b5" hidden="false" typeId="823d-0831-7e58-14c1" typeName="Ranged Weapon">
      <characteristics>
        <characteristic name="8&quot;" typeId="7046-e56f-ef50-74c9">0</characteristic>
        <characteristic name="16&quot;" typeId="2ada-ee84-15b1-16de">+3</characteristic>
        <characteristic name="24&quot;" typeId="a76a-eeaf-1570-194a">+3</characteristic>
        <characteristic name="32&quot;" typeId="e949-94f9-a0ae-7cfb">-3</characteristic>
        <characteristic name="40&quot;" typeId="f7a4-faba-99f6-29fb">-3</characteristic>
        <characteristic name="48&quot;" typeId="91e4-92a2-a53d-3d19">-6</characteristic>
        <characteristic name="96&quot;" typeId="6afb-0457-2e94-f18a">-</characteristic>
        <characteristic name="PS" typeId="76b7-f614-c586-ebbc">7</characteristic>
        <characteristic name="B" typeId="84de-037e-e867-4da8">4</characteristic>
        <characteristic name="Ammo" typeId="d983-a03e-e480-712a">SHOCK</characteristic>
        <characteristic name="Save Attr." typeId="2f8f-e4af-90c5-d10c">ARM</characteristic>
        <characteristic name="Save Rolls" typeId="efdb-3922-b270-2241">1</characteristic>
        <characteristic name="Traits" typeId="766c-53d8-3f54-618d">Suppressive Fire</characteristic>
      </characteristics>
    </profile>
    <profile id="f392-ffe9-b588-2e1f" name="AP Rifle" publicationId="c98c-3c50-3d4f-04b5" hidden="false" typeId="823d-0831-7e58-14c1" typeName="Ranged Weapon">
      <characteristics>
        <characteristic name="8&quot;" typeId="7046-e56f-ef50-74c9">0</characteristic>
        <characteristic name="16&quot;" typeId="2ada-ee84-15b1-16de">+3</characteristic>
        <characteristic name="24&quot;" typeId="a76a-eeaf-1570-194a">-3</characteristic>
        <characteristic name="32&quot;" typeId="e949-94f9-a0ae-7cfb">-3</characteristic>
        <characteristic name="40&quot;" typeId="f7a4-faba-99f6-29fb">-6</characteristic>
        <characteristic name="48&quot;" typeId="91e4-92a2-a53d-3d19">-6</characteristic>
        <characteristic name="96&quot;" typeId="6afb-0457-2e94-f18a">-</characteristic>
        <characteristic name="PS" typeId="76b7-f614-c586-ebbc">7</characteristic>
        <characteristic name="B" typeId="84de-037e-e867-4da8">3</characteristic>
        <characteristic name="Ammo" typeId="d983-a03e-e480-712a">AP</characteristic>
        <characteristic name="Save Attr." typeId="2f8f-e4af-90c5-d10c">ARM/2</characteristic>
        <characteristic name="Save Rolls" typeId="efdb-3922-b270-2241">1</characteristic>
        <characteristic name="Traits" typeId="766c-53d8-3f54-618d">Suppressive Fire</characteristic>
      </characteristics>
    </profile>
    <profile id="3272-0684-c15e-8714" name="Adhesive Launcher Rifle" publicationId="c98c-3c50-3d4f-04b5" hidden="false" typeId="823d-0831-7e58-14c1" typeName="Ranged Weapon">
      <characteristics>
        <characteristic name="8&quot;" typeId="7046-e56f-ef50-74c9">0</characteristic>
        <characteristic name="16&quot;" typeId="2ada-ee84-15b1-16de">+3</characteristic>
        <characteristic name="24&quot;" typeId="a76a-eeaf-1570-194a">-3</characteristic>
        <characteristic name="32&quot;" typeId="e949-94f9-a0ae-7cfb">-3</characteristic>
        <characteristic name="40&quot;" typeId="f7a4-faba-99f6-29fb">-6</characteristic>
        <characteristic name="48&quot;" typeId="91e4-92a2-a53d-3d19">-6</characteristic>
        <characteristic name="96&quot;" typeId="6afb-0457-2e94-f18a">-</characteristic>
        <characteristic name="PS" typeId="76b7-f614-c586-ebbc">-</characteristic>
        <characteristic name="B" typeId="84de-037e-e867-4da8">2</characteristic>
        <characteristic name="Ammo" typeId="d983-a03e-e480-712a">PARA</characteristic>
        <characteristic name="Save Attr." typeId="2f8f-e4af-90c5-d10c">PH-6</characteristic>
        <characteristic name="Save Rolls" typeId="efdb-3922-b270-2241">1</characteristic>
        <characteristic name="Traits" typeId="766c-53d8-3f54-618d">Non-Lethal</characteristic>
      </characteristics>
    </profile>
    <profile id="457e-84d8-e23d-d77c" name="Breaker Combi Rifle" publicationId="c98c-3c50-3d4f-04b5" hidden="false" typeId="823d-0831-7e58-14c1" typeName="Ranged Weapon">
      <characteristics>
        <characteristic name="8&quot;" typeId="7046-e56f-ef50-74c9">+3</characteristic>
        <characteristic name="16&quot;" typeId="2ada-ee84-15b1-16de">+3</characteristic>
        <characteristic name="24&quot;" typeId="a76a-eeaf-1570-194a">-3</characteristic>
        <characteristic name="32&quot;" typeId="e949-94f9-a0ae-7cfb">-3</characteristic>
        <characteristic name="40&quot;" typeId="f7a4-faba-99f6-29fb">-6</characteristic>
        <characteristic name="48&quot;" typeId="91e4-92a2-a53d-3d19">-6</characteristic>
        <characteristic name="96&quot;" typeId="6afb-0457-2e94-f18a">-</characteristic>
        <characteristic name="PS" typeId="76b7-f614-c586-ebbc">7</characteristic>
        <characteristic name="B" typeId="84de-037e-e867-4da8">3</characteristic>
        <characteristic name="Ammo" typeId="d983-a03e-e480-712a">AP</characteristic>
        <characteristic name="Save Attr." typeId="2f8f-e4af-90c5-d10c">BTS/2</characteristic>
        <characteristic name="Save Rolls" typeId="efdb-3922-b270-2241">1</characteristic>
        <characteristic name="Traits" typeId="766c-53d8-3f54-618d">Suppressive Fire</characteristic>
      </characteristics>
    </profile>
    <profile id="b4c6-c968-2cdc-35a8" name="Breaker Rifle" publicationId="c98c-3c50-3d4f-04b5" hidden="false" typeId="823d-0831-7e58-14c1" typeName="Ranged Weapon">
      <characteristics>
        <characteristic name="8&quot;" typeId="7046-e56f-ef50-74c9">0</characteristic>
        <characteristic name="16&quot;" typeId="2ada-ee84-15b1-16de">+3</characteristic>
        <characteristic name="24&quot;" typeId="a76a-eeaf-1570-194a">-3</characteristic>
        <characteristic name="32&quot;" typeId="e949-94f9-a0ae-7cfb">-3</characteristic>
        <characteristic name="40&quot;" typeId="f7a4-faba-99f6-29fb">-6</characteristic>
        <characteristic name="48&quot;" typeId="91e4-92a2-a53d-3d19">-6</characteristic>
        <characteristic name="96&quot;" typeId="6afb-0457-2e94-f18a">-</characteristic>
        <characteristic name="PS" typeId="76b7-f614-c586-ebbc">7</characteristic>
        <characteristic name="B" typeId="84de-037e-e867-4da8">3</characteristic>
        <characteristic name="Ammo" typeId="d983-a03e-e480-712a">AP</characteristic>
        <characteristic name="Save Attr." typeId="2f8f-e4af-90c5-d10c">BTS/2</characteristic>
        <characteristic name="Save Rolls" typeId="efdb-3922-b270-2241">1</characteristic>
        <characteristic name="Traits" typeId="766c-53d8-3f54-618d">Suppressive Fire</characteristic>
      </characteristics>
    </profile>
    <profile id="79d8-80b0-c30c-1238" name="Combi Rifle" publicationId="c98c-3c50-3d4f-04b5" hidden="false" typeId="823d-0831-7e58-14c1" typeName="Ranged Weapon">
      <characteristics>
        <characteristic name="8&quot;" typeId="7046-e56f-ef50-74c9">+3</characteristic>
        <characteristic name="16&quot;" typeId="2ada-ee84-15b1-16de">+3</characteristic>
        <characteristic name="24&quot;" typeId="a76a-eeaf-1570-194a">-3</characteristic>
        <characteristic name="32&quot;" typeId="e949-94f9-a0ae-7cfb">-3</characteristic>
        <characteristic name="40&quot;" typeId="f7a4-faba-99f6-29fb">-6</characteristic>
        <characteristic name="48&quot;" typeId="91e4-92a2-a53d-3d19">-6</characteristic>
        <characteristic name="96&quot;" typeId="6afb-0457-2e94-f18a">-</characteristic>
        <characteristic name="PS" typeId="76b7-f614-c586-ebbc">7</characteristic>
        <characteristic name="B" typeId="84de-037e-e867-4da8">3</characteristic>
        <characteristic name="Ammo" typeId="d983-a03e-e480-712a">N</characteristic>
        <characteristic name="Save Attr." typeId="2f8f-e4af-90c5-d10c">ARM</characteristic>
        <characteristic name="Save Rolls" typeId="efdb-3922-b270-2241">1</characteristic>
        <characteristic name="Traits" typeId="766c-53d8-3f54-618d">Suppressive Fire</characteristic>
      </characteristics>
    </profile>
    <profile id="03c0-3e55-6731-e40f" name="K1 Combi Rifle" publicationId="c98c-3c50-3d4f-04b5" hidden="false" typeId="823d-0831-7e58-14c1" typeName="Ranged Weapon">
      <characteristics>
        <characteristic name="8&quot;" typeId="7046-e56f-ef50-74c9">+3</characteristic>
        <characteristic name="16&quot;" typeId="2ada-ee84-15b1-16de">+3</characteristic>
        <characteristic name="24&quot;" typeId="a76a-eeaf-1570-194a">-3</characteristic>
        <characteristic name="32&quot;" typeId="e949-94f9-a0ae-7cfb">-3</characteristic>
        <characteristic name="40&quot;" typeId="f7a4-faba-99f6-29fb">-6</characteristic>
        <characteristic name="48&quot;" typeId="91e4-92a2-a53d-3d19">-6</characteristic>
        <characteristic name="96&quot;" typeId="6afb-0457-2e94-f18a">-</characteristic>
        <characteristic name="PS" typeId="76b7-f614-c586-ebbc">7</characteristic>
        <characteristic name="B" typeId="84de-037e-e867-4da8">3</characteristic>
        <characteristic name="Ammo" typeId="d983-a03e-e480-712a">N</characteristic>
        <characteristic name="Save Attr." typeId="2f8f-e4af-90c5-d10c">ARM=0</characteristic>
        <characteristic name="Save Rolls" typeId="efdb-3922-b270-2241">1</characteristic>
        <characteristic name="Traits" typeId="766c-53d8-3f54-618d">Anti-materiel, Suppressive Fire</characteristic>
      </characteristics>
    </profile>
    <profile id="c000-3dd7-67d9-6880" name="MULTI Rifle" publicationId="c98c-3c50-3d4f-04b5" hidden="false" typeId="823d-0831-7e58-14c1" typeName="Ranged Weapon">
      <characteristics>
        <characteristic name="8&quot;" typeId="7046-e56f-ef50-74c9">+3</characteristic>
        <characteristic name="16&quot;" typeId="2ada-ee84-15b1-16de">+3</characteristic>
        <characteristic name="24&quot;" typeId="a76a-eeaf-1570-194a">-3</characteristic>
        <characteristic name="32&quot;" typeId="e949-94f9-a0ae-7cfb">-3</characteristic>
        <characteristic name="40&quot;" typeId="f7a4-faba-99f6-29fb">-6</characteristic>
        <characteristic name="48&quot;" typeId="91e4-92a2-a53d-3d19">-6</characteristic>
        <characteristic name="96&quot;" typeId="6afb-0457-2e94-f18a">-</characteristic>
        <characteristic name="PS" typeId="76b7-f614-c586-ebbc">7</characteristic>
        <characteristic name="B" typeId="84de-037e-e867-4da8">1 · 3 · 3</characteristic>
        <characteristic name="Ammo" typeId="d983-a03e-e480-712a">DA · AP · SHOCK</characteristic>
        <characteristic name="Save Attr." typeId="2f8f-e4af-90c5-d10c">ARM · ARM/2 · ARM</characteristic>
        <characteristic name="Save Rolls" typeId="efdb-3922-b270-2241">2 · 1 · 1</characteristic>
        <characteristic name="Traits" typeId="766c-53d8-3f54-618d">Anti-materiel (DA), Suppressive Fire (AP, SHOCK)</characteristic>
      </characteristics>
    </profile>
    <profile id="ffd3-015e-b05a-73af" name="Plasma Rifle (Blast Mode)" publicationId="c98c-3c50-3d4f-04b5" hidden="false" typeId="823d-0831-7e58-14c1" typeName="Ranged Weapon">
      <characteristics>
        <characteristic name="8&quot;" typeId="7046-e56f-ef50-74c9">+3</characteristic>
        <characteristic name="16&quot;" typeId="2ada-ee84-15b1-16de">+3</characteristic>
        <characteristic name="24&quot;" typeId="a76a-eeaf-1570-194a">-3</characteristic>
        <characteristic name="32&quot;" typeId="e949-94f9-a0ae-7cfb">-3</characteristic>
        <characteristic name="40&quot;" typeId="f7a4-faba-99f6-29fb">-6</characteristic>
        <characteristic name="48&quot;" typeId="91e4-92a2-a53d-3d19">-6</characteristic>
        <characteristic name="96&quot;" typeId="6afb-0457-2e94-f18a">-</characteristic>
        <characteristic name="PS" typeId="76b7-f614-c586-ebbc">7</characteristic>
        <characteristic name="B" typeId="84de-037e-e867-4da8">3</characteristic>
        <characteristic name="Ammo" typeId="d983-a03e-e480-712a">N</characteristic>
        <characteristic name="Save Attr." typeId="2f8f-e4af-90c5-d10c">ARM and BTS</characteristic>
        <characteristic name="Save Rolls" typeId="efdb-3922-b270-2241">1 and 1</characteristic>
        <characteristic name="Traits" typeId="766c-53d8-3f54-618d">Suppressive Fire, Impact Template (Circular)</characteristic>
      </characteristics>
    </profile>
    <profile id="d69e-6ef5-3a59-789b" name="Plasma Rifle (Hit Mode)" publicationId="c98c-3c50-3d4f-04b5" hidden="false" typeId="823d-0831-7e58-14c1" typeName="Ranged Weapon">
      <characteristics>
        <characteristic name="8&quot;" typeId="7046-e56f-ef50-74c9">+3</characteristic>
        <characteristic name="16&quot;" typeId="2ada-ee84-15b1-16de">+3</characteristic>
        <characteristic name="24&quot;" typeId="a76a-eeaf-1570-194a">-3</characteristic>
        <characteristic name="32&quot;" typeId="e949-94f9-a0ae-7cfb">-3</characteristic>
        <characteristic name="40&quot;" typeId="f7a4-faba-99f6-29fb">-6</characteristic>
        <characteristic name="48&quot;" typeId="91e4-92a2-a53d-3d19">-6</characteristic>
        <characteristic name="96&quot;" typeId="6afb-0457-2e94-f18a">-</characteristic>
        <characteristic name="PS" typeId="76b7-f614-c586-ebbc">6</characteristic>
        <characteristic name="B" typeId="84de-037e-e867-4da8">3</characteristic>
        <characteristic name="Ammo" typeId="d983-a03e-e480-712a">N</characteristic>
        <characteristic name="Save Attr." typeId="2f8f-e4af-90c5-d10c">ARM and BTS</characteristic>
        <characteristic name="Save Rolls" typeId="efdb-3922-b270-2241">1 and 1</characteristic>
        <characteristic name="Traits" typeId="766c-53d8-3f54-618d">Suppressive Fire</characteristic>
      </characteristics>
    </profile>
    <profile id="d25e-d34a-a24e-ffcc" name="Rifle" publicationId="c98c-3c50-3d4f-04b5" hidden="false" typeId="823d-0831-7e58-14c1" typeName="Ranged Weapon">
      <characteristics>
        <characteristic name="8&quot;" typeId="7046-e56f-ef50-74c9">0</characteristic>
        <characteristic name="16&quot;" typeId="2ada-ee84-15b1-16de">+3</characteristic>
        <characteristic name="24&quot;" typeId="a76a-eeaf-1570-194a">-3</characteristic>
        <characteristic name="32&quot;" typeId="e949-94f9-a0ae-7cfb">-3</characteristic>
        <characteristic name="40&quot;" typeId="f7a4-faba-99f6-29fb">-6</characteristic>
        <characteristic name="48&quot;" typeId="91e4-92a2-a53d-3d19">-6</characteristic>
        <characteristic name="96&quot;" typeId="6afb-0457-2e94-f18a">-</characteristic>
        <characteristic name="PS" typeId="76b7-f614-c586-ebbc">7</characteristic>
        <characteristic name="B" typeId="84de-037e-e867-4da8">3</characteristic>
        <characteristic name="Ammo" typeId="d983-a03e-e480-712a">N</characteristic>
        <characteristic name="Save Attr." typeId="2f8f-e4af-90c5-d10c">ARM</characteristic>
        <characteristic name="Save Rolls" typeId="efdb-3922-b270-2241">1</characteristic>
        <characteristic name="Traits" typeId="766c-53d8-3f54-618d">Suppressive Fire</characteristic>
      </characteristics>
    </profile>
    <profile id="2177-2152-0f90-ba7d" name="T2 Rifle" publicationId="c98c-3c50-3d4f-04b5" hidden="false" typeId="823d-0831-7e58-14c1" typeName="Ranged Weapon">
      <characteristics>
        <characteristic name="8&quot;" typeId="7046-e56f-ef50-74c9">0</characteristic>
        <characteristic name="16&quot;" typeId="2ada-ee84-15b1-16de">+3</characteristic>
        <characteristic name="24&quot;" typeId="a76a-eeaf-1570-194a">-3</characteristic>
        <characteristic name="32&quot;" typeId="e949-94f9-a0ae-7cfb">-3</characteristic>
        <characteristic name="40&quot;" typeId="f7a4-faba-99f6-29fb">-6</characteristic>
        <characteristic name="48&quot;" typeId="91e4-92a2-a53d-3d19">-6</characteristic>
        <characteristic name="96&quot;" typeId="6afb-0457-2e94-f18a">-</characteristic>
        <characteristic name="PS" typeId="76b7-f614-c586-ebbc">7</characteristic>
        <characteristic name="B" typeId="84de-037e-e867-4da8">3</characteristic>
        <characteristic name="Ammo" typeId="d983-a03e-e480-712a">T2</characteristic>
        <characteristic name="Save Attr." typeId="2f8f-e4af-90c5-d10c">ARM</characteristic>
        <characteristic name="Save Rolls" typeId="efdb-3922-b270-2241">1</characteristic>
        <characteristic name="Traits" typeId="766c-53d8-3f54-618d">Anti-materiel, Suppressive Fire</characteristic>
      </characteristics>
    </profile>
    <profile id="8335-189a-e866-bf48" name="Viral Combi Rifle" publicationId="c98c-3c50-3d4f-04b5" hidden="false" typeId="823d-0831-7e58-14c1" typeName="Ranged Weapon">
      <characteristics>
        <characteristic name="8&quot;" typeId="7046-e56f-ef50-74c9">+3</characteristic>
        <characteristic name="16&quot;" typeId="2ada-ee84-15b1-16de">+3</characteristic>
        <characteristic name="24&quot;" typeId="a76a-eeaf-1570-194a">-3</characteristic>
        <characteristic name="32&quot;" typeId="e949-94f9-a0ae-7cfb">-3</characteristic>
        <characteristic name="40&quot;" typeId="f7a4-faba-99f6-29fb">-6</characteristic>
        <characteristic name="48&quot;" typeId="91e4-92a2-a53d-3d19">-6</characteristic>
        <characteristic name="96&quot;" typeId="6afb-0457-2e94-f18a">-</characteristic>
        <characteristic name="PS" typeId="76b7-f614-c586-ebbc">7</characteristic>
        <characteristic name="B" typeId="84de-037e-e867-4da8">3</characteristic>
        <characteristic name="Ammo" typeId="d983-a03e-e480-712a">N</characteristic>
        <characteristic name="Save Attr." typeId="2f8f-e4af-90c5-d10c">BTS</characteristic>
        <characteristic name="Save Rolls" typeId="efdb-3922-b270-2241">1</characteristic>
        <characteristic name="Traits" typeId="766c-53d8-3f54-618d">BioWeapon (DA+Shock), Suppressive Fire</characteristic>
      </characteristics>
    </profile>
    <profile id="1929-6b67-6d69-5291" name="Viral Rifle" publicationId="c98c-3c50-3d4f-04b5" hidden="false" typeId="823d-0831-7e58-14c1" typeName="Ranged Weapon">
      <characteristics>
        <characteristic name="8&quot;" typeId="7046-e56f-ef50-74c9">0</characteristic>
        <characteristic name="16&quot;" typeId="2ada-ee84-15b1-16de">+3</characteristic>
        <characteristic name="24&quot;" typeId="a76a-eeaf-1570-194a">-3</characteristic>
        <characteristic name="32&quot;" typeId="e949-94f9-a0ae-7cfb">-3</characteristic>
        <characteristic name="40&quot;" typeId="f7a4-faba-99f6-29fb">-6</characteristic>
        <characteristic name="48&quot;" typeId="91e4-92a2-a53d-3d19">-6</characteristic>
        <characteristic name="96&quot;" typeId="6afb-0457-2e94-f18a">-</characteristic>
        <characteristic name="PS" typeId="76b7-f614-c586-ebbc">7</characteristic>
        <characteristic name="B" typeId="84de-037e-e867-4da8">3</characteristic>
        <characteristic name="Ammo" typeId="d983-a03e-e480-712a">N</characteristic>
        <characteristic name="Save Attr." typeId="2f8f-e4af-90c5-d10c">BTS</characteristic>
        <characteristic name="Save Rolls" typeId="efdb-3922-b270-2241">1</characteristic>
        <characteristic name="Traits" typeId="766c-53d8-3f54-618d">BioWeapon (DA+Shock), Suppressive Fire</characteristic>
      </characteristics>
    </profile>
    <profile id="915d-12d0-39a3-ca2e" name="Heavy Riotstopper" publicationId="c98c-3c50-3d4f-04b5" hidden="false" typeId="823d-0831-7e58-14c1" typeName="Ranged Weapon">
      <characteristics>
        <characteristic name="8&quot;" typeId="7046-e56f-ef50-74c9">Large Teardrop</characteristic>
        <characteristic name="16&quot;" typeId="2ada-ee84-15b1-16de">-</characteristic>
        <characteristic name="24&quot;" typeId="a76a-eeaf-1570-194a">-</characteristic>
        <characteristic name="32&quot;" typeId="e949-94f9-a0ae-7cfb">-</characteristic>
        <characteristic name="40&quot;" typeId="f7a4-faba-99f6-29fb">-</characteristic>
        <characteristic name="48&quot;" typeId="91e4-92a2-a53d-3d19">-</characteristic>
        <characteristic name="96&quot;" typeId="6afb-0457-2e94-f18a">-</characteristic>
        <characteristic name="PS" typeId="76b7-f614-c586-ebbc">-</characteristic>
        <characteristic name="B" typeId="84de-037e-e867-4da8">1</characteristic>
        <characteristic name="Ammo" typeId="d983-a03e-e480-712a">PARA</characteristic>
        <characteristic name="Save Attr." typeId="2f8f-e4af-90c5-d10c">PH-6</characteristic>
        <characteristic name="Save Rolls" typeId="efdb-3922-b270-2241">1</characteristic>
        <characteristic name="Traits" typeId="766c-53d8-3f54-618d">State: Immobilized-A, Intuitive Attack, Non-Lethal, Direct Template (Large Teardrop)</characteristic>
      </characteristics>
    </profile>
    <profile id="e1fb-89b0-bd44-46d3" name="Light Riotstopper" publicationId="c98c-3c50-3d4f-04b5" hidden="false" typeId="823d-0831-7e58-14c1" typeName="Ranged Weapon">
      <characteristics>
        <characteristic name="8&quot;" typeId="7046-e56f-ef50-74c9">Small Teardrop</characteristic>
        <characteristic name="16&quot;" typeId="2ada-ee84-15b1-16de">-</characteristic>
        <characteristic name="24&quot;" typeId="a76a-eeaf-1570-194a">-</characteristic>
        <characteristic name="32&quot;" typeId="e949-94f9-a0ae-7cfb">-</characteristic>
        <characteristic name="40&quot;" typeId="f7a4-faba-99f6-29fb">-</characteristic>
        <characteristic name="48&quot;" typeId="91e4-92a2-a53d-3d19">-</characteristic>
        <characteristic name="96&quot;" typeId="6afb-0457-2e94-f18a">-</characteristic>
        <characteristic name="PS" typeId="76b7-f614-c586-ebbc">-</characteristic>
        <characteristic name="B" typeId="84de-037e-e867-4da8">1</characteristic>
        <characteristic name="Ammo" typeId="d983-a03e-e480-712a">PARA</characteristic>
        <characteristic name="Save Attr." typeId="2f8f-e4af-90c5-d10c">PH-6</characteristic>
        <characteristic name="Save Rolls" typeId="efdb-3922-b270-2241">1</characteristic>
        <characteristic name="Traits" typeId="766c-53d8-3f54-618d">State: Immobilized-A, Intuitive Attack, Non-Lethal, Direct Template (Small Teardrop)</characteristic>
      </characteristics>
    </profile>
    <profile id="5fa7-1a6b-1df3-5dff" name="Heavy Rocket Launcher (Blast Mode)" publicationId="c98c-3c50-3d4f-04b5" hidden="false" typeId="823d-0831-7e58-14c1" typeName="Ranged Weapon">
      <characteristics>
        <characteristic name="8&quot;" typeId="7046-e56f-ef50-74c9">-3</characteristic>
        <characteristic name="16&quot;" typeId="2ada-ee84-15b1-16de">0</characteristic>
        <characteristic name="24&quot;" typeId="a76a-eeaf-1570-194a">+3</characteristic>
        <characteristic name="32&quot;" typeId="e949-94f9-a0ae-7cfb">+3</characteristic>
        <characteristic name="40&quot;" typeId="f7a4-faba-99f6-29fb">-3</characteristic>
        <characteristic name="48&quot;" typeId="91e4-92a2-a53d-3d19">-3</characteristic>
        <characteristic name="96&quot;" typeId="6afb-0457-2e94-f18a">-</characteristic>
        <characteristic name="PS" typeId="76b7-f614-c586-ebbc">6</characteristic>
        <characteristic name="B" typeId="84de-037e-e867-4da8">2</characteristic>
        <characteristic name="Ammo" typeId="d983-a03e-e480-712a">N</characteristic>
        <characteristic name="Save Attr." typeId="2f8f-e4af-90c5-d10c">ARM</characteristic>
        <characteristic name="Save Rolls" typeId="efdb-3922-b270-2241">1</characteristic>
        <characteristic name="Traits" typeId="766c-53d8-3f54-618d">Continuous Damage, Impact Template (Circular)</characteristic>
      </characteristics>
    </profile>
    <profile id="a9d5-4dd4-506e-53ed" name="Heavy Rocket Launcher (Hit Mode)" publicationId="c98c-3c50-3d4f-04b5" hidden="false" typeId="823d-0831-7e58-14c1" typeName="Ranged Weapon">
      <characteristics>
        <characteristic name="8&quot;" typeId="7046-e56f-ef50-74c9">-3</characteristic>
        <characteristic name="16&quot;" typeId="2ada-ee84-15b1-16de">0</characteristic>
        <characteristic name="24&quot;" typeId="a76a-eeaf-1570-194a">+3</characteristic>
        <characteristic name="32&quot;" typeId="e949-94f9-a0ae-7cfb">+3</characteristic>
        <characteristic name="40&quot;" typeId="f7a4-faba-99f6-29fb">-3</characteristic>
        <characteristic name="48&quot;" typeId="91e4-92a2-a53d-3d19">-3</characteristic>
        <characteristic name="96&quot;" typeId="6afb-0457-2e94-f18a">-</characteristic>
        <characteristic name="PS" typeId="76b7-f614-c586-ebbc">5</characteristic>
        <characteristic name="B" typeId="84de-037e-e867-4da8">2</characteristic>
        <characteristic name="Ammo" typeId="d983-a03e-e480-712a">N</characteristic>
        <characteristic name="Save Attr." typeId="2f8f-e4af-90c5-d10c">ARM</characteristic>
        <characteristic name="Save Rolls" typeId="efdb-3922-b270-2241">1</characteristic>
        <characteristic name="Traits" typeId="766c-53d8-3f54-618d">Continuous Damage</characteristic>
      </characteristics>
    </profile>
    <profile id="70d4-ce9a-fc41-0d1c" name="Light Rocket Launcher (Blast Mode)" publicationId="c98c-3c50-3d4f-04b5" hidden="false" typeId="823d-0831-7e58-14c1" typeName="Ranged Weapon">
      <characteristics>
        <characteristic name="8&quot;" typeId="7046-e56f-ef50-74c9">0</characteristic>
        <characteristic name="16&quot;" typeId="2ada-ee84-15b1-16de">+3</characteristic>
        <characteristic name="24&quot;" typeId="a76a-eeaf-1570-194a">+3</characteristic>
        <characteristic name="32&quot;" typeId="e949-94f9-a0ae-7cfb">-3</characteristic>
        <characteristic name="40&quot;" typeId="f7a4-faba-99f6-29fb">-6</characteristic>
        <characteristic name="48&quot;" typeId="91e4-92a2-a53d-3d19">-6</characteristic>
        <characteristic name="96&quot;" typeId="6afb-0457-2e94-f18a">-</characteristic>
        <characteristic name="PS" typeId="76b7-f614-c586-ebbc">7</characteristic>
        <characteristic name="B" typeId="84de-037e-e867-4da8">2</characteristic>
        <characteristic name="Ammo" typeId="d983-a03e-e480-712a">N</characteristic>
        <characteristic name="Save Attr." typeId="2f8f-e4af-90c5-d10c">ARM</characteristic>
        <characteristic name="Save Rolls" typeId="efdb-3922-b270-2241">1</characteristic>
        <characteristic name="Traits" typeId="766c-53d8-3f54-618d">Continuous Damage, Impact Template (Circular)</characteristic>
      </characteristics>
    </profile>
    <profile id="cc1d-27d2-e8d6-9f8b" name="Light Rocket Launcher (Hit Mode)" publicationId="c98c-3c50-3d4f-04b5" hidden="false" typeId="823d-0831-7e58-14c1" typeName="Ranged Weapon">
      <characteristics>
        <characteristic name="8&quot;" typeId="7046-e56f-ef50-74c9">0</characteristic>
        <characteristic name="16&quot;" typeId="2ada-ee84-15b1-16de">+3</characteristic>
        <characteristic name="24&quot;" typeId="a76a-eeaf-1570-194a">+3</characteristic>
        <characteristic name="32&quot;" typeId="e949-94f9-a0ae-7cfb">-3</characteristic>
        <characteristic name="40&quot;" typeId="f7a4-faba-99f6-29fb">-6</characteristic>
        <characteristic name="48&quot;" typeId="91e4-92a2-a53d-3d19">-6</characteristic>
        <characteristic name="96&quot;" typeId="6afb-0457-2e94-f18a">-</characteristic>
        <characteristic name="PS" typeId="76b7-f614-c586-ebbc">6</characteristic>
        <characteristic name="B" typeId="84de-037e-e867-4da8">2</characteristic>
        <characteristic name="Ammo" typeId="d983-a03e-e480-712a">N</characteristic>
        <characteristic name="Save Attr." typeId="2f8f-e4af-90c5-d10c">ARM</characteristic>
        <characteristic name="Save Rolls" typeId="efdb-3922-b270-2241">1</characteristic>
        <characteristic name="Traits" typeId="766c-53d8-3f54-618d">Continuous Damage</characteristic>
      </characteristics>
    </profile>
    <profile id="7142-dcdd-f6db-c497" name="Boarding Shotgun" publicationId="c98c-3c50-3d4f-04b5" hidden="false" typeId="823d-0831-7e58-14c1" typeName="Ranged Weapon">
      <characteristics>
        <characteristic name="8&quot;" typeId="7046-e56f-ef50-74c9">+6</characteristic>
        <characteristic name="16&quot;" typeId="2ada-ee84-15b1-16de">0</characteristic>
        <characteristic name="24&quot;" typeId="a76a-eeaf-1570-194a">-3</characteristic>
        <characteristic name="32&quot;" typeId="e949-94f9-a0ae-7cfb">-</characteristic>
        <characteristic name="40&quot;" typeId="f7a4-faba-99f6-29fb">-</characteristic>
        <characteristic name="48&quot;" typeId="91e4-92a2-a53d-3d19">-</characteristic>
        <characteristic name="96&quot;" typeId="6afb-0457-2e94-f18a">-</characteristic>
        <characteristic name="PS" typeId="76b7-f614-c586-ebbc">6</characteristic>
        <characteristic name="B" typeId="84de-037e-e867-4da8">2</characteristic>
        <characteristic name="Ammo" typeId="d983-a03e-e480-712a">AP</characteristic>
        <characteristic name="Save Attr." typeId="2f8f-e4af-90c5-d10c">ARM/2</characteristic>
        <characteristic name="Save Rolls" typeId="efdb-3922-b270-2241">1</characteristic>
        <characteristic name="Traits" typeId="766c-53d8-3f54-618d">-</characteristic>
      </characteristics>
    </profile>
    <profile id="ae80-f5e1-55d4-e3ed" name="Heavy Shotgun" publicationId="c98c-3c50-3d4f-04b5" hidden="false" typeId="823d-0831-7e58-14c1" typeName="Ranged Weapon">
      <characteristics>
        <characteristic name="8&quot;" typeId="7046-e56f-ef50-74c9">+6</characteristic>
        <characteristic name="16&quot;" typeId="2ada-ee84-15b1-16de">0</characteristic>
        <characteristic name="24&quot;" typeId="a76a-eeaf-1570-194a">-3</characteristic>
        <characteristic name="32&quot;" typeId="e949-94f9-a0ae-7cfb">-</characteristic>
        <characteristic name="40&quot;" typeId="f7a4-faba-99f6-29fb">-</characteristic>
        <characteristic name="48&quot;" typeId="91e4-92a2-a53d-3d19">-</characteristic>
        <characteristic name="96&quot;" typeId="6afb-0457-2e94-f18a">-</characteristic>
        <characteristic name="PS" typeId="76b7-f614-c586-ebbc">5</characteristic>
        <characteristic name="B" typeId="84de-037e-e867-4da8">2</characteristic>
        <characteristic name="Ammo" typeId="d983-a03e-e480-712a">AP</characteristic>
        <characteristic name="Save Attr." typeId="2f8f-e4af-90c5-d10c">ARM/2</characteristic>
        <characteristic name="Save Rolls" typeId="efdb-3922-b270-2241">1</characteristic>
        <characteristic name="Traits" typeId="766c-53d8-3f54-618d">-</characteristic>
      </characteristics>
    </profile>
    <profile id="ba3b-d4e2-3b8f-7293" name="Light Shotgun" publicationId="c98c-3c50-3d4f-04b5" hidden="false" typeId="823d-0831-7e58-14c1" typeName="Ranged Weapon">
      <characteristics>
        <characteristic name="8&quot;" typeId="7046-e56f-ef50-74c9">+6</characteristic>
        <characteristic name="16&quot;" typeId="2ada-ee84-15b1-16de">0</characteristic>
        <characteristic name="24&quot;" typeId="a76a-eeaf-1570-194a">-3</characteristic>
        <characteristic name="32&quot;" typeId="e949-94f9-a0ae-7cfb">-</characteristic>
        <characteristic name="40&quot;" typeId="f7a4-faba-99f6-29fb">-</characteristic>
        <characteristic name="48&quot;" typeId="91e4-92a2-a53d-3d19">-</characteristic>
        <characteristic name="96&quot;" typeId="6afb-0457-2e94-f18a">-</characteristic>
        <characteristic name="PS" typeId="76b7-f614-c586-ebbc">7</characteristic>
        <characteristic name="B" typeId="84de-037e-e867-4da8">2</characteristic>
        <characteristic name="Ammo" typeId="d983-a03e-e480-712a">N</characteristic>
        <characteristic name="Save Attr." typeId="2f8f-e4af-90c5-d10c">ARM</characteristic>
        <characteristic name="Save Rolls" typeId="efdb-3922-b270-2241">1</characteristic>
        <characteristic name="Traits" typeId="766c-53d8-3f54-618d">-</characteristic>
      </characteristics>
    </profile>
    <profile id="7c4b-8e85-5e6d-1d8c" name="T2 Boarding Shotgun" publicationId="c98c-3c50-3d4f-04b5" hidden="false" typeId="823d-0831-7e58-14c1" typeName="Ranged Weapon">
      <characteristics>
        <characteristic name="8&quot;" typeId="7046-e56f-ef50-74c9">+6</characteristic>
        <characteristic name="16&quot;" typeId="2ada-ee84-15b1-16de">0</characteristic>
        <characteristic name="24&quot;" typeId="a76a-eeaf-1570-194a">-3</characteristic>
        <characteristic name="32&quot;" typeId="e949-94f9-a0ae-7cfb">-</characteristic>
        <characteristic name="40&quot;" typeId="f7a4-faba-99f6-29fb">-</characteristic>
        <characteristic name="48&quot;" typeId="91e4-92a2-a53d-3d19">-</characteristic>
        <characteristic name="96&quot;" typeId="6afb-0457-2e94-f18a">-</characteristic>
        <characteristic name="PS" typeId="76b7-f614-c586-ebbc">6</characteristic>
        <characteristic name="B" typeId="84de-037e-e867-4da8">2</characteristic>
        <characteristic name="Ammo" typeId="d983-a03e-e480-712a">T2</characteristic>
        <characteristic name="Save Attr." typeId="2f8f-e4af-90c5-d10c">ARM</characteristic>
        <characteristic name="Save Rolls" typeId="efdb-3922-b270-2241">1</characteristic>
        <characteristic name="Traits" typeId="766c-53d8-3f54-618d">Anti-materiel</characteristic>
      </characteristics>
    </profile>
    <profile id="b194-05cc-a09c-caa0" name="Vulkan Shotgun" publicationId="c98c-3c50-3d4f-04b5" hidden="false" typeId="823d-0831-7e58-14c1" typeName="Ranged Weapon">
      <characteristics>
        <characteristic name="8&quot;" typeId="7046-e56f-ef50-74c9">+6</characteristic>
        <characteristic name="16&quot;" typeId="2ada-ee84-15b1-16de">0</characteristic>
        <characteristic name="24&quot;" typeId="a76a-eeaf-1570-194a">-3</characteristic>
        <characteristic name="32&quot;" typeId="e949-94f9-a0ae-7cfb">-</characteristic>
        <characteristic name="40&quot;" typeId="f7a4-faba-99f6-29fb">-</characteristic>
        <characteristic name="48&quot;" typeId="91e4-92a2-a53d-3d19">-</characteristic>
        <characteristic name="96&quot;" typeId="6afb-0457-2e94-f18a">-</characteristic>
        <characteristic name="PS" typeId="76b7-f614-c586-ebbc">6</characteristic>
        <characteristic name="B" typeId="84de-037e-e867-4da8">2</characteristic>
        <characteristic name="Ammo" typeId="d983-a03e-e480-712a">AP</characteristic>
        <characteristic name="Save Attr." typeId="2f8f-e4af-90c5-d10c">ARM/2</characteristic>
        <characteristic name="Save Rolls" typeId="efdb-3922-b270-2241">1</characteristic>
        <characteristic name="Traits" typeId="766c-53d8-3f54-618d">Continuous Damage</characteristic>
      </characteristics>
    </profile>
    <profile id="a6fa-4638-69ee-9b1c" name="AP Sniper Rifle" publicationId="c98c-3c50-3d4f-04b5" hidden="false" typeId="823d-0831-7e58-14c1" typeName="Ranged Weapon">
      <characteristics>
        <characteristic name="8&quot;" typeId="7046-e56f-ef50-74c9">-3</characteristic>
        <characteristic name="16&quot;" typeId="2ada-ee84-15b1-16de">0</characteristic>
        <characteristic name="24&quot;" typeId="a76a-eeaf-1570-194a">+3</characteristic>
        <characteristic name="32&quot;" typeId="e949-94f9-a0ae-7cfb">+3</characteristic>
        <characteristic name="40&quot;" typeId="f7a4-faba-99f6-29fb">+3</characteristic>
        <characteristic name="48&quot;" typeId="91e4-92a2-a53d-3d19">+3</characteristic>
        <characteristic name="96&quot;" typeId="6afb-0457-2e94-f18a">-3</characteristic>
        <characteristic name="PS" typeId="76b7-f614-c586-ebbc">5</characteristic>
        <characteristic name="B" typeId="84de-037e-e867-4da8">2</characteristic>
        <characteristic name="Ammo" typeId="d983-a03e-e480-712a">AP</characteristic>
        <characteristic name="Save Attr." typeId="2f8f-e4af-90c5-d10c">ARM/2</characteristic>
        <characteristic name="Save Rolls" typeId="efdb-3922-b270-2241">1</characteristic>
        <characteristic name="Traits" typeId="766c-53d8-3f54-618d">-</characteristic>
      </characteristics>
    </profile>
    <profile id="dc1f-0212-5b4d-ada4" name="K1 Sniper Rifle" publicationId="c98c-3c50-3d4f-04b5" hidden="false" typeId="823d-0831-7e58-14c1" typeName="Ranged Weapon">
      <characteristics>
        <characteristic name="8&quot;" typeId="7046-e56f-ef50-74c9">-3</characteristic>
        <characteristic name="16&quot;" typeId="2ada-ee84-15b1-16de">0</characteristic>
        <characteristic name="24&quot;" typeId="a76a-eeaf-1570-194a">+3</characteristic>
        <characteristic name="32&quot;" typeId="e949-94f9-a0ae-7cfb">+3</characteristic>
        <characteristic name="40&quot;" typeId="f7a4-faba-99f6-29fb">+3</characteristic>
        <characteristic name="48&quot;" typeId="91e4-92a2-a53d-3d19">+3</characteristic>
        <characteristic name="96&quot;" typeId="6afb-0457-2e94-f18a">-3</characteristic>
        <characteristic name="PS" typeId="76b7-f614-c586-ebbc">7</characteristic>
        <characteristic name="B" typeId="84de-037e-e867-4da8">2</characteristic>
        <characteristic name="Ammo" typeId="d983-a03e-e480-712a">N</characteristic>
        <characteristic name="Save Attr." typeId="2f8f-e4af-90c5-d10c">ARM=0</characteristic>
        <characteristic name="Save Rolls" typeId="efdb-3922-b270-2241">1</characteristic>
        <characteristic name="Traits" typeId="766c-53d8-3f54-618d">Anti-materiel</characteristic>
      </characteristics>
    </profile>
    <profile id="22cc-8ead-983f-8f67" name="MULTI Sniper Rifle" publicationId="c98c-3c50-3d4f-04b5" hidden="false" typeId="823d-0831-7e58-14c1" typeName="Ranged Weapon">
      <characteristics>
        <characteristic name="8&quot;" typeId="7046-e56f-ef50-74c9">-3</characteristic>
        <characteristic name="16&quot;" typeId="2ada-ee84-15b1-16de">0</characteristic>
        <characteristic name="24&quot;" typeId="a76a-eeaf-1570-194a">+3</characteristic>
        <characteristic name="32&quot;" typeId="e949-94f9-a0ae-7cfb">+3</characteristic>
        <characteristic name="40&quot;" typeId="f7a4-faba-99f6-29fb">+3</characteristic>
        <characteristic name="48&quot;" typeId="91e4-92a2-a53d-3d19">+3</characteristic>
        <characteristic name="96&quot;" typeId="6afb-0457-2e94-f18a">-3</characteristic>
        <characteristic name="PS" typeId="76b7-f614-c586-ebbc">5</characteristic>
        <characteristic name="B" typeId="84de-037e-e867-4da8">2</characteristic>
        <characteristic name="Ammo" typeId="d983-a03e-e480-712a">DA · AP · SHOCK</characteristic>
        <characteristic name="Save Attr." typeId="2f8f-e4af-90c5-d10c">ARM · ARM/2 · ARM</characteristic>
        <characteristic name="Save Rolls" typeId="efdb-3922-b270-2241">2 · 1 · 1</characteristic>
        <characteristic name="Traits" typeId="766c-53d8-3f54-618d">Anti-materiel (DA)</characteristic>
      </characteristics>
    </profile>
    <profile id="b056-ce53-ec8a-9206" name="Plasma Sniper Rifle (Blast Mode)" publicationId="c98c-3c50-3d4f-04b5" hidden="false" typeId="823d-0831-7e58-14c1" typeName="Ranged Weapon">
      <characteristics>
        <characteristic name="8&quot;" typeId="7046-e56f-ef50-74c9">-3</characteristic>
        <characteristic name="16&quot;" typeId="2ada-ee84-15b1-16de">0</characteristic>
        <characteristic name="24&quot;" typeId="a76a-eeaf-1570-194a">+3</characteristic>
        <characteristic name="32&quot;" typeId="e949-94f9-a0ae-7cfb">+3</characteristic>
        <characteristic name="40&quot;" typeId="f7a4-faba-99f6-29fb">+3</characteristic>
        <characteristic name="48&quot;" typeId="91e4-92a2-a53d-3d19">+3</characteristic>
        <characteristic name="96&quot;" typeId="6afb-0457-2e94-f18a">-3</characteristic>
        <characteristic name="PS" typeId="76b7-f614-c586-ebbc">6</characteristic>
        <characteristic name="B" typeId="84de-037e-e867-4da8">2</characteristic>
        <characteristic name="Ammo" typeId="d983-a03e-e480-712a">N</characteristic>
        <characteristic name="Save Attr." typeId="2f8f-e4af-90c5-d10c">ARM and BTS</characteristic>
        <characteristic name="Save Rolls" typeId="efdb-3922-b270-2241">1 and 1</characteristic>
        <characteristic name="Traits" typeId="766c-53d8-3f54-618d">Impact Template (Circular)</characteristic>
      </characteristics>
    </profile>
    <profile id="77c4-e99c-ec36-4780" name="Plasma Sniper Rifle (Hit Mode)" publicationId="c98c-3c50-3d4f-04b5" hidden="false" typeId="823d-0831-7e58-14c1" typeName="Ranged Weapon">
      <characteristics>
        <characteristic name="8&quot;" typeId="7046-e56f-ef50-74c9">-3</characteristic>
        <characteristic name="16&quot;" typeId="2ada-ee84-15b1-16de">0</characteristic>
        <characteristic name="24&quot;" typeId="a76a-eeaf-1570-194a">+3</characteristic>
        <characteristic name="32&quot;" typeId="e949-94f9-a0ae-7cfb">+3</characteristic>
        <characteristic name="40&quot;" typeId="f7a4-faba-99f6-29fb">+3</characteristic>
        <characteristic name="48&quot;" typeId="91e4-92a2-a53d-3d19">+3</characteristic>
        <characteristic name="96&quot;" typeId="6afb-0457-2e94-f18a">-3</characteristic>
        <characteristic name="PS" typeId="76b7-f614-c586-ebbc">5</characteristic>
        <characteristic name="B" typeId="84de-037e-e867-4da8">2</characteristic>
        <characteristic name="Ammo" typeId="d983-a03e-e480-712a">N</characteristic>
        <characteristic name="Save Attr." typeId="2f8f-e4af-90c5-d10c">ARM and BTS</characteristic>
        <characteristic name="Save Rolls" typeId="efdb-3922-b270-2241">1 and 1</characteristic>
        <characteristic name="Traits" typeId="766c-53d8-3f54-618d">-</characteristic>
      </characteristics>
    </profile>
    <profile id="c6da-d567-a9b2-bbb7" name="Sniper Rifle" publicationId="c98c-3c50-3d4f-04b5" hidden="false" typeId="823d-0831-7e58-14c1" typeName="Ranged Weapon">
      <characteristics>
        <characteristic name="8&quot;" typeId="7046-e56f-ef50-74c9">-3</characteristic>
        <characteristic name="16&quot;" typeId="2ada-ee84-15b1-16de">0</characteristic>
        <characteristic name="24&quot;" typeId="a76a-eeaf-1570-194a">+3</characteristic>
        <characteristic name="32&quot;" typeId="e949-94f9-a0ae-7cfb">+3</characteristic>
        <characteristic name="40&quot;" typeId="f7a4-faba-99f6-29fb">+3</characteristic>
        <characteristic name="48&quot;" typeId="91e4-92a2-a53d-3d19">+3</characteristic>
        <characteristic name="96&quot;" typeId="6afb-0457-2e94-f18a">-3</characteristic>
        <characteristic name="PS" typeId="76b7-f614-c586-ebbc">5</characteristic>
        <characteristic name="B" typeId="84de-037e-e867-4da8">2</characteristic>
        <characteristic name="Ammo" typeId="d983-a03e-e480-712a">SHOCK</characteristic>
        <characteristic name="Save Attr." typeId="2f8f-e4af-90c5-d10c">ARM</characteristic>
        <characteristic name="Save Rolls" typeId="efdb-3922-b270-2241">1</characteristic>
        <characteristic name="Traits" typeId="766c-53d8-3f54-618d">-</characteristic>
      </characteristics>
    </profile>
    <profile id="e60a-ec6c-de00-a20f" name="T2 Sniper Rifle" publicationId="c98c-3c50-3d4f-04b5" hidden="false" typeId="823d-0831-7e58-14c1" typeName="Ranged Weapon">
      <characteristics>
        <characteristic name="8&quot;" typeId="7046-e56f-ef50-74c9">-3</characteristic>
        <characteristic name="16&quot;" typeId="2ada-ee84-15b1-16de">0</characteristic>
        <characteristic name="24&quot;" typeId="a76a-eeaf-1570-194a">+3</characteristic>
        <characteristic name="32&quot;" typeId="e949-94f9-a0ae-7cfb">+3</characteristic>
        <characteristic name="40&quot;" typeId="f7a4-faba-99f6-29fb">+3</characteristic>
        <characteristic name="48&quot;" typeId="91e4-92a2-a53d-3d19">+3</characteristic>
        <characteristic name="96&quot;" typeId="6afb-0457-2e94-f18a">-3</characteristic>
        <characteristic name="PS" typeId="76b7-f614-c586-ebbc">5</characteristic>
        <characteristic name="B" typeId="84de-037e-e867-4da8">2</characteristic>
        <characteristic name="Ammo" typeId="d983-a03e-e480-712a">T2</characteristic>
        <characteristic name="Save Attr." typeId="2f8f-e4af-90c5-d10c">ARM</characteristic>
        <characteristic name="Save Rolls" typeId="efdb-3922-b270-2241">1</characteristic>
        <characteristic name="Traits" typeId="766c-53d8-3f54-618d">Anti-materiel</characteristic>
      </characteristics>
    </profile>
    <profile id="c549-e15a-7a30-516d" name="Viral Sniper Rifle" publicationId="c98c-3c50-3d4f-04b5" hidden="false" typeId="823d-0831-7e58-14c1" typeName="Ranged Weapon">
      <characteristics>
        <characteristic name="8&quot;" typeId="7046-e56f-ef50-74c9">-3</characteristic>
        <characteristic name="16&quot;" typeId="2ada-ee84-15b1-16de">0</characteristic>
        <characteristic name="24&quot;" typeId="a76a-eeaf-1570-194a">+3</characteristic>
        <characteristic name="32&quot;" typeId="e949-94f9-a0ae-7cfb">+3</characteristic>
        <characteristic name="40&quot;" typeId="f7a4-faba-99f6-29fb">+3</characteristic>
        <characteristic name="48&quot;" typeId="91e4-92a2-a53d-3d19">+3</characteristic>
        <characteristic name="96&quot;" typeId="6afb-0457-2e94-f18a">-3</characteristic>
        <characteristic name="PS" typeId="76b7-f614-c586-ebbc">5</characteristic>
        <characteristic name="B" typeId="84de-037e-e867-4da8">2</characteristic>
        <characteristic name="Ammo" typeId="d983-a03e-e480-712a">N</characteristic>
        <characteristic name="Save Attr." typeId="2f8f-e4af-90c5-d10c">BTS</characteristic>
        <characteristic name="Save Rolls" typeId="efdb-3922-b270-2241">1</characteristic>
        <characteristic name="Traits" typeId="766c-53d8-3f54-618d">BioWeapon (DA+Shock)</characteristic>
      </characteristics>
    </profile>
    <profile id="cd92-6d8d-8cb6-8a73" name="AP Spitfire" publicationId="c98c-3c50-3d4f-04b5" hidden="false" typeId="823d-0831-7e58-14c1" typeName="Ranged Weapon">
      <characteristics>
        <characteristic name="8&quot;" typeId="7046-e56f-ef50-74c9">0</characteristic>
        <characteristic name="16&quot;" typeId="2ada-ee84-15b1-16de">+3</characteristic>
        <characteristic name="24&quot;" typeId="a76a-eeaf-1570-194a">+3</characteristic>
        <characteristic name="32&quot;" typeId="e949-94f9-a0ae-7cfb">-3</characteristic>
        <characteristic name="40&quot;" typeId="f7a4-faba-99f6-29fb">-6</characteristic>
        <characteristic name="48&quot;" typeId="91e4-92a2-a53d-3d19">-6</characteristic>
        <characteristic name="96&quot;" typeId="6afb-0457-2e94-f18a">-</characteristic>
        <characteristic name="PS" typeId="76b7-f614-c586-ebbc">6</characteristic>
        <characteristic name="B" typeId="84de-037e-e867-4da8">4</characteristic>
        <characteristic name="Ammo" typeId="d983-a03e-e480-712a">AP</characteristic>
        <characteristic name="Save Attr." typeId="2f8f-e4af-90c5-d10c">ARM/2</characteristic>
        <characteristic name="Save Rolls" typeId="efdb-3922-b270-2241">1</characteristic>
        <characteristic name="Traits" typeId="766c-53d8-3f54-618d">Suppressive Fire</characteristic>
      </characteristics>
    </profile>
    <profile id="9c8e-baf5-4f4c-bc5e" name="MULTI Spitfire" publicationId="c98c-3c50-3d4f-04b5" hidden="false" typeId="823d-0831-7e58-14c1" typeName="Ranged Weapon">
      <characteristics>
        <characteristic name="8&quot;" typeId="7046-e56f-ef50-74c9">0</characteristic>
        <characteristic name="16&quot;" typeId="2ada-ee84-15b1-16de">+3</characteristic>
        <characteristic name="24&quot;" typeId="a76a-eeaf-1570-194a">+3</characteristic>
        <characteristic name="32&quot;" typeId="e949-94f9-a0ae-7cfb">-3</characteristic>
        <characteristic name="40&quot;" typeId="f7a4-faba-99f6-29fb">-6</characteristic>
        <characteristic name="48&quot;" typeId="91e4-92a2-a53d-3d19">-6</characteristic>
        <characteristic name="96&quot;" typeId="6afb-0457-2e94-f18a">-</characteristic>
        <characteristic name="PS" typeId="76b7-f614-c586-ebbc">6</characteristic>
        <characteristic name="B" typeId="84de-037e-e867-4da8">1 · 4 · 4</characteristic>
        <characteristic name="Ammo" typeId="d983-a03e-e480-712a">DA · AP · SHOCK</characteristic>
        <characteristic name="Save Attr." typeId="2f8f-e4af-90c5-d10c">ARM · ARM/2 · ARM</characteristic>
        <characteristic name="Save Rolls" typeId="efdb-3922-b270-2241">2 · 1 · 1</characteristic>
        <characteristic name="Traits" typeId="766c-53d8-3f54-618d">Anti-materiel (DA), Suppressive Fire (AP, SHOCK)</characteristic>
      </characteristics>
    </profile>
    <profile id="9abb-588f-671c-0596" name="Spitfire" publicationId="c98c-3c50-3d4f-04b5" hidden="false" typeId="823d-0831-7e58-14c1" typeName="Ranged Weapon">
      <characteristics>
        <characteristic name="8&quot;" typeId="7046-e56f-ef50-74c9">0</characteristic>
        <characteristic name="16&quot;" typeId="2ada-ee84-15b1-16de">+3</characteristic>
        <characteristic name="24&quot;" typeId="a76a-eeaf-1570-194a">+3</characteristic>
        <characteristic name="32&quot;" typeId="e949-94f9-a0ae-7cfb">-3</characteristic>
        <characteristic name="40&quot;" typeId="f7a4-faba-99f6-29fb">-6</characteristic>
        <characteristic name="48&quot;" typeId="91e4-92a2-a53d-3d19">-6</characteristic>
        <characteristic name="96&quot;" typeId="6afb-0457-2e94-f18a">-</characteristic>
        <characteristic name="PS" typeId="76b7-f614-c586-ebbc">6</characteristic>
        <characteristic name="B" typeId="84de-037e-e867-4da8">4</characteristic>
        <characteristic name="Ammo" typeId="d983-a03e-e480-712a">N</characteristic>
        <characteristic name="Save Attr." typeId="2f8f-e4af-90c5-d10c">ARM</characteristic>
        <characteristic name="Save Rolls" typeId="efdb-3922-b270-2241">1</characteristic>
        <characteristic name="Traits" typeId="766c-53d8-3f54-618d">Suppressive Fire</characteristic>
      </characteristics>
    </profile>
    <profile id="0415-8b9d-ada0-963d" name="AP Submachine Gun" publicationId="c98c-3c50-3d4f-04b5" hidden="false" typeId="823d-0831-7e58-14c1" typeName="Ranged Weapon">
      <characteristics>
        <characteristic name="8&quot;" typeId="7046-e56f-ef50-74c9">+3</characteristic>
        <characteristic name="16&quot;" typeId="2ada-ee84-15b1-16de">0</characteristic>
        <characteristic name="24&quot;" typeId="a76a-eeaf-1570-194a">-3</characteristic>
        <characteristic name="32&quot;" typeId="e949-94f9-a0ae-7cfb">-6</characteristic>
        <characteristic name="40&quot;" typeId="f7a4-faba-99f6-29fb">-</characteristic>
        <characteristic name="48&quot;" typeId="91e4-92a2-a53d-3d19">-</characteristic>
        <characteristic name="96&quot;" typeId="6afb-0457-2e94-f18a">-</characteristic>
        <characteristic name="PS" typeId="76b7-f614-c586-ebbc">7</characteristic>
        <characteristic name="B" typeId="84de-037e-e867-4da8">3</characteristic>
        <characteristic name="Ammo" typeId="d983-a03e-e480-712a">AP</characteristic>
        <characteristic name="Save Attr." typeId="2f8f-e4af-90c5-d10c">ARM/2</characteristic>
        <characteristic name="Save Rolls" typeId="efdb-3922-b270-2241">1</characteristic>
        <characteristic name="Traits" typeId="766c-53d8-3f54-618d">Suppressive Fire</characteristic>
      </characteristics>
    </profile>
    <profile id="109c-c1d9-93f7-c0cc" name="Submachine Gun" publicationId="c98c-3c50-3d4f-04b5" hidden="false" typeId="823d-0831-7e58-14c1" typeName="Ranged Weapon">
      <characteristics>
        <characteristic name="8&quot;" typeId="7046-e56f-ef50-74c9">+3</characteristic>
        <characteristic name="16&quot;" typeId="2ada-ee84-15b1-16de">0</characteristic>
        <characteristic name="24&quot;" typeId="a76a-eeaf-1570-194a">-3</characteristic>
        <characteristic name="32&quot;" typeId="e949-94f9-a0ae-7cfb">-6</characteristic>
        <characteristic name="40&quot;" typeId="f7a4-faba-99f6-29fb">-</characteristic>
        <characteristic name="48&quot;" typeId="91e4-92a2-a53d-3d19">-</characteristic>
        <characteristic name="96&quot;" typeId="6afb-0457-2e94-f18a">-</characteristic>
        <characteristic name="PS" typeId="76b7-f614-c586-ebbc">7</characteristic>
        <characteristic name="B" typeId="84de-037e-e867-4da8">3</characteristic>
        <characteristic name="Ammo" typeId="d983-a03e-e480-712a">N</characteristic>
        <characteristic name="Save Attr." typeId="2f8f-e4af-90c5-d10c">ARM</characteristic>
        <characteristic name="Save Rolls" typeId="efdb-3922-b270-2241">1</characteristic>
        <characteristic name="Traits" typeId="766c-53d8-3f54-618d">Suppressive Fire</characteristic>
      </characteristics>
    </profile>
    <profile id="a424-9e5d-68af-4419" name="AP Thunderbolt" publicationId="c98c-3c50-3d4f-04b5" hidden="false" typeId="823d-0831-7e58-14c1" typeName="Ranged Weapon">
      <characteristics>
        <characteristic name="8&quot;" typeId="7046-e56f-ef50-74c9">-3</characteristic>
        <characteristic name="16&quot;" typeId="2ada-ee84-15b1-16de">0</characteristic>
        <characteristic name="24&quot;" typeId="a76a-eeaf-1570-194a">+3</characteristic>
        <characteristic name="32&quot;" typeId="e949-94f9-a0ae-7cfb">+3</characteristic>
        <characteristic name="40&quot;" typeId="f7a4-faba-99f6-29fb">0</characteristic>
        <characteristic name="48&quot;" typeId="91e4-92a2-a53d-3d19">0</characteristic>
        <characteristic name="96&quot;" typeId="6afb-0457-2e94-f18a">-</characteristic>
        <characteristic name="PS" typeId="76b7-f614-c586-ebbc">6</characteristic>
        <characteristic name="B" typeId="84de-037e-e867-4da8">2</characteristic>
        <characteristic name="Ammo" typeId="d983-a03e-e480-712a">N</characteristic>
        <characteristic name="Save Attr." typeId="2f8f-e4af-90c5-d10c">ARM/2</characteristic>
        <characteristic name="Save Rolls" typeId="efdb-3922-b270-2241">1</characteristic>
        <characteristic name="Traits" typeId="766c-53d8-3f54-618d">-</characteristic>
      </characteristics>
    </profile>
    <profile id="2c8a-bcdf-6b37-2abb" name="Thunderbolt" publicationId="c98c-3c50-3d4f-04b5" hidden="false" typeId="823d-0831-7e58-14c1" typeName="Ranged Weapon">
      <characteristics>
        <characteristic name="8&quot;" typeId="7046-e56f-ef50-74c9">-3</characteristic>
        <characteristic name="16&quot;" typeId="2ada-ee84-15b1-16de">0</characteristic>
        <characteristic name="24&quot;" typeId="a76a-eeaf-1570-194a">+3</characteristic>
        <characteristic name="32&quot;" typeId="e949-94f9-a0ae-7cfb">+3</characteristic>
        <characteristic name="40&quot;" typeId="f7a4-faba-99f6-29fb">0</characteristic>
        <characteristic name="48&quot;" typeId="91e4-92a2-a53d-3d19">0</characteristic>
        <characteristic name="96&quot;" typeId="6afb-0457-2e94-f18a">-</characteristic>
        <characteristic name="PS" typeId="76b7-f614-c586-ebbc">6</characteristic>
        <characteristic name="B" typeId="84de-037e-e867-4da8">2</characteristic>
        <characteristic name="Ammo" typeId="d983-a03e-e480-712a">N</characteristic>
        <characteristic name="Save Attr." typeId="2f8f-e4af-90c5-d10c">ARM</characteristic>
        <characteristic name="Save Rolls" typeId="efdb-3922-b270-2241">1</characteristic>
        <characteristic name="Traits" typeId="766c-53d8-3f54-618d">-</characteristic>
      </characteristics>
    </profile>
    <profile id="a2b0-a83b-abf7-0332" name="Chain-Colt" publicationId="c98c-3c50-3d4f-04b5" hidden="false" typeId="823d-0831-7e58-14c1" typeName="Ranged Weapon">
      <characteristics>
        <characteristic name="8&quot;" typeId="7046-e56f-ef50-74c9">Small Teardrop</characteristic>
        <characteristic name="16&quot;" typeId="2ada-ee84-15b1-16de">-</characteristic>
        <characteristic name="24&quot;" typeId="a76a-eeaf-1570-194a">-</characteristic>
        <characteristic name="32&quot;" typeId="e949-94f9-a0ae-7cfb">-</characteristic>
        <characteristic name="40&quot;" typeId="f7a4-faba-99f6-29fb">-</characteristic>
        <characteristic name="48&quot;" typeId="91e4-92a2-a53d-3d19">-</characteristic>
        <characteristic name="96&quot;" typeId="6afb-0457-2e94-f18a">-</characteristic>
        <characteristic name="PS" typeId="76b7-f614-c586-ebbc">7</characteristic>
        <characteristic name="B" typeId="84de-037e-e867-4da8">1</characteristic>
        <characteristic name="Ammo" typeId="d983-a03e-e480-712a">N</characteristic>
        <characteristic name="Save Attr." typeId="2f8f-e4af-90c5-d10c">ARM</characteristic>
        <characteristic name="Save Rolls" typeId="efdb-3922-b270-2241">1</characteristic>
        <characteristic name="Traits" typeId="766c-53d8-3f54-618d">Intuitive Attack, Direct Template (Small Teardrop)</characteristic>
      </characteristics>
    </profile>
    <profile id="6ff1-2af2-44b7-8e95" name="Chain Rifle" publicationId="c98c-3c50-3d4f-04b5" hidden="false" typeId="823d-0831-7e58-14c1" typeName="Ranged Weapon">
      <characteristics>
        <characteristic name="8&quot;" typeId="7046-e56f-ef50-74c9">Large Teardrop</characteristic>
        <characteristic name="16&quot;" typeId="2ada-ee84-15b1-16de">-</characteristic>
        <characteristic name="24&quot;" typeId="a76a-eeaf-1570-194a">-</characteristic>
        <characteristic name="32&quot;" typeId="e949-94f9-a0ae-7cfb">-</characteristic>
        <characteristic name="40&quot;" typeId="f7a4-faba-99f6-29fb">-</characteristic>
        <characteristic name="48&quot;" typeId="91e4-92a2-a53d-3d19">-</characteristic>
        <characteristic name="96&quot;" typeId="6afb-0457-2e94-f18a">-</characteristic>
        <characteristic name="PS" typeId="76b7-f614-c586-ebbc">7</characteristic>
        <characteristic name="B" typeId="84de-037e-e867-4da8">1</characteristic>
        <characteristic name="Ammo" typeId="d983-a03e-e480-712a">N</characteristic>
        <characteristic name="Save Attr." typeId="2f8f-e4af-90c5-d10c">ARM</characteristic>
        <characteristic name="Save Rolls" typeId="efdb-3922-b270-2241">1</characteristic>
        <characteristic name="Traits" typeId="766c-53d8-3f54-618d">Intuitive Attack, Direct Template (Large Teardrop)</characteristic>
      </characteristics>
    </profile>
    <profile id="a1c6-532f-46fb-6d45" name="Contender" publicationId="c98c-3c50-3d4f-04b5" hidden="false" typeId="823d-0831-7e58-14c1" typeName="Ranged Weapon">
      <characteristics>
        <characteristic name="8&quot;" typeId="7046-e56f-ef50-74c9">0</characteristic>
        <characteristic name="16&quot;" typeId="2ada-ee84-15b1-16de">+3</characteristic>
        <characteristic name="24&quot;" typeId="a76a-eeaf-1570-194a">+3</characteristic>
        <characteristic name="32&quot;" typeId="e949-94f9-a0ae-7cfb">0</characteristic>
        <characteristic name="40&quot;" typeId="f7a4-faba-99f6-29fb">-</characteristic>
        <characteristic name="48&quot;" typeId="91e4-92a2-a53d-3d19">-</characteristic>
        <characteristic name="96&quot;" typeId="6afb-0457-2e94-f18a">-</characteristic>
        <characteristic name="PS" typeId="76b7-f614-c586-ebbc">7</characteristic>
        <characteristic name="B" typeId="84de-037e-e867-4da8">2</characteristic>
        <characteristic name="Ammo" typeId="d983-a03e-e480-712a">T2</characteristic>
        <characteristic name="Save Attr." typeId="2f8f-e4af-90c5-d10c">ARM</characteristic>
        <characteristic name="Save Rolls" typeId="efdb-3922-b270-2241">1</characteristic>
        <characteristic name="Traits" typeId="766c-53d8-3f54-618d">Anti-materiel</characteristic>
      </characteristics>
    </profile>
    <profile id="7069-67e7-3b10-040e" name="CrazyKoalas" publicationId="c98c-3c50-3d4f-04b5" hidden="false" typeId="823d-0831-7e58-14c1" typeName="Ranged Weapon">
      <characteristics>
        <characteristic name="8&quot;" typeId="7046-e56f-ef50-74c9">-</characteristic>
        <characteristic name="16&quot;" typeId="2ada-ee84-15b1-16de">-</characteristic>
        <characteristic name="24&quot;" typeId="a76a-eeaf-1570-194a">-</characteristic>
        <characteristic name="32&quot;" typeId="e949-94f9-a0ae-7cfb">-</characteristic>
        <characteristic name="40&quot;" typeId="f7a4-faba-99f6-29fb">-</characteristic>
        <characteristic name="48&quot;" typeId="91e4-92a2-a53d-3d19">-</characteristic>
        <characteristic name="96&quot;" typeId="6afb-0457-2e94-f18a">-</characteristic>
        <characteristic name="PS" typeId="76b7-f614-c586-ebbc">5</characteristic>
        <characteristic name="B" typeId="84de-037e-e867-4da8">1</characteristic>
        <characteristic name="Ammo" typeId="d983-a03e-e480-712a">SHOCK</characteristic>
        <characteristic name="Save Attr." typeId="2f8f-e4af-90c5-d10c">ARM</characteristic>
        <characteristic name="Save Rolls" typeId="efdb-3922-b270-2241">1</characteristic>
        <characteristic name="Traits" typeId="766c-53d8-3f54-618d">Disposable (2), Boost, Perimeter, Deployable</characteristic>
      </characteristics>
    </profile>
    <profile id="2d66-446f-a9af-1ba4" name="D-Charges (Demolition Mode)" publicationId="c98c-3c50-3d4f-04b5" hidden="false" typeId="823d-0831-7e58-14c1" typeName="Ranged Weapon">
      <characteristics>
        <characteristic name="8&quot;" typeId="7046-e56f-ef50-74c9">-</characteristic>
        <characteristic name="16&quot;" typeId="2ada-ee84-15b1-16de">-</characteristic>
        <characteristic name="24&quot;" typeId="a76a-eeaf-1570-194a">-</characteristic>
        <characteristic name="32&quot;" typeId="e949-94f9-a0ae-7cfb">-</characteristic>
        <characteristic name="40&quot;" typeId="f7a4-faba-99f6-29fb">-</characteristic>
        <characteristic name="48&quot;" typeId="91e4-92a2-a53d-3d19">-</characteristic>
        <characteristic name="96&quot;" typeId="6afb-0457-2e94-f18a">-</characteristic>
        <characteristic name="PS" typeId="76b7-f614-c586-ebbc">6</characteristic>
        <characteristic name="B" typeId="84de-037e-e867-4da8">1</characteristic>
        <characteristic name="Ammo" typeId="d983-a03e-e480-712a">AP+EXP</characteristic>
        <characteristic name="Save Attr." typeId="2f8f-e4af-90c5-d10c">ARM/2</characteristic>
        <characteristic name="Save Rolls" typeId="efdb-3922-b270-2241">3</characteristic>
        <characteristic name="Traits" typeId="766c-53d8-3f54-618d">Anti-materiel, Disposable (3)</characteristic>
      </characteristics>
    </profile>
    <profile id="11cc-d6b5-bde0-32ae" name="D-Charges (CC Mode)" publicationId="c98c-3c50-3d4f-04b5" hidden="false" typeId="354b-86b7-6889-2cfb" typeName="CC Weapon">
      <characteristics>
        <characteristic name="PS" typeId="8a39-81db-8fb4-7a5d">6</characteristic>
        <characteristic name="B" typeId="72d4-548e-6490-4171">1</characteristic>
        <characteristic name="Ammo" typeId="2915-1d89-9c05-198e">AP+EXP</characteristic>
        <characteristic name="Save Attr." typeId="ab0c-f7a7-8c87-f00d">ARM/2</characteristic>
        <characteristic name="Save Rolls" typeId="e492-5807-b9f5-be97">3</characteristic>
        <characteristic name="Traits" typeId="337b-7a28-801d-7808">Anti-materiel, CC, Disposable (3), Improvised</characteristic>
      </characteristics>
    </profile>
    <profile id="4c65-aa78-3a98-1850" name="Dazer" publicationId="c98c-3c50-3d4f-04b5" hidden="false" typeId="823d-0831-7e58-14c1" typeName="Ranged Weapon">
      <characteristics>
        <characteristic name="8&quot;" typeId="7046-e56f-ef50-74c9">-</characteristic>
        <characteristic name="16&quot;" typeId="2ada-ee84-15b1-16de">-</characteristic>
        <characteristic name="24&quot;" typeId="a76a-eeaf-1570-194a">-</characteristic>
        <characteristic name="32&quot;" typeId="e949-94f9-a0ae-7cfb">-</characteristic>
        <characteristic name="40&quot;" typeId="f7a4-faba-99f6-29fb">-</characteristic>
        <characteristic name="48&quot;" typeId="91e4-92a2-a53d-3d19">-</characteristic>
        <characteristic name="96&quot;" typeId="6afb-0457-2e94-f18a">-</characteristic>
        <characteristic name="PS" typeId="76b7-f614-c586-ebbc">-</characteristic>
        <characteristic name="B" typeId="84de-037e-e867-4da8">-</characteristic>
        <characteristic name="Ammo" typeId="d983-a03e-e480-712a">-</characteristic>
        <characteristic name="Save Attr." typeId="2f8f-e4af-90c5-d10c">-</characteristic>
        <characteristic name="Save Rolls" typeId="efdb-3922-b270-2241">-</characteristic>
        <characteristic name="Traits" typeId="766c-53d8-3f54-618d">Disposable (3), Deployable, Zone of Control</characteristic>
      </characteristics>
    </profile>
    <profile id="7d26-0456-30fe-18d1" name="Deactivator" publicationId="c98c-3c50-3d4f-04b5" hidden="false" typeId="823d-0831-7e58-14c1" typeName="Ranged Weapon">
      <characteristics>
        <characteristic name="8&quot;" typeId="7046-e56f-ef50-74c9">+6</characteristic>
        <characteristic name="16&quot;" typeId="2ada-ee84-15b1-16de">+3</characteristic>
        <characteristic name="24&quot;" typeId="a76a-eeaf-1570-194a">-6</characteristic>
        <characteristic name="32&quot;" typeId="e949-94f9-a0ae-7cfb">-</characteristic>
        <characteristic name="40&quot;" typeId="f7a4-faba-99f6-29fb">-</characteristic>
        <characteristic name="48&quot;" typeId="91e4-92a2-a53d-3d19">-</characteristic>
        <characteristic name="96&quot;" typeId="6afb-0457-2e94-f18a">-</characteristic>
        <characteristic name="PS" typeId="76b7-f614-c586-ebbc">-</characteristic>
        <characteristic name="B" typeId="84de-037e-e867-4da8">1</characteristic>
        <characteristic name="Ammo" typeId="d983-a03e-e480-712a">-</characteristic>
        <characteristic name="Save Attr." typeId="2f8f-e4af-90c5-d10c">-</characteristic>
        <characteristic name="Save Rolls" typeId="efdb-3922-b270-2241">-</characteristic>
        <characteristic name="Traits" typeId="766c-53d8-3f54-618d">BS Weapon (WIP)</characteristic>
      </characteristics>
    </profile>
    <profile id="8832-b234-3580-0c8d" name="Deployable Repeater" publicationId="c98c-3c50-3d4f-04b5" hidden="false" typeId="823d-0831-7e58-14c1" typeName="Ranged Weapon">
      <characteristics>
        <characteristic name="8&quot;" typeId="7046-e56f-ef50-74c9">-</characteristic>
        <characteristic name="16&quot;" typeId="2ada-ee84-15b1-16de">-</characteristic>
        <characteristic name="24&quot;" typeId="a76a-eeaf-1570-194a">-</characteristic>
        <characteristic name="32&quot;" typeId="e949-94f9-a0ae-7cfb">-</characteristic>
        <characteristic name="40&quot;" typeId="f7a4-faba-99f6-29fb">-</characteristic>
        <characteristic name="48&quot;" typeId="91e4-92a2-a53d-3d19">-</characteristic>
        <characteristic name="96&quot;" typeId="6afb-0457-2e94-f18a">-</characteristic>
        <characteristic name="PS" typeId="76b7-f614-c586-ebbc">-</characteristic>
        <characteristic name="B" typeId="84de-037e-e867-4da8">-</characteristic>
        <characteristic name="Ammo" typeId="d983-a03e-e480-712a">-</characteristic>
        <characteristic name="Save Attr." typeId="2f8f-e4af-90c5-d10c">-</characteristic>
        <characteristic name="Save Rolls" typeId="efdb-3922-b270-2241">-</characteristic>
        <characteristic name="Traits" typeId="766c-53d8-3f54-618d">Disposable (3), Deployable</characteristic>
      </characteristics>
    </profile>
    <profile id="6e56-eb2d-66f3-3848" name="Disco Baller" publicationId="c98c-3c50-3d4f-04b5" hidden="false" typeId="823d-0831-7e58-14c1" typeName="Ranged Weapon">
      <characteristics>
        <characteristic name="8&quot;" typeId="7046-e56f-ef50-74c9">0</characteristic>
        <characteristic name="16&quot;" typeId="2ada-ee84-15b1-16de">+3</characteristic>
        <characteristic name="24&quot;" typeId="a76a-eeaf-1570-194a">-3</characteristic>
        <characteristic name="32&quot;" typeId="e949-94f9-a0ae-7cfb">-6</characteristic>
        <characteristic name="40&quot;" typeId="f7a4-faba-99f6-29fb">-</characteristic>
        <characteristic name="48&quot;" typeId="91e4-92a2-a53d-3d19">-</characteristic>
        <characteristic name="96&quot;" typeId="6afb-0457-2e94-f18a">-</characteristic>
        <characteristic name="PS" typeId="76b7-f614-c586-ebbc">-</characteristic>
        <characteristic name="B" typeId="84de-037e-e867-4da8">1</characteristic>
        <characteristic name="Ammo" typeId="d983-a03e-e480-712a">-</characteristic>
        <characteristic name="Save Attr." typeId="2f8f-e4af-90c5-d10c">-</characteristic>
        <characteristic name="Save Rolls" typeId="efdb-3922-b270-2241">-</characteristic>
        <characteristic name="Traits" typeId="766c-53d8-3f54-618d">Speculative Attack, Disposable (2), Double Shot, Targetless</characteristic>
      </characteristics>
    </profile>
    <profile id="4ca2-6b99-b68f-b20d" name="Discover" publicationId="c98c-3c50-3d4f-04b5" hidden="false" typeId="823d-0831-7e58-14c1" typeName="Ranged Weapon">
      <characteristics>
        <characteristic name="8&quot;" typeId="7046-e56f-ef50-74c9">+3</characteristic>
        <characteristic name="16&quot;" typeId="2ada-ee84-15b1-16de">0</characteristic>
        <characteristic name="24&quot;" typeId="a76a-eeaf-1570-194a">0</characteristic>
        <characteristic name="32&quot;" typeId="e949-94f9-a0ae-7cfb">0</characteristic>
        <characteristic name="40&quot;" typeId="f7a4-faba-99f6-29fb">-3</characteristic>
        <characteristic name="48&quot;" typeId="91e4-92a2-a53d-3d19">-3</characteristic>
        <characteristic name="96&quot;" typeId="6afb-0457-2e94-f18a">-6</characteristic>
        <characteristic name="PS" typeId="76b7-f614-c586-ebbc">-</characteristic>
        <characteristic name="B" typeId="84de-037e-e867-4da8">-</characteristic>
        <characteristic name="Ammo" typeId="d983-a03e-e480-712a">-</characteristic>
        <characteristic name="Save Attr." typeId="2f8f-e4af-90c5-d10c">-</characteristic>
        <characteristic name="Save Rolls" typeId="efdb-3922-b270-2241">-</characteristic>
        <characteristic name="Traits" typeId="766c-53d8-3f54-618d">-</characteristic>
      </characteristics>
    </profile>
    <profile id="5102-a061-ae08-d689" name="E/Marat" publicationId="c98c-3c50-3d4f-04b5" hidden="false" typeId="823d-0831-7e58-14c1" typeName="Ranged Weapon">
      <characteristics>
        <characteristic name="8&quot;" typeId="7046-e56f-ef50-74c9">Large Teardrop</characteristic>
        <characteristic name="16&quot;" typeId="2ada-ee84-15b1-16de">-</characteristic>
        <characteristic name="24&quot;" typeId="a76a-eeaf-1570-194a">-</characteristic>
        <characteristic name="32&quot;" typeId="e949-94f9-a0ae-7cfb">-</characteristic>
        <characteristic name="40&quot;" typeId="f7a4-faba-99f6-29fb">-</characteristic>
        <characteristic name="48&quot;" typeId="91e4-92a2-a53d-3d19">-</characteristic>
        <characteristic name="96&quot;" typeId="6afb-0457-2e94-f18a">-</characteristic>
        <characteristic name="PS" typeId="76b7-f614-c586-ebbc">7</characteristic>
        <characteristic name="B" typeId="84de-037e-e867-4da8">1</characteristic>
        <characteristic name="Ammo" typeId="d983-a03e-e480-712a">E/M</characteristic>
        <characteristic name="Save Attr." typeId="2f8f-e4af-90c5-d10c">BTS/2</characteristic>
        <characteristic name="Save Rolls" typeId="efdb-3922-b270-2241">2</characteristic>
        <characteristic name="Traits" typeId="766c-53d8-3f54-618d">Intuitive Attack, Non-Lethal, Direct Template (Large Teardrop)</characteristic>
      </characteristics>
    </profile>
    <profile id="7223-07b9-1292-64f0" name="E/Mitter" publicationId="c98c-3c50-3d4f-04b5" hidden="false" typeId="823d-0831-7e58-14c1" typeName="Ranged Weapon">
      <characteristics>
        <characteristic name="8&quot;" typeId="7046-e56f-ef50-74c9">-3</characteristic>
        <characteristic name="16&quot;" typeId="2ada-ee84-15b1-16de">0</characteristic>
        <characteristic name="24&quot;" typeId="a76a-eeaf-1570-194a">+3</characteristic>
        <characteristic name="32&quot;" typeId="e949-94f9-a0ae-7cfb">+3</characteristic>
        <characteristic name="40&quot;" typeId="f7a4-faba-99f6-29fb">0</characteristic>
        <characteristic name="48&quot;" typeId="91e4-92a2-a53d-3d19">0</characteristic>
        <characteristic name="96&quot;" typeId="6afb-0457-2e94-f18a">-</characteristic>
        <characteristic name="PS" typeId="76b7-f614-c586-ebbc">7</characteristic>
        <characteristic name="B" typeId="84de-037e-e867-4da8">2</characteristic>
        <characteristic name="Ammo" typeId="d983-a03e-e480-712a">E/M</characteristic>
        <characteristic name="Save Attr." typeId="2f8f-e4af-90c5-d10c">BTS/2</characteristic>
        <characteristic name="Save Rolls" typeId="efdb-3922-b270-2241">2</characteristic>
        <characteristic name="Traits" typeId="766c-53d8-3f54-618d">Non-Lethal</characteristic>
      </characteristics>
    </profile>
    <profile id="5a5c-9f74-df17-b60f" name="FastPanda" publicationId="c98c-3c50-3d4f-04b5" hidden="false" typeId="823d-0831-7e58-14c1" typeName="Ranged Weapon">
      <characteristics>
        <characteristic name="8&quot;" typeId="7046-e56f-ef50-74c9">-</characteristic>
        <characteristic name="16&quot;" typeId="2ada-ee84-15b1-16de">-</characteristic>
        <characteristic name="24&quot;" typeId="a76a-eeaf-1570-194a">-</characteristic>
        <characteristic name="32&quot;" typeId="e949-94f9-a0ae-7cfb">-</characteristic>
        <characteristic name="40&quot;" typeId="f7a4-faba-99f6-29fb">-</characteristic>
        <characteristic name="48&quot;" typeId="91e4-92a2-a53d-3d19">-</characteristic>
        <characteristic name="96&quot;" typeId="6afb-0457-2e94-f18a">-</characteristic>
        <characteristic name="PS" typeId="76b7-f614-c586-ebbc">-</characteristic>
        <characteristic name="B" typeId="84de-037e-e867-4da8">1</characteristic>
        <characteristic name="Ammo" typeId="d983-a03e-e480-712a">-</characteristic>
        <characteristic name="Save Attr." typeId="2f8f-e4af-90c5-d10c">-</characteristic>
        <characteristic name="Save Rolls" typeId="efdb-3922-b270-2241">-</characteristic>
        <characteristic name="Traits" typeId="766c-53d8-3f54-618d">Disposable (1), Indiscriminate, Perimeter, Deployable, Zone of Control</characteristic>
      </characteristics>
    </profile>
    <profile id="ba59-7859-c098-9062" name="Feuerbach (Blast Mode)" publicationId="c98c-3c50-3d4f-04b5" hidden="false" typeId="823d-0831-7e58-14c1" typeName="Ranged Weapon">
      <characteristics>
        <characteristic name="8&quot;" typeId="7046-e56f-ef50-74c9">-3</characteristic>
        <characteristic name="16&quot;" typeId="2ada-ee84-15b1-16de">0</characteristic>
        <characteristic name="24&quot;" typeId="a76a-eeaf-1570-194a">+3</characteristic>
        <characteristic name="32&quot;" typeId="e949-94f9-a0ae-7cfb">+3</characteristic>
        <characteristic name="40&quot;" typeId="f7a4-faba-99f6-29fb">0</characteristic>
        <characteristic name="48&quot;" typeId="91e4-92a2-a53d-3d19">0</characteristic>
        <characteristic name="96&quot;" typeId="6afb-0457-2e94-f18a">-</characteristic>
        <characteristic name="PS" typeId="76b7-f614-c586-ebbc">6</characteristic>
        <characteristic name="B" typeId="84de-037e-e867-4da8">1</characteristic>
        <characteristic name="Ammo" typeId="d983-a03e-e480-712a">EXP</characteristic>
        <characteristic name="Save Attr." typeId="2f8f-e4af-90c5-d10c">ARM</characteristic>
        <characteristic name="Save Rolls" typeId="efdb-3922-b270-2241">3</characteristic>
        <characteristic name="Traits" typeId="766c-53d8-3f54-618d">Anti-materiel</characteristic>
      </characteristics>
    </profile>
    <profile id="3880-dbe0-2d67-f54b" name="Feuerbach (Burst Mode)" publicationId="c98c-3c50-3d4f-04b5" hidden="false" typeId="823d-0831-7e58-14c1" typeName="Ranged Weapon">
      <characteristics>
        <characteristic name="8&quot;" typeId="7046-e56f-ef50-74c9">-3</characteristic>
        <characteristic name="16&quot;" typeId="2ada-ee84-15b1-16de">0</characteristic>
        <characteristic name="24&quot;" typeId="a76a-eeaf-1570-194a">+3</characteristic>
        <characteristic name="32&quot;" typeId="e949-94f9-a0ae-7cfb">+3</characteristic>
        <characteristic name="40&quot;" typeId="f7a4-faba-99f6-29fb">0</characteristic>
        <characteristic name="48&quot;" typeId="91e4-92a2-a53d-3d19">0</characteristic>
        <characteristic name="96&quot;" typeId="6afb-0457-2e94-f18a">-</characteristic>
        <characteristic name="PS" typeId="76b7-f614-c586-ebbc">6</characteristic>
        <characteristic name="B" typeId="84de-037e-e867-4da8">2</characteristic>
        <characteristic name="Ammo" typeId="d983-a03e-e480-712a">AP+DA</characteristic>
        <characteristic name="Save Attr." typeId="2f8f-e4af-90c5-d10c">ARM/2</characteristic>
        <characteristic name="Save Rolls" typeId="efdb-3922-b270-2241">2</characteristic>
        <characteristic name="Traits" typeId="766c-53d8-3f54-618d">Anti-materiel</characteristic>
      </characteristics>
    </profile>
    <profile id="928e-fbde-9196-2147" name="Flash Pulse" publicationId="c98c-3c50-3d4f-04b5" hidden="false" typeId="823d-0831-7e58-14c1" typeName="Ranged Weapon">
      <characteristics>
        <characteristic name="8&quot;" typeId="7046-e56f-ef50-74c9">0</characteristic>
        <characteristic name="16&quot;" typeId="2ada-ee84-15b1-16de">+3</characteristic>
        <characteristic name="24&quot;" typeId="a76a-eeaf-1570-194a">+3</characteristic>
        <characteristic name="32&quot;" typeId="e949-94f9-a0ae-7cfb">-3</characteristic>
        <characteristic name="40&quot;" typeId="f7a4-faba-99f6-29fb">-3</characteristic>
        <characteristic name="48&quot;" typeId="91e4-92a2-a53d-3d19">-3</characteristic>
        <characteristic name="96&quot;" typeId="6afb-0457-2e94-f18a">-6</characteristic>
        <characteristic name="PS" typeId="76b7-f614-c586-ebbc">7</characteristic>
        <characteristic name="B" typeId="84de-037e-e867-4da8">1</characteristic>
        <characteristic name="Ammo" typeId="d983-a03e-e480-712a">STUN</characteristic>
        <characteristic name="Save Attr." typeId="2f8f-e4af-90c5-d10c">BTS</characteristic>
        <characteristic name="Save Rolls" typeId="efdb-3922-b270-2241">1</characteristic>
        <characteristic name="Traits" typeId="766c-53d8-3f54-618d">BS Weapon (WIP), Non-Lethal, State: Stunned</characteristic>
      </characteristics>
    </profile>
    <profile id="85fa-6c18-5036-44ed" name="Forward Observer" publicationId="c98c-3c50-3d4f-04b5" hidden="false" typeId="823d-0831-7e58-14c1" typeName="Ranged Weapon">
      <characteristics>
        <characteristic name="8&quot;" typeId="7046-e56f-ef50-74c9">0</characteristic>
        <characteristic name="16&quot;" typeId="2ada-ee84-15b1-16de">0</characteristic>
        <characteristic name="24&quot;" typeId="a76a-eeaf-1570-194a">0</characteristic>
        <characteristic name="32&quot;" typeId="e949-94f9-a0ae-7cfb">-3</characteristic>
        <characteristic name="40&quot;" typeId="f7a4-faba-99f6-29fb">-3</characteristic>
        <characteristic name="48&quot;" typeId="91e4-92a2-a53d-3d19">-3</characteristic>
        <characteristic name="96&quot;" typeId="6afb-0457-2e94-f18a">-6</characteristic>
        <characteristic name="PS" typeId="76b7-f614-c586-ebbc">-</characteristic>
        <characteristic name="B" typeId="84de-037e-e867-4da8">2</characteristic>
        <characteristic name="Ammo" typeId="d983-a03e-e480-712a">-</characteristic>
        <characteristic name="Save Attr." typeId="2f8f-e4af-90c5-d10c">-</characteristic>
        <characteristic name="Save Rolls" typeId="efdb-3922-b270-2241">-</characteristic>
        <characteristic name="Traits" typeId="766c-53d8-3f54-618d">BS Weapon (WIP), State: Targeted, Non-Lethal</characteristic>
      </characteristics>
    </profile>
    <profile id="0889-b154-f24b-6139" name="GizmoKit" publicationId="c98c-3c50-3d4f-04b5" hidden="false" typeId="823d-0831-7e58-14c1" typeName="Ranged Weapon">
      <characteristics>
        <characteristic name="8&quot;" typeId="7046-e56f-ef50-74c9">+3</characteristic>
        <characteristic name="16&quot;" typeId="2ada-ee84-15b1-16de">0</characteristic>
        <characteristic name="24&quot;" typeId="a76a-eeaf-1570-194a">-6</characteristic>
        <characteristic name="32&quot;" typeId="e949-94f9-a0ae-7cfb">-</characteristic>
        <characteristic name="40&quot;" typeId="f7a4-faba-99f6-29fb">-</characteristic>
        <characteristic name="48&quot;" typeId="91e4-92a2-a53d-3d19">-</characteristic>
        <characteristic name="96&quot;" typeId="6afb-0457-2e94-f18a">-</characteristic>
        <characteristic name="PS" typeId="76b7-f614-c586-ebbc">-</characteristic>
        <characteristic name="B" typeId="84de-037e-e867-4da8">1</characteristic>
        <characteristic name="Ammo" typeId="d983-a03e-e480-712a">-</characteristic>
        <characteristic name="Save Attr." typeId="2f8f-e4af-90c5-d10c">-</characteristic>
        <characteristic name="Save Rolls" typeId="efdb-3922-b270-2241">-</characteristic>
        <characteristic name="Traits" typeId="766c-53d8-3f54-618d">Non-Lethal</characteristic>
      </characteristics>
    </profile>
    <profile id="9fcf-b285-1ca1-1953" name="Hyper-Rapid Magnetic Cannon" publicationId="c98c-3c50-3d4f-04b5" hidden="false" typeId="823d-0831-7e58-14c1" typeName="Ranged Weapon">
      <characteristics>
        <characteristic name="8&quot;" typeId="7046-e56f-ef50-74c9">-3</characteristic>
        <characteristic name="16&quot;" typeId="2ada-ee84-15b1-16de">0</characteristic>
        <characteristic name="24&quot;" typeId="a76a-eeaf-1570-194a">+3</characteristic>
        <characteristic name="32&quot;" typeId="e949-94f9-a0ae-7cfb">+3</characteristic>
        <characteristic name="40&quot;" typeId="f7a4-faba-99f6-29fb">0</characteristic>
        <characteristic name="48&quot;" typeId="91e4-92a2-a53d-3d19">0</characteristic>
        <characteristic name="96&quot;" typeId="6afb-0457-2e94-f18a">-</characteristic>
        <characteristic name="PS" typeId="76b7-f614-c586-ebbc">5</characteristic>
        <characteristic name="B" typeId="84de-037e-e867-4da8">1 · 5 · 5</characteristic>
        <characteristic name="Ammo" typeId="d983-a03e-e480-712a">DA · AP · SHOCK</characteristic>
        <characteristic name="Save Attr." typeId="2f8f-e4af-90c5-d10c">ARM · ARM/2 · ARM</characteristic>
        <characteristic name="Save Rolls" typeId="efdb-3922-b270-2241">2 · 1 · 1</characteristic>
        <characteristic name="Traits" typeId="766c-53d8-3f54-618d">Anti-materiel (DA), Suppressive Fire (AP, SHOCK)</characteristic>
      </characteristics>
    </profile>
    <profile id="8b55-ceab-6a36-a8b5" name="Jammer" publicationId="c98c-3c50-3d4f-04b5" hidden="false" typeId="823d-0831-7e58-14c1" typeName="Ranged Weapon">
      <characteristics>
        <characteristic name="8&quot;" typeId="7046-e56f-ef50-74c9">-</characteristic>
        <characteristic name="16&quot;" typeId="2ada-ee84-15b1-16de">-</characteristic>
        <characteristic name="24&quot;" typeId="a76a-eeaf-1570-194a">-</characteristic>
        <characteristic name="32&quot;" typeId="e949-94f9-a0ae-7cfb">-</characteristic>
        <characteristic name="40&quot;" typeId="f7a4-faba-99f6-29fb">-</characteristic>
        <characteristic name="48&quot;" typeId="91e4-92a2-a53d-3d19">-</characteristic>
        <characteristic name="96&quot;" typeId="6afb-0457-2e94-f18a">-</characteristic>
        <characteristic name="PS" typeId="76b7-f614-c586-ebbc">7</characteristic>
        <characteristic name="B" typeId="84de-037e-e867-4da8">1</characteristic>
        <characteristic name="Ammo" typeId="d983-a03e-e480-712a">N</characteristic>
        <characteristic name="Save Attr." typeId="2f8f-e4af-90c5-d10c">BTS</characteristic>
        <characteristic name="Save Rolls" typeId="efdb-3922-b270-2241">1</characteristic>
        <characteristic name="Traits" typeId="766c-53d8-3f54-618d">BS Weapon (WIP), Comms Attack, Intuitive Attack, Disposable (2), State: Isolated, Non-Lethal, No Lof, Zone of Control</characteristic>
      </characteristics>
    </profile>
    <profile id="a32f-a21a-f671-fb69" name="Katyusha MRL" publicationId="c98c-3c50-3d4f-04b5" hidden="false" typeId="823d-0831-7e58-14c1" typeName="Ranged Weapon">
      <characteristics>
        <characteristic name="8&quot;" typeId="7046-e56f-ef50-74c9">-3</characteristic>
        <characteristic name="16&quot;" typeId="2ada-ee84-15b1-16de">+3</characteristic>
        <characteristic name="24&quot;" typeId="a76a-eeaf-1570-194a">+3</characteristic>
        <characteristic name="32&quot;" typeId="e949-94f9-a0ae-7cfb">0</characteristic>
        <characteristic name="40&quot;" typeId="f7a4-faba-99f6-29fb">0</characteristic>
        <characteristic name="48&quot;" typeId="91e4-92a2-a53d-3d19">-6</characteristic>
        <characteristic name="96&quot;" typeId="6afb-0457-2e94-f18a">-</characteristic>
        <characteristic name="PS" typeId="76b7-f614-c586-ebbc">6</characteristic>
        <characteristic name="B" typeId="84de-037e-e867-4da8">1</characteristic>
        <characteristic name="Ammo" typeId="d983-a03e-e480-712a">DA</characteristic>
        <characteristic name="Save Attr." typeId="2f8f-e4af-90c5-d10c">ARM</characteristic>
        <characteristic name="Save Rolls" typeId="efdb-3922-b270-2241">2</characteristic>
        <characteristic name="Traits" typeId="766c-53d8-3f54-618d">Anti-materiel, Speculative Attack, Impact Template (Circular)</characteristic>
      </characteristics>
    </profile>
    <profile id="3410-5083-0df4-7a0c" name="Madtraps" publicationId="c98c-3c50-3d4f-04b5" hidden="false" typeId="823d-0831-7e58-14c1" typeName="Ranged Weapon">
      <characteristics>
        <characteristic name="8&quot;" typeId="7046-e56f-ef50-74c9">-</characteristic>
        <characteristic name="16&quot;" typeId="2ada-ee84-15b1-16de">-</characteristic>
        <characteristic name="24&quot;" typeId="a76a-eeaf-1570-194a">-</characteristic>
        <characteristic name="32&quot;" typeId="e949-94f9-a0ae-7cfb">-</characteristic>
        <characteristic name="40&quot;" typeId="f7a4-faba-99f6-29fb">-</characteristic>
        <characteristic name="48&quot;" typeId="91e4-92a2-a53d-3d19">-</characteristic>
        <characteristic name="96&quot;" typeId="6afb-0457-2e94-f18a">-</characteristic>
        <characteristic name="PS" typeId="76b7-f614-c586-ebbc">-</characteristic>
        <characteristic name="B" typeId="84de-037e-e867-4da8">1</characteristic>
        <characteristic name="Ammo" typeId="d983-a03e-e480-712a">PARA</characteristic>
        <characteristic name="Save Attr." typeId="2f8f-e4af-90c5-d10c">PH-6</characteristic>
        <characteristic name="Save Rolls" typeId="efdb-3922-b270-2241">1</characteristic>
        <characteristic name="Traits" typeId="766c-53d8-3f54-618d">Disposable (2), Boost, Non-Lethal, Perimeter, Deployable</characteristic>
      </characteristics>
    </profile>
    <profile id="9039-435c-37e8-bace" name="MediKit" publicationId="c98c-3c50-3d4f-04b5" hidden="false" typeId="823d-0831-7e58-14c1" typeName="Ranged Weapon">
      <characteristics>
        <characteristic name="8&quot;" typeId="7046-e56f-ef50-74c9">+3</characteristic>
        <characteristic name="16&quot;" typeId="2ada-ee84-15b1-16de">0</characteristic>
        <characteristic name="24&quot;" typeId="a76a-eeaf-1570-194a">-6</characteristic>
        <characteristic name="32&quot;" typeId="e949-94f9-a0ae-7cfb">-</characteristic>
        <characteristic name="40&quot;" typeId="f7a4-faba-99f6-29fb">-</characteristic>
        <characteristic name="48&quot;" typeId="91e4-92a2-a53d-3d19">-</characteristic>
        <characteristic name="96&quot;" typeId="6afb-0457-2e94-f18a">-</characteristic>
        <characteristic name="PS" typeId="76b7-f614-c586-ebbc">-</characteristic>
        <characteristic name="B" typeId="84de-037e-e867-4da8">1</characteristic>
        <characteristic name="Ammo" typeId="d983-a03e-e480-712a">-</characteristic>
        <characteristic name="Save Attr." typeId="2f8f-e4af-90c5-d10c">-</characteristic>
        <characteristic name="Save Rolls" typeId="efdb-3922-b270-2241">-</characteristic>
        <characteristic name="Traits" typeId="766c-53d8-3f54-618d">Non-Lethal</characteristic>
      </characteristics>
    </profile>
    <profile id="8c1c-89ed-ef59-f053" name="Missile Launcher (Blast Mode)" publicationId="c98c-3c50-3d4f-04b5" hidden="false" typeId="823d-0831-7e58-14c1" typeName="Ranged Weapon">
      <characteristics>
        <characteristic name="8&quot;" typeId="7046-e56f-ef50-74c9">-3</characteristic>
        <characteristic name="16&quot;" typeId="2ada-ee84-15b1-16de">0</characteristic>
        <characteristic name="24&quot;" typeId="a76a-eeaf-1570-194a">0</characteristic>
        <characteristic name="32&quot;" typeId="e949-94f9-a0ae-7cfb">+3</characteristic>
        <characteristic name="40&quot;" typeId="f7a4-faba-99f6-29fb">+3</characteristic>
        <characteristic name="48&quot;" typeId="91e4-92a2-a53d-3d19">-3</characteristic>
        <characteristic name="96&quot;" typeId="6afb-0457-2e94-f18a">-3</characteristic>
        <characteristic name="PS" typeId="76b7-f614-c586-ebbc">6</characteristic>
        <characteristic name="B" typeId="84de-037e-e867-4da8">1</characteristic>
        <characteristic name="Ammo" typeId="d983-a03e-e480-712a">EXP</characteristic>
        <characteristic name="Save Attr." typeId="2f8f-e4af-90c5-d10c">ARM</characteristic>
        <characteristic name="Save Rolls" typeId="efdb-3922-b270-2241">3</characteristic>
        <characteristic name="Traits" typeId="766c-53d8-3f54-618d">Anti-materiel, Impact Template (Circular)</characteristic>
      </characteristics>
    </profile>
    <profile id="7660-fc80-d696-14b2" name="Missile Launcher (Hit Mode)" publicationId="c98c-3c50-3d4f-04b5" hidden="false" typeId="823d-0831-7e58-14c1" typeName="Ranged Weapon">
      <characteristics>
        <characteristic name="8&quot;" typeId="7046-e56f-ef50-74c9">-3</characteristic>
        <characteristic name="16&quot;" typeId="2ada-ee84-15b1-16de">0</characteristic>
        <characteristic name="24&quot;" typeId="a76a-eeaf-1570-194a">0</characteristic>
        <characteristic name="32&quot;" typeId="e949-94f9-a0ae-7cfb">+3</characteristic>
        <characteristic name="40&quot;" typeId="f7a4-faba-99f6-29fb">+3</characteristic>
        <characteristic name="48&quot;" typeId="91e4-92a2-a53d-3d19">-3</characteristic>
        <characteristic name="96&quot;" typeId="6afb-0457-2e94-f18a">-3</characteristic>
        <characteristic name="PS" typeId="76b7-f614-c586-ebbc">6</characteristic>
        <characteristic name="B" typeId="84de-037e-e867-4da8">1</characteristic>
        <characteristic name="Ammo" typeId="d983-a03e-e480-712a">AP+EXP</characteristic>
        <characteristic name="Save Attr." typeId="2f8f-e4af-90c5-d10c">ARM/2</characteristic>
        <characteristic name="Save Rolls" typeId="efdb-3922-b270-2241">3</characteristic>
        <characteristic name="Traits" typeId="766c-53d8-3f54-618d">Anti-materiel</characteristic>
      </characteristics>
    </profile>
    <profile id="4a3b-4a3c-4560-9edd" name="Mk12" publicationId="c98c-3c50-3d4f-04b5" hidden="false" typeId="823d-0831-7e58-14c1" typeName="Ranged Weapon">
      <characteristics>
        <characteristic name="8&quot;" typeId="7046-e56f-ef50-74c9">0</characteristic>
        <characteristic name="16&quot;" typeId="2ada-ee84-15b1-16de">+3</characteristic>
        <characteristic name="24&quot;" typeId="a76a-eeaf-1570-194a">+3</characteristic>
        <characteristic name="32&quot;" typeId="e949-94f9-a0ae-7cfb">-3</characteristic>
        <characteristic name="40&quot;" typeId="f7a4-faba-99f6-29fb">-6</characteristic>
        <characteristic name="48&quot;" typeId="91e4-92a2-a53d-3d19">-6</characteristic>
        <characteristic name="96&quot;" typeId="6afb-0457-2e94-f18a">-</characteristic>
        <characteristic name="PS" typeId="76b7-f614-c586-ebbc">5</characteristic>
        <characteristic name="B" typeId="84de-037e-e867-4da8">3</characteristic>
        <characteristic name="Ammo" typeId="d983-a03e-e480-712a">N</characteristic>
        <characteristic name="Save Attr." typeId="2f8f-e4af-90c5-d10c">ARM</characteristic>
        <characteristic name="Save Rolls" typeId="efdb-3922-b270-2241">1</characteristic>
        <characteristic name="Traits" typeId="766c-53d8-3f54-618d">Suppressive Fire</characteristic>
      </characteristics>
    </profile>
    <profile id="d399-2cf6-9a63-e184" name="Nanopulser" publicationId="c98c-3c50-3d4f-04b5" hidden="false" typeId="823d-0831-7e58-14c1" typeName="Ranged Weapon">
      <characteristics>
        <characteristic name="8&quot;" typeId="7046-e56f-ef50-74c9">Small Teardrop</characteristic>
        <characteristic name="16&quot;" typeId="2ada-ee84-15b1-16de">-</characteristic>
        <characteristic name="24&quot;" typeId="a76a-eeaf-1570-194a">-</characteristic>
        <characteristic name="32&quot;" typeId="e949-94f9-a0ae-7cfb">-</characteristic>
        <characteristic name="40&quot;" typeId="f7a4-faba-99f6-29fb">-</characteristic>
        <characteristic name="48&quot;" typeId="91e4-92a2-a53d-3d19">-</characteristic>
        <characteristic name="96&quot;" typeId="6afb-0457-2e94-f18a">-</characteristic>
        <characteristic name="PS" typeId="76b7-f614-c586-ebbc">7</characteristic>
        <characteristic name="B" typeId="84de-037e-e867-4da8">1</characteristic>
        <characteristic name="Ammo" typeId="d983-a03e-e480-712a">N</characteristic>
        <characteristic name="Save Attr." typeId="2f8f-e4af-90c5-d10c">BTS</characteristic>
        <characteristic name="Save Rolls" typeId="efdb-3922-b270-2241">1</characteristic>
        <characteristic name="Traits" typeId="766c-53d8-3f54-618d">Direct Template (Small Teardrop), Intuitive Attack</characteristic>
      </characteristics>
    </profile>
    <profile id="b596-a375-f821-cb65" name="Ohotnik" publicationId="c98c-3c50-3d4f-04b5" hidden="false" typeId="823d-0831-7e58-14c1" typeName="Ranged Weapon">
      <characteristics>
        <characteristic name="8&quot;" typeId="7046-e56f-ef50-74c9">0</characteristic>
        <characteristic name="16&quot;" typeId="2ada-ee84-15b1-16de">+3</characteristic>
        <characteristic name="24&quot;" typeId="a76a-eeaf-1570-194a">+3</characteristic>
        <characteristic name="32&quot;" typeId="e949-94f9-a0ae-7cfb">+3</characteristic>
        <characteristic name="40&quot;" typeId="f7a4-faba-99f6-29fb">0</characteristic>
        <characteristic name="48&quot;" typeId="91e4-92a2-a53d-3d19">-3</characteristic>
        <characteristic name="96&quot;" typeId="6afb-0457-2e94-f18a">-6</characteristic>
        <characteristic name="PS" typeId="76b7-f614-c586-ebbc">6</characteristic>
        <characteristic name="B" typeId="84de-037e-e867-4da8">2</characteristic>
        <characteristic name="Ammo" typeId="d983-a03e-e480-712a">T2</characteristic>
        <characteristic name="Save Attr." typeId="2f8f-e4af-90c5-d10c">ARM</characteristic>
        <characteristic name="Save Rolls" typeId="efdb-3922-b270-2241">1</characteristic>
        <characteristic name="Traits" typeId="766c-53d8-3f54-618d">Anti-materiel</characteristic>
      </characteristics>
    </profile>
    <profile id="4a06-cdac-c6bb-1ba6" name="Pitcher" publicationId="c98c-3c50-3d4f-04b5" hidden="false" typeId="823d-0831-7e58-14c1" typeName="Ranged Weapon">
      <characteristics>
        <characteristic name="8&quot;" typeId="7046-e56f-ef50-74c9">0</characteristic>
        <characteristic name="16&quot;" typeId="2ada-ee84-15b1-16de">0</characteristic>
        <characteristic name="24&quot;" typeId="a76a-eeaf-1570-194a">-3</characteristic>
        <characteristic name="32&quot;" typeId="e949-94f9-a0ae-7cfb">-6</characteristic>
        <characteristic name="40&quot;" typeId="f7a4-faba-99f6-29fb">-6</characteristic>
        <characteristic name="48&quot;" typeId="91e4-92a2-a53d-3d19">-6</characteristic>
        <characteristic name="96&quot;" typeId="6afb-0457-2e94-f18a">-</characteristic>
        <characteristic name="PS" typeId="76b7-f614-c586-ebbc">-</characteristic>
        <characteristic name="B" typeId="84de-037e-e867-4da8">1</characteristic>
        <characteristic name="Ammo" typeId="d983-a03e-e480-712a">-</characteristic>
        <characteristic name="Save Attr." typeId="2f8f-e4af-90c5-d10c">-</characteristic>
        <characteristic name="Save Rolls" typeId="efdb-3922-b270-2241">-</characteristic>
        <characteristic name="Traits" typeId="766c-53d8-3f54-618d">Speculative Attack, Disposable (2), Indiscriminate, Non-Lethal, Targetless</characteristic>
      </characteristics>
    </profile>
    <profile id="158e-7b91-0d68-570a" name="Portable Autocannon" publicationId="c98c-3c50-3d4f-04b5" hidden="false" typeId="823d-0831-7e58-14c1" typeName="Ranged Weapon">
      <characteristics>
        <characteristic name="8&quot;" typeId="7046-e56f-ef50-74c9">-3</characteristic>
        <characteristic name="16&quot;" typeId="2ada-ee84-15b1-16de">0</characteristic>
        <characteristic name="24&quot;" typeId="a76a-eeaf-1570-194a">+3</characteristic>
        <characteristic name="32&quot;" typeId="e949-94f9-a0ae-7cfb">+3</characteristic>
        <characteristic name="40&quot;" typeId="f7a4-faba-99f6-29fb">-3</characteristic>
        <characteristic name="48&quot;" typeId="91e4-92a2-a53d-3d19">-3</characteristic>
        <characteristic name="96&quot;" typeId="6afb-0457-2e94-f18a">-</characteristic>
        <characteristic name="PS" typeId="76b7-f614-c586-ebbc">5</characteristic>
        <characteristic name="B" typeId="84de-037e-e867-4da8">2</characteristic>
        <characteristic name="Ammo" typeId="d983-a03e-e480-712a">AP+EXP</characteristic>
        <characteristic name="Save Attr." typeId="2f8f-e4af-90c5-d10c">ARM/2</characteristic>
        <characteristic name="Save Rolls" typeId="efdb-3922-b270-2241">3</characteristic>
        <characteristic name="Traits" typeId="766c-53d8-3f54-618d">Anti-materiel</characteristic>
      </characteristics>
    </profile>
    <profile id="f6f3-3e91-a79d-a0fb" name="Pulzar" publicationId="c98c-3c50-3d4f-04b5" hidden="false" typeId="823d-0831-7e58-14c1" typeName="Ranged Weapon">
      <characteristics>
        <characteristic name="8&quot;" typeId="7046-e56f-ef50-74c9">Large Teardrop</characteristic>
        <characteristic name="16&quot;" typeId="2ada-ee84-15b1-16de">-</characteristic>
        <characteristic name="24&quot;" typeId="a76a-eeaf-1570-194a">-</characteristic>
        <characteristic name="32&quot;" typeId="e949-94f9-a0ae-7cfb">-</characteristic>
        <characteristic name="40&quot;" typeId="f7a4-faba-99f6-29fb">-</characteristic>
        <characteristic name="48&quot;" typeId="91e4-92a2-a53d-3d19">-</characteristic>
        <characteristic name="96&quot;" typeId="6afb-0457-2e94-f18a">-</characteristic>
        <characteristic name="PS" typeId="76b7-f614-c586-ebbc">7</characteristic>
        <characteristic name="B" typeId="84de-037e-e867-4da8">1</characteristic>
        <characteristic name="Ammo" typeId="d983-a03e-e480-712a">N</characteristic>
        <characteristic name="Save Attr." typeId="2f8f-e4af-90c5-d10c">BTS</characteristic>
        <characteristic name="Save Rolls" typeId="efdb-3922-b270-2241">1</characteristic>
        <characteristic name="Traits" typeId="766c-53d8-3f54-618d">Intuitive Attack, Direct Template (Large Teardrop)</characteristic>
      </characteristics>
    </profile>
    <profile id="3fe9-5ef3-a1a0-42f4" name="Sepsitor" publicationId="c98c-3c50-3d4f-04b5" hidden="false" typeId="823d-0831-7e58-14c1" typeName="Ranged Weapon">
      <characteristics>
        <characteristic name="8&quot;" typeId="7046-e56f-ef50-74c9">Large Teardrop</characteristic>
        <characteristic name="16&quot;" typeId="2ada-ee84-15b1-16de">-</characteristic>
        <characteristic name="24&quot;" typeId="a76a-eeaf-1570-194a">-</characteristic>
        <characteristic name="32&quot;" typeId="e949-94f9-a0ae-7cfb">-</characteristic>
        <characteristic name="40&quot;" typeId="f7a4-faba-99f6-29fb">-</characteristic>
        <characteristic name="48&quot;" typeId="91e4-92a2-a53d-3d19">-</characteristic>
        <characteristic name="96&quot;" typeId="6afb-0457-2e94-f18a">-</characteristic>
        <characteristic name="PS" typeId="76b7-f614-c586-ebbc">4</characteristic>
        <characteristic name="B" typeId="84de-037e-e867-4da8">1</characteristic>
        <characteristic name="Ammo" typeId="d983-a03e-e480-712a">-</characteristic>
        <characteristic name="Save Attr." typeId="2f8f-e4af-90c5-d10c">BTS</characteristic>
        <characteristic name="Save Rolls" typeId="efdb-3922-b270-2241">1</characteristic>
        <characteristic name="Traits" typeId="766c-53d8-3f54-618d">Intuitive Attack, Disposable (2), Direct Template (Large Teardrop), State: Sepsitorized</characteristic>
      </characteristics>
    </profile>
    <profile id="451a-46f9-4034-1db0" name="Sepsitor Plus" publicationId="c98c-3c50-3d4f-04b5" hidden="false" typeId="823d-0831-7e58-14c1" typeName="Ranged Weapon">
      <characteristics>
        <characteristic name="8&quot;" typeId="7046-e56f-ef50-74c9">Large Teardrop</characteristic>
        <characteristic name="16&quot;" typeId="2ada-ee84-15b1-16de">-</characteristic>
        <characteristic name="24&quot;" typeId="a76a-eeaf-1570-194a">-</characteristic>
        <characteristic name="32&quot;" typeId="e949-94f9-a0ae-7cfb">-</characteristic>
        <characteristic name="40&quot;" typeId="f7a4-faba-99f6-29fb">-</characteristic>
        <characteristic name="48&quot;" typeId="91e4-92a2-a53d-3d19">-</characteristic>
        <characteristic name="96&quot;" typeId="6afb-0457-2e94-f18a">-</characteristic>
        <characteristic name="PS" typeId="76b7-f614-c586-ebbc">3</characteristic>
        <characteristic name="B" typeId="84de-037e-e867-4da8">1</characteristic>
        <characteristic name="Ammo" typeId="d983-a03e-e480-712a">-</characteristic>
        <characteristic name="Save Attr." typeId="2f8f-e4af-90c5-d10c">BTS</characteristic>
        <characteristic name="Save Rolls" typeId="efdb-3922-b270-2241">1</characteristic>
        <characteristic name="Traits" typeId="766c-53d8-3f54-618d">Intuitive Attack, Direct Template (Large Teardrop), State: Sepsitorized</characteristic>
      </characteristics>
    </profile>
    <profile id="1ce6-ed65-6d6e-e231" name="Suppressive Fire Mode" publicationId="c98c-3c50-3d4f-04b5" hidden="false" typeId="823d-0831-7e58-14c1" typeName="Ranged Weapon">
      <characteristics>
        <characteristic name="8&quot;" typeId="7046-e56f-ef50-74c9">0</characteristic>
        <characteristic name="16&quot;" typeId="2ada-ee84-15b1-16de">0</characteristic>
        <characteristic name="24&quot;" typeId="a76a-eeaf-1570-194a">-3</characteristic>
        <characteristic name="32&quot;" typeId="e949-94f9-a0ae-7cfb">-</characteristic>
        <characteristic name="40&quot;" typeId="f7a4-faba-99f6-29fb">-</characteristic>
        <characteristic name="48&quot;" typeId="91e4-92a2-a53d-3d19">-</characteristic>
        <characteristic name="96&quot;" typeId="6afb-0457-2e94-f18a">-</characteristic>
        <characteristic name="PS" typeId="76b7-f614-c586-ebbc">*</characteristic>
        <characteristic name="B" typeId="84de-037e-e867-4da8">3</characteristic>
        <characteristic name="Ammo" typeId="d983-a03e-e480-712a">*</characteristic>
        <characteristic name="Save Attr." typeId="2f8f-e4af-90c5-d10c">*</characteristic>
        <characteristic name="Save Rolls" typeId="efdb-3922-b270-2241">*</characteristic>
        <characteristic name="Traits" typeId="766c-53d8-3f54-618d">-</characteristic>
      </characteristics>
    </profile>
    <profile id="25f4-b80f-511f-2dd0" name="Uragan MRL (Blast Mode)" publicationId="c98c-3c50-3d4f-04b5" hidden="false" typeId="823d-0831-7e58-14c1" typeName="Ranged Weapon">
      <characteristics>
        <characteristic name="8&quot;" typeId="7046-e56f-ef50-74c9">-3</characteristic>
        <characteristic name="16&quot;" typeId="2ada-ee84-15b1-16de">+3</characteristic>
        <characteristic name="24&quot;" typeId="a76a-eeaf-1570-194a">+3</characteristic>
        <characteristic name="32&quot;" typeId="e949-94f9-a0ae-7cfb">0</characteristic>
        <characteristic name="40&quot;" typeId="f7a4-faba-99f6-29fb">0</characteristic>
        <characteristic name="48&quot;" typeId="91e4-92a2-a53d-3d19">-6</characteristic>
        <characteristic name="96&quot;" typeId="6afb-0457-2e94-f18a">-</characteristic>
        <characteristic name="PS" typeId="76b7-f614-c586-ebbc">6</characteristic>
        <characteristic name="B" typeId="84de-037e-e867-4da8">3</characteristic>
        <characteristic name="Ammo" typeId="d983-a03e-e480-712a">AP+SHOCK</characteristic>
        <characteristic name="Save Attr." typeId="2f8f-e4af-90c5-d10c">ARM/2</characteristic>
        <characteristic name="Save Rolls" typeId="efdb-3922-b270-2241">1</characteristic>
        <characteristic name="Traits" typeId="766c-53d8-3f54-618d">Speculative Attack, Impact Template (Circular), Burst: Single Target</characteristic>
      </characteristics>
    </profile>
    <profile id="e514-82cf-8c01-608b" name="Uragan MRL (Hit Mode)" publicationId="c98c-3c50-3d4f-04b5" hidden="false" typeId="823d-0831-7e58-14c1" typeName="Ranged Weapon">
      <characteristics>
        <characteristic name="8&quot;" typeId="7046-e56f-ef50-74c9">-3</characteristic>
        <characteristic name="16&quot;" typeId="2ada-ee84-15b1-16de">+3</characteristic>
        <characteristic name="24&quot;" typeId="a76a-eeaf-1570-194a">+3</characteristic>
        <characteristic name="32&quot;" typeId="e949-94f9-a0ae-7cfb">0</characteristic>
        <characteristic name="40&quot;" typeId="f7a4-faba-99f6-29fb">0</characteristic>
        <characteristic name="48&quot;" typeId="91e4-92a2-a53d-3d19">-6</characteristic>
        <characteristic name="96&quot;" typeId="6afb-0457-2e94-f18a">-</characteristic>
        <characteristic name="PS" typeId="76b7-f614-c586-ebbc">5</characteristic>
        <characteristic name="B" typeId="84de-037e-e867-4da8">3</characteristic>
        <characteristic name="Ammo" typeId="d983-a03e-e480-712a">AP+SHOCK</characteristic>
        <characteristic name="Save Attr." typeId="2f8f-e4af-90c5-d10c">ARM/2</characteristic>
        <characteristic name="Save Rolls" typeId="efdb-3922-b270-2241">1</characteristic>
        <characteristic name="Traits" typeId="766c-53d8-3f54-618d">Burst: Single Target</characteristic>
      </characteristics>
    </profile>
    <profile id="52b3-5727-3898-07eb" name="Zapper" publicationId="c98c-3c50-3d4f-04b5" hidden="false" typeId="823d-0831-7e58-14c1" typeName="Ranged Weapon">
      <characteristics>
        <characteristic name="8&quot;" typeId="7046-e56f-ef50-74c9">Small Teardrop</characteristic>
        <characteristic name="16&quot;" typeId="2ada-ee84-15b1-16de">-</characteristic>
        <characteristic name="24&quot;" typeId="a76a-eeaf-1570-194a">-</characteristic>
        <characteristic name="32&quot;" typeId="e949-94f9-a0ae-7cfb">-</characteristic>
        <characteristic name="40&quot;" typeId="f7a4-faba-99f6-29fb">-</characteristic>
        <characteristic name="48&quot;" typeId="91e4-92a2-a53d-3d19">-</characteristic>
        <characteristic name="96&quot;" typeId="6afb-0457-2e94-f18a">-</characteristic>
        <characteristic name="PS" typeId="76b7-f614-c586-ebbc">7</characteristic>
        <characteristic name="B" typeId="84de-037e-e867-4da8">1</characteristic>
        <characteristic name="Ammo" typeId="d983-a03e-e480-712a">E/M</characteristic>
        <characteristic name="Save Attr." typeId="2f8f-e4af-90c5-d10c">BTS/2</characteristic>
        <characteristic name="Save Rolls" typeId="efdb-3922-b270-2241">2</characteristic>
        <characteristic name="Traits" typeId="766c-53d8-3f54-618d">Intuitive Attack, Non-Lethal, Direct Template (Small Teardrop)</characteristic>
      </characteristics>
    </profile>
    <profile id="aea2-83d8-b482-9efa" name="Assisted Fire" publicationId="c98c-3c50-3d4f-04b5" hidden="false" typeId="3ad5-fa92-4523-377e" typeName="Hacking Program">
      <characteristics>
        <characteristic name="Attack MOD" typeId="4b6c-3fd6-2b42-1f9e">-</characteristic>
        <characteristic name="Opp. MOD" typeId="cb83-ad55-e894-56bd">-</characteristic>
        <characteristic name="PS" typeId="8c33-a714-8975-d14b">-</characteristic>
        <characteristic name="Burst" typeId="d98a-b2cb-9190-5fbd">-</characteristic>
        <characteristic name="Target" typeId="6c84-83ff-69f2-6eec">REM</characteristic>
        <characteristic name="Skill Type" typeId="8ffe-05cb-ef94-65c1">Long Skill</characteristic>
        <characteristic name="Special" typeId="90b5-3067-d7ae-e321">Target Model gains Marksmanship.</characteristic>
      </characteristics>
    </profile>
    <profile id="1af1-9ae7-a239-52be" name="Carbonite" publicationId="c98c-3c50-3d4f-04b5" hidden="false" typeId="3ad5-fa92-4523-377e" typeName="Hacking Program">
      <characteristics>
        <characteristic name="Attack MOD" typeId="4b6c-3fd6-2b42-1f9e">0</characteristic>
        <characteristic name="Opp. MOD" typeId="cb83-ad55-e894-56bd">0</characteristic>
        <characteristic name="PS" typeId="8c33-a714-8975-d14b">7</characteristic>
        <characteristic name="Burst" typeId="d98a-b2cb-9190-5fbd">2</characteristic>
        <characteristic name="Target" typeId="6c84-83ff-69f2-6eec">TAG, HI, REM, VH, Hacker</characteristic>
        <characteristic name="Skill Type" typeId="8ffe-05cb-ef94-65c1">Short Skill / ARO</characteristic>
        <characteristic name="Special" typeId="90b5-3067-d7ae-e321">DA Ammo, Non-Lethal, State: Immobilized-B.</characteristic>
      </characteristics>
    </profile>
    <profile id="4520-cc48-1994-0bc7" name="Controlled Jump" publicationId="c98c-3c50-3d4f-04b5" hidden="false" typeId="3ad5-fa92-4523-377e" typeName="Hacking Program">
      <characteristics>
        <characteristic name="Attack MOD" typeId="4b6c-3fd6-2b42-1f9e">-</characteristic>
        <characteristic name="Opp. MOD" typeId="cb83-ad55-e894-56bd">-</characteristic>
        <characteristic name="PS" typeId="8c33-a714-8975-d14b">-</characteristic>
        <characteristic name="Burst" typeId="d98a-b2cb-9190-5fbd">-</characteristic>
        <characteristic name="Target" typeId="6c84-83ff-69f2-6eec">-</characteristic>
        <characteristic name="Skill Type" typeId="8ffe-05cb-ef94-65c1">Short Skill / ARO</characteristic>
        <characteristic name="Special" typeId="90b5-3067-d7ae-e321">+3/-3 MOD to the PH of every Trooper that performs Combat Jump.</characteristic>
      </characteristics>
    </profile>
    <profile id="d2f0-5b18-3a6b-0e16" name="Cybermask" publicationId="c98c-3c50-3d4f-04b5" hidden="false" typeId="3ad5-fa92-4523-377e" typeName="Hacking Program">
      <characteristics>
        <characteristic name="Attack MOD" typeId="4b6c-3fd6-2b42-1f9e">-</characteristic>
        <characteristic name="Opp. MOD" typeId="cb83-ad55-e894-56bd">-</characteristic>
        <characteristic name="PS" typeId="8c33-a714-8975-d14b">-</characteristic>
        <characteristic name="Burst" typeId="d98a-b2cb-9190-5fbd">-</characteristic>
        <characteristic name="Target" typeId="6c84-83ff-69f2-6eec">-</characteristic>
        <characteristic name="Skill Type" typeId="8ffe-05cb-ef94-65c1">Long Skill</characteristic>
        <characteristic name="Special" typeId="90b5-3067-d7ae-e321">Replace user with IMP-2 Marker.</characteristic>
      </characteristics>
    </profile>
    <profile id="2b7c-db63-ea51-6b2b" name="Enhanced Reaction" publicationId="c98c-3c50-3d4f-04b5" hidden="false" typeId="3ad5-fa92-4523-377e" typeName="Hacking Program">
      <characteristics>
        <characteristic name="Attack MOD" typeId="4b6c-3fd6-2b42-1f9e">-</characteristic>
        <characteristic name="Opp. MOD" typeId="cb83-ad55-e894-56bd">-</characteristic>
        <characteristic name="PS" typeId="8c33-a714-8975-d14b">-</characteristic>
        <characteristic name="Burst" typeId="d98a-b2cb-9190-5fbd">-</characteristic>
        <characteristic name="Target" typeId="6c84-83ff-69f2-6eec">REM</characteristic>
        <characteristic name="Skill Type" typeId="8ffe-05cb-ef94-65c1">Long Skill</characteristic>
        <characteristic name="Special" typeId="90b5-3067-d7ae-e321">Target gains B2 in ARO.</characteristic>
      </characteristics>
    </profile>
    <profile id="c498-9578-971a-0050" name="Fairy Dust" publicationId="c98c-3c50-3d4f-04b5" hidden="false" typeId="3ad5-fa92-4523-377e" typeName="Hacking Program">
      <characteristics>
        <characteristic name="Attack MOD" typeId="4b6c-3fd6-2b42-1f9e">-</characteristic>
        <characteristic name="Opp. MOD" typeId="cb83-ad55-e894-56bd">-</characteristic>
        <characteristic name="PS" typeId="8c33-a714-8975-d14b">-</characteristic>
        <characteristic name="Burst" typeId="d98a-b2cb-9190-5fbd">-</characteristic>
        <characteristic name="Target" typeId="6c84-83ff-69f2-6eec">TAG, REM, HI, VH</characteristic>
        <characteristic name="Skill Type" typeId="8ffe-05cb-ef94-65c1">Long Skill</characteristic>
        <characteristic name="Special" typeId="90b5-3067-d7ae-e321">The targets gain Firewall MODs.</characteristic>
      </characteristics>
    </profile>
    <profile id="5d2c-02b6-53ce-1b2a" name="Oblivion" publicationId="c98c-3c50-3d4f-04b5" hidden="false" typeId="3ad5-fa92-4523-377e" typeName="Hacking Program">
      <characteristics>
        <characteristic name="Attack MOD" typeId="4b6c-3fd6-2b42-1f9e">0</characteristic>
        <characteristic name="Opp. MOD" typeId="cb83-ad55-e894-56bd">0</characteristic>
        <characteristic name="PS" typeId="8c33-a714-8975-d14b">4</characteristic>
        <characteristic name="Burst" typeId="d98a-b2cb-9190-5fbd">2</characteristic>
        <characteristic name="Target" typeId="6c84-83ff-69f2-6eec">TAG, HI, REM, VH, Hacker</characteristic>
        <characteristic name="Skill Type" typeId="8ffe-05cb-ef94-65c1">Short Skill / ARO</characteristic>
        <characteristic name="Special" typeId="90b5-3067-d7ae-e321">AP Ammo, Non-Lethal, State: Isolated.</characteristic>
      </characteristics>
    </profile>
    <profile id="85cf-2a1f-5be4-065f" name="Spotlight" publicationId="c98c-3c50-3d4f-04b5" hidden="false" typeId="3ad5-fa92-4523-377e" typeName="Hacking Program">
      <characteristics>
        <characteristic name="Attack MOD" typeId="4b6c-3fd6-2b42-1f9e">0</characteristic>
        <characteristic name="Opp. MOD" typeId="cb83-ad55-e894-56bd">0</characteristic>
        <characteristic name="PS" typeId="8c33-a714-8975-d14b">5</characteristic>
        <characteristic name="Burst" typeId="d98a-b2cb-9190-5fbd">2</characteristic>
        <characteristic name="Target" typeId="6c84-83ff-69f2-6eec">-</characteristic>
        <characteristic name="Skill Type" typeId="8ffe-05cb-ef94-65c1">Short Skill / ARO</characteristic>
        <characteristic name="Special" typeId="90b5-3067-d7ae-e321">AP Ammo, Non-Lethal, State: Targeted.</characteristic>
      </characteristics>
    </profile>
    <profile id="5961-c524-fd6f-534e" name="Total Control" publicationId="c98c-3c50-3d4f-04b5" hidden="false" typeId="3ad5-fa92-4523-377e" typeName="Hacking Program">
      <characteristics>
        <characteristic name="Attack MOD" typeId="4b6c-3fd6-2b42-1f9e">0</characteristic>
        <characteristic name="Opp. MOD" typeId="cb83-ad55-e894-56bd">0</characteristic>
        <characteristic name="PS" typeId="8c33-a714-8975-d14b">4</characteristic>
        <characteristic name="Burst" typeId="d98a-b2cb-9190-5fbd">1</characteristic>
        <characteristic name="Target" typeId="6c84-83ff-69f2-6eec">TAG</characteristic>
        <characteristic name="Skill Type" typeId="8ffe-05cb-ef94-65c1">Short Skill / ARO</characteristic>
        <characteristic name="Special" typeId="90b5-3067-d7ae-e321">DA Ammo, Non-Lethal, State: POS/Normal.</characteristic>
      </characteristics>
    </profile>
    <profile id="a4a4-2acd-5cbe-4707" name="Trinity" publicationId="c98c-3c50-3d4f-04b5" hidden="false" typeId="3ad5-fa92-4523-377e" typeName="Hacking Program">
      <characteristics>
        <characteristic name="Attack MOD" typeId="4b6c-3fd6-2b42-1f9e">+3</characteristic>
        <characteristic name="Opp. MOD" typeId="cb83-ad55-e894-56bd">0</characteristic>
        <characteristic name="PS" typeId="8c33-a714-8975-d14b">6</characteristic>
        <characteristic name="Burst" typeId="d98a-b2cb-9190-5fbd">3</characteristic>
        <characteristic name="Target" typeId="6c84-83ff-69f2-6eec">Hacker</characteristic>
        <characteristic name="Skill Type" typeId="8ffe-05cb-ef94-65c1">Short Skill / ARO</characteristic>
        <characteristic name="Special" typeId="90b5-3067-d7ae-e321">Target receives 1 Wound for each failed Saving Roll.</characteristic>
      </characteristics>
    </profile>
    <profile id="c2ef-2ade-438c-15bb" name="White Noise" publicationId="c98c-3c50-3d4f-04b5" hidden="false" typeId="3ad5-fa92-4523-377e" typeName="Hacking Program">
      <characteristics>
        <characteristic name="Attack MOD" typeId="4b6c-3fd6-2b42-1f9e">-</characteristic>
        <characteristic name="Opp. MOD" typeId="cb83-ad55-e894-56bd">-</characteristic>
        <characteristic name="PS" typeId="8c33-a714-8975-d14b">-</characteristic>
        <characteristic name="Burst" typeId="d98a-b2cb-9190-5fbd">1</characteristic>
        <characteristic name="Target" typeId="6c84-83ff-69f2-6eec">-</characteristic>
        <characteristic name="Skill Type" typeId="8ffe-05cb-ef94-65c1">Short Skill</characteristic>
        <characteristic name="Special" typeId="90b5-3067-d7ae-e321">NFB, Reflective, Circular Template.</characteristic>
      </characteristics>
    </profile>
    <profile id="676a-786a-af12-bced" name="Zero Pain" publicationId="c98c-3c50-3d4f-04b5" hidden="false" typeId="3ad5-fa92-4523-377e" typeName="Hacking Program">
      <characteristics>
        <characteristic name="Attack MOD" typeId="4b6c-3fd6-2b42-1f9e">0</characteristic>
        <characteristic name="Opp. MOD" typeId="cb83-ad55-e894-56bd">-3</characteristic>
        <characteristic name="PS" typeId="8c33-a714-8975-d14b">-</characteristic>
        <characteristic name="Burst" typeId="d98a-b2cb-9190-5fbd">2</characteristic>
        <characteristic name="Target" typeId="6c84-83ff-69f2-6eec">-</characteristic>
        <characteristic name="Skill Type" typeId="8ffe-05cb-ef94-65c1">Short Skill / ARO</characteristic>
        <characteristic name="Special" typeId="90b5-3067-d7ae-e321">Nullifies Comms Attack. B2 in ARO, Non-Lethal.</characteristic>
      </characteristics>
    </profile>
    <profile id="2bde-e446-8506-e238" name="Martial Arts L1" publicationId="c98c-3c50-3d4f-04b5" hidden="false" typeId="0e7f-f8f1-9e45-3b46" typeName="Martial Arts">
      <characteristics>
        <characteristic name="Attack MOD" typeId="05fa-dfa4-8605-370f">0</characteristic>
        <characteristic name="Opponent MOD" typeId="534b-6794-d1a4-267f">-3</characteristic>
        <characteristic name="Burst MOD" typeId="8042-b86e-642d-2051">0</characteristic>
      </characteristics>
    </profile>
    <profile id="f873-26a4-fc00-8a35" name="Martial Arts L2" publicationId="c98c-3c50-3d4f-04b5" hidden="false" typeId="0e7f-f8f1-9e45-3b46" typeName="Martial Arts">
      <characteristics>
        <characteristic name="Attack MOD" typeId="05fa-dfa4-8605-370f">+3</characteristic>
        <characteristic name="Opponent MOD" typeId="534b-6794-d1a4-267f">-3</characteristic>
        <characteristic name="Burst MOD" typeId="8042-b86e-642d-2051">0</characteristic>
      </characteristics>
    </profile>
    <profile id="c0f8-e2bb-90c5-3c51" name="Martial Arts L3" publicationId="c98c-3c50-3d4f-04b5" hidden="false" typeId="0e7f-f8f1-9e45-3b46" typeName="Martial Arts">
      <characteristics>
        <characteristic name="Attack MOD" typeId="05fa-dfa4-8605-370f">+3</characteristic>
        <characteristic name="Opponent MOD" typeId="534b-6794-d1a4-267f">-3</characteristic>
        <characteristic name="Burst MOD" typeId="8042-b86e-642d-2051">+1 SD</characteristic>
      </characteristics>
    </profile>
    <profile id="ef50-5598-2209-ec3e" name="Martial Arts L4" publicationId="c98c-3c50-3d4f-04b5" hidden="false" typeId="0e7f-f8f1-9e45-3b46" typeName="Martial Arts">
      <characteristics>
        <characteristic name="Attack MOD" typeId="05fa-dfa4-8605-370f">+3</characteristic>
        <characteristic name="Opponent MOD" typeId="534b-6794-d1a4-267f">-3</characteristic>
        <characteristic name="Burst MOD" typeId="8042-b86e-642d-2051">+1B</characteristic>
      </characteristics>
    </profile>
    <profile id="fcbe-111b-7947-ed85" name="Martial Arts L5" publicationId="c98c-3c50-3d4f-04b5" hidden="false" typeId="0e7f-f8f1-9e45-3b46" typeName="Martial Arts">
      <characteristics>
        <characteristic name="Attack MOD" typeId="05fa-dfa4-8605-370f">+3</characteristic>
        <characteristic name="Opponent MOD" typeId="534b-6794-d1a4-267f">-3</characteristic>
        <characteristic name="Burst MOD" typeId="8042-b86e-642d-2051">+1B, +1 SD</characteristic>
      </characteristics>
    </profile>
    <profile id="6882-394c-af16-280b" name="AP Mine (deployed)" publicationId="c98c-3c50-3d4f-04b5" hidden="false" typeId="2564-34d2-56a8-c283" typeName="Deployable">
      <characteristics>
        <characteristic name="ARM" typeId="e2e6-6087-7dae-458b">0</characteristic>
        <characteristic name="BTS" typeId="2add-4cfc-b090-a1a7">0</characteristic>
        <characteristic name="STR" typeId="1211-9944-a753-8db7">1</characteristic>
        <characteristic name="S" typeId="3b73-88da-5889-e0e9">0</characteristic>
      </characteristics>
    </profile>
    <profile id="78e9-02c5-3a85-3496" name="Cybermine (deployed)" publicationId="c98c-3c50-3d4f-04b5" hidden="false" typeId="2564-34d2-56a8-c283" typeName="Deployable">
      <characteristics>
        <characteristic name="ARM" typeId="e2e6-6087-7dae-458b">0</characteristic>
        <characteristic name="BTS" typeId="2add-4cfc-b090-a1a7">0</characteristic>
        <characteristic name="STR" typeId="1211-9944-a753-8db7">1</characteristic>
        <characteristic name="S" typeId="3b73-88da-5889-e0e9">0</characteristic>
      </characteristics>
    </profile>
    <profile id="0ee4-13ac-3fa0-de6b" name="Drop Bear (deployed)" publicationId="c98c-3c50-3d4f-04b5" hidden="false" typeId="2564-34d2-56a8-c283" typeName="Deployable">
      <characteristics>
        <characteristic name="ARM" typeId="e2e6-6087-7dae-458b">0</characteristic>
        <characteristic name="BTS" typeId="2add-4cfc-b090-a1a7">0</characteristic>
        <characteristic name="STR" typeId="1211-9944-a753-8db7">1</characteristic>
        <characteristic name="S" typeId="3b73-88da-5889-e0e9">0</characteristic>
      </characteristics>
    </profile>
    <profile id="1ecf-0146-2470-c559" name="E/M Mine (deployed)" publicationId="c98c-3c50-3d4f-04b5" hidden="false" typeId="2564-34d2-56a8-c283" typeName="Deployable">
      <characteristics>
        <characteristic name="ARM" typeId="e2e6-6087-7dae-458b">0</characteristic>
        <characteristic name="BTS" typeId="2add-4cfc-b090-a1a7">0</characteristic>
        <characteristic name="STR" typeId="1211-9944-a753-8db7">1</characteristic>
        <characteristic name="S" typeId="3b73-88da-5889-e0e9">0</characteristic>
      </characteristics>
    </profile>
    <profile id="7666-2c55-eb5a-b504" name="Monofilament Mine (deployed)" publicationId="c98c-3c50-3d4f-04b5" hidden="false" typeId="2564-34d2-56a8-c283" typeName="Deployable">
      <characteristics>
        <characteristic name="ARM" typeId="e2e6-6087-7dae-458b">0</characteristic>
        <characteristic name="BTS" typeId="2add-4cfc-b090-a1a7">0</characteristic>
        <characteristic name="STR" typeId="1211-9944-a753-8db7">1</characteristic>
        <characteristic name="S" typeId="3b73-88da-5889-e0e9">0</characteristic>
      </characteristics>
    </profile>
    <profile id="c56c-38ad-b390-93cc" name="PARA Mine (deployed)" publicationId="c98c-3c50-3d4f-04b5" hidden="false" typeId="2564-34d2-56a8-c283" typeName="Deployable">
      <characteristics>
        <characteristic name="ARM" typeId="e2e6-6087-7dae-458b">0</characteristic>
        <characteristic name="BTS" typeId="2add-4cfc-b090-a1a7">0</characteristic>
        <characteristic name="STR" typeId="1211-9944-a753-8db7">1</characteristic>
        <characteristic name="S" typeId="3b73-88da-5889-e0e9">0</characteristic>
      </characteristics>
    </profile>
    <profile id="2622-f22f-60ef-be34" name="Shock Mine (deployed)" publicationId="c98c-3c50-3d4f-04b5" hidden="false" typeId="2564-34d2-56a8-c283" typeName="Deployable">
      <characteristics>
        <characteristic name="ARM" typeId="e2e6-6087-7dae-458b">0</characteristic>
        <characteristic name="BTS" typeId="2add-4cfc-b090-a1a7">0</characteristic>
        <characteristic name="STR" typeId="1211-9944-a753-8db7">1</characteristic>
        <characteristic name="S" typeId="3b73-88da-5889-e0e9">0</characteristic>
      </characteristics>
    </profile>
    <profile id="c3fb-6110-bca1-c26c" name="Viral Mine (deployed)" publicationId="c98c-3c50-3d4f-04b5" hidden="false" typeId="2564-34d2-56a8-c283" typeName="Deployable">
      <characteristics>
        <characteristic name="ARM" typeId="e2e6-6087-7dae-458b">0</characteristic>
        <characteristic name="BTS" typeId="2add-4cfc-b090-a1a7">0</characteristic>
        <characteristic name="STR" typeId="1211-9944-a753-8db7">1</characteristic>
        <characteristic name="S" typeId="3b73-88da-5889-e0e9">0</characteristic>
      </characteristics>
    </profile>
    <profile id="0151-42b6-693b-fe14" name="WildParrot (deployed)" publicationId="c98c-3c50-3d4f-04b5" hidden="false" typeId="2564-34d2-56a8-c283" typeName="Deployable">
      <characteristics>
        <characteristic name="ARM" typeId="e2e6-6087-7dae-458b">0</characteristic>
        <characteristic name="BTS" typeId="2add-4cfc-b090-a1a7">0</characteristic>
        <characteristic name="STR" typeId="1211-9944-a753-8db7">1</characteristic>
        <characteristic name="S" typeId="3b73-88da-5889-e0e9">1</characteristic>
      </characteristics>
    </profile>
    <profile id="a606-8ff8-0c7b-db90" name="CrazyKoala (deployed)" publicationId="c98c-3c50-3d4f-04b5" hidden="false" typeId="2564-34d2-56a8-c283" typeName="Deployable">
      <characteristics>
        <characteristic name="ARM" typeId="e2e6-6087-7dae-458b">0</characteristic>
        <characteristic name="BTS" typeId="2add-4cfc-b090-a1a7">0</characteristic>
        <characteristic name="STR" typeId="1211-9944-a753-8db7">1</characteristic>
        <characteristic name="S" typeId="3b73-88da-5889-e0e9">1</characteristic>
      </characteristics>
    </profile>
    <profile id="3042-f010-c641-65e8" name="Dazer (deployed)" publicationId="c98c-3c50-3d4f-04b5" hidden="false" typeId="2564-34d2-56a8-c283" typeName="Deployable">
      <characteristics>
        <characteristic name="ARM" typeId="e2e6-6087-7dae-458b">0</characteristic>
        <characteristic name="BTS" typeId="2add-4cfc-b090-a1a7">0</characteristic>
        <characteristic name="STR" typeId="1211-9944-a753-8db7">1</characteristic>
        <characteristic name="S" typeId="3b73-88da-5889-e0e9">1</characteristic>
      </characteristics>
    </profile>
    <profile id="54b6-aa58-c185-a654" name="Deployable Repeater (deployed)" publicationId="c98c-3c50-3d4f-04b5" hidden="false" typeId="2564-34d2-56a8-c283" typeName="Deployable">
      <characteristics>
        <characteristic name="ARM" typeId="e2e6-6087-7dae-458b">0</characteristic>
        <characteristic name="BTS" typeId="2add-4cfc-b090-a1a7">0</characteristic>
        <characteristic name="STR" typeId="1211-9944-a753-8db7">1</characteristic>
        <characteristic name="S" typeId="3b73-88da-5889-e0e9">1</characteristic>
      </characteristics>
    </profile>
    <profile id="405b-eede-2254-7d42" name="Disco Ball (deployed)" publicationId="c98c-3c50-3d4f-04b5" hidden="false" typeId="2564-34d2-56a8-c283" typeName="Deployable">
      <characteristics>
        <characteristic name="ARM" typeId="e2e6-6087-7dae-458b">0</characteristic>
        <characteristic name="BTS" typeId="2add-4cfc-b090-a1a7">0</characteristic>
        <characteristic name="STR" typeId="1211-9944-a753-8db7">1</characteristic>
        <characteristic name="S" typeId="3b73-88da-5889-e0e9">1</characteristic>
      </characteristics>
    </profile>
    <profile id="5f96-4642-6d9f-ceee" name="FastPanda (deployed)" publicationId="c98c-3c50-3d4f-04b5" hidden="false" typeId="2564-34d2-56a8-c283" typeName="Deployable">
      <characteristics>
        <characteristic name="ARM" typeId="e2e6-6087-7dae-458b">0</characteristic>
        <characteristic name="BTS" typeId="2add-4cfc-b090-a1a7">0</characteristic>
        <characteristic name="STR" typeId="1211-9944-a753-8db7">1</characteristic>
        <characteristic name="S" typeId="3b73-88da-5889-e0e9">1</characteristic>
      </characteristics>
    </profile>
    <profile id="cf0c-55b7-b696-52f4" name="Madtrap (deployed)" publicationId="c98c-3c50-3d4f-04b5" hidden="false" typeId="2564-34d2-56a8-c283" typeName="Deployable">
      <characteristics>
        <characteristic name="ARM" typeId="e2e6-6087-7dae-458b">0</characteristic>
        <characteristic name="BTS" typeId="2add-4cfc-b090-a1a7">0</characteristic>
        <characteristic name="STR" typeId="1211-9944-a753-8db7">1</characteristic>
        <characteristic name="S" typeId="3b73-88da-5889-e0e9">1</characteristic>
      </characteristics>
    </profile>
  </sharedProfiles>
</gameSystem>
