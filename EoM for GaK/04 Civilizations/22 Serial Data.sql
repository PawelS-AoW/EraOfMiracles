--THIS FILE MAKES <Civilization_FreeUnits>, <Civilization_FreeBuildingClasses>
--<Civilization_DisableTechs> UNNECESSARY IN Civ-Specific XMLs

-- Free Units (Settler, Warrior, Scout)

INSERT INTO Civilization_FreeUnits (CivilizationType, UnitClassType, UnitAIType, Count)
SELECT Type, 'UNITCLASS_SETTLER', 'UNITAI_SETTLE', 1 FROM Civilizations 
WHERE Type <> 'CIVILIZATION_BARBARIAN';

INSERT INTO Civilization_FreeUnits (CivilizationType, UnitClassType, UnitAIType, Count)
SELECT Type, 'UNITCLASS_WARRIOR', 'UNITAI_DEFENSE', 1 FROM Civilizations 
WHERE Type <> 'CIVILIZATION_BARBARIAN';

INSERT INTO Civilization_FreeUnits (CivilizationType, UnitClassType, UnitAIType, Count)
SELECT Type, 'UNITCLASS_SCOUT', 'UNITAI_EXPLORE', 1 FROM Civilizations 
WHERE Type <> 'CIVILIZATION_BARBARIAN';

-- Free Building (Palace)

INSERT INTO Civilization_FreeBuildingClasses (CivilizationType, BuildingClassType)
SELECT Type, 'BUILDINGCLASS_PALACE' FROM Civilizations
WHERE Type <> 'CIVILIZATION_BARBARIAN';

-- Special Technologies, available only to some civs

INSERT INTO Civilization_DisableTechs(CivilizationType, TechType)
SELECT Type, 'TECH_WAR_ELEPHANTS_1' FROM Civilizations
WHERE Type NOT IN ('CIVILIZATION_AZRACS', 'CIVILIZATION_LEMURIA'); -- 'CIVILIZATION_NIKKEI'

INSERT INTO Civilization_DisableTechs(CivilizationType, TechType)
SELECT Type, 'TECH_WAR_ELEPHANTS_2' FROM Civilizations
WHERE Type NOT IN ('CIVILIZATION_AZRACS', 'CIVILIZATION_LEMURIA'); -- 'CIVILIZATION_NIKKEI'

INSERT INTO Civilization_DisableTechs(CivilizationType, TechType)
SELECT Type, 'TECH_WAR_ELEPHANTS_3' FROM Civilizations
WHERE Type NOT IN ('CIVILIZATION_AZRACS', 'CIVILIZATION_LEMURIA'); -- 'CIVILIZATION_NIKKEI'

INSERT INTO Civilization_DisableTechs(CivilizationType, TechType)
SELECT Type, 'TECH_CARAVANS' FROM Civilizations
WHERE Type <> 'CIVILIZATION_AZRACS';

INSERT INTO Civilization_DisableTechs(CivilizationType, TechType)
SELECT Type, 'TECH_IMPERIAL_ROADS' FROM Civilizations
WHERE Type NOT IN ('CIVILIZATION_ARCHONS');

INSERT INTO Civilization_DisableTechs(CivilizationType, TechType)
SELECT Type, 'TECH_PIRACY' FROM Civilizations
WHERE Type NOT IN ('CIVILIZATION_DREAMERS', 'CIVILIZATION_SNOBAR', 'CIVILIZATION_AZRACS', 'CIVILIZATION_ORCS', 'CIVILIZATION_UNDEAD');

INSERT INTO Civilization_DisableTechs(CivilizationType, TechType)
SELECT Type, 'TECH_NAVAL_DREAMS' FROM Civilizations
WHERE Type NOT IN ('CIVILIZATION_DREAMERS', 'CIVILIZATION_VODNIKS');

INSERT INTO Civilization_DisableTechs(CivilizationType, TechType)
SELECT Type, 'TECH_SKY_SAILING' FROM Civilizations
WHERE Type NOT IN ('CIVILIZATION_DREAMERS'); -- 'CIVILIZATION_WINDWALKERS'

--INSERT INTO Civilization_DisableTechs(CivilizationType, TechType)
--SELECT Type, 'TECH_CHIVALRY' FROM Civilizations
--WHERE Type NOT IN ('CIVILIZATION_GRIFFITES', 'CIVILIZATION_ARCHONS');

INSERT INTO Civilization_DisableTechs(CivilizationType, TechType)
SELECT Type, 'TECH_GUNPOWDER' FROM Civilizations
WHERE Type NOT IN ('CIVILIZATION_DREAMERS', 'CIVILIZATION_DWARVES', 'CIVILIZATION_ORCS');

INSERT INTO Civilization_DisableTechs(CivilizationType, TechType)
SELECT Type, 'TECH_EXPLOSIVES' FROM Civilizations
WHERE Type NOT IN ('CIVILIZATION_DREAMERS', 'CIVILIZATION_DWARVES', 'CIVILIZATION_ORCS');
