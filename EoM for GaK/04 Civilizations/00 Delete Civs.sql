-- Civilizations

DELETE FROM Civilizations;
DELETE FROM Civilization_BuildingClassOverrides;
DELETE FROM Civilization_CityNames;
DELETE FROM Civilization_DisableTechs;
DELETE FROM Civilization_FreeBuildingClasses;
DELETE FROM Civilization_FreeTechs;
DELETE FROM Civilization_FreeUnits;
DELETE FROM Civilization_Leaders;
DELETE FROM Civilization_Religions;
DELETE FROM Civilization_SpyNames;
DELETE FROM Civilization_Start_Along_Ocean;
DELETE FROM Civilization_Start_Along_River;
DELETE FROM Civilization_Start_Region_Avoid;
DELETE FROM Civilization_Start_Region_Priority;
DELETE FROM Civilization_UnitClassOverrides;

-- Leaders

DELETE FROM Leaders;
DELETE FROM Leader_Flavors;
DELETE FROM Leader_MajorCivApproachBiases;
DELETE FROM Leader_MinorCivApproachBiases;
DELETE FROM Leader_Traits;

-- Traits

DELETE FROM Traits WHERE Type <> 'TRAIT_LONG_COUNT'; -- need to keep it to prevent using the Maya calendar for all civs
UPDATE Traits SET PrereqTech = NULL; -- remove Theology as PrereqTech for the Long Count

DELETE FROM Trait_ExtraYieldThresholds;
DELETE FROM Trait_FreePromotionUnitCombats;
DELETE FROM Trait_FreePromotions;
DELETE FROM Trait_FreeResourceFirstXCities;
DELETE FROM Trait_ImprovementYieldChanges;
DELETE FROM Trait_MovesChangeUnitCombats;
DELETE FROM Trait_ResourceQuantityModifiers;
DELETE FROM Trait_SpecialistYieldChanges;
DELETE FROM Trait_Terrains;
DELETE FROM Trait_UnimprovedFeatureYieldChanges;
DELETE FROM Trait_YieldChanges;
DELETE FROM Trait_YieldChangesNaturalWonder;
DELETE FROM Trait_YieldChangesStrategicResources;
DELETE FROM Trait_YieldModifiers;

-- Minor Civs

DELETE FROM MinorCivilizations;
DELETE FROM MinorCivilization_CityNames;
DELETE FROM MinorCivilization_Flavors;
