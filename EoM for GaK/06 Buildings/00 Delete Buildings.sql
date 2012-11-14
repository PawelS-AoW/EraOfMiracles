-- BuildingClasses
DELETE FROM BuildingClasses;
DELETE FROM BuildingClass_VictoryThresholds;

-- Buildings
DELETE FROM Buildings;
DELETE FROM Building_AreaYieldModifiers;
DELETE FROM Building_BuildingClassHappiness;
DELETE FROM Building_BuildingClassYieldChanges;
DELETE FROM Building_ClassesNeededInCity;
DELETE FROM Building_DomainFreeExperiences;
DELETE FROM Building_DomainProductionModifiers;
DELETE FROM Building_FeatureYieldChanges;
DELETE FROM Building_Flavors;
DELETE FROM Building_FreeSpecialistCounts;
DELETE FROM Building_FreeUnits;
DELETE FROM Building_GlobalYieldModifiers;
DELETE FROM Building_HurryModifiers;
DELETE FROM Building_LakePlotYieldChanges;
DELETE FROM Building_LocalResourceAnds;
DELETE FROM Building_LocalResourceOrs;
DELETE FROM Building_LockedBuildingClasses;
DELETE FROM Building_PrereqBuildingClasses;
DELETE FROM Building_ResourceCultureChanges;
DELETE FROM Building_ResourceFaithChanges;
DELETE FROM Building_ResourceQuantity;
DELETE FROM Building_ResourceQuantityRequirements;
DELETE FROM Building_ResourceYieldChanges;
DELETE FROM Building_ResourceYieldModifiers;
DELETE FROM Building_RiverPlotYieldChanges;
DELETE FROM Building_SeaPlotYieldChanges;
DELETE FROM Building_SeaResourceYieldChanges;
DELETE FROM Building_SpecialistYieldChanges;
DELETE FROM Building_TechAndPrereqs;
DELETE FROM Building_TechEnhancedYieldChanges;
DELETE FROM Building_TerrainYieldChanges;
DELETE FROM Building_UnitCombatFreeExperiences;
DELETE FROM Building_UnitCombatProductionModifiers;
DELETE FROM Building_YieldChanges;
DELETE FROM Building_YieldChangesPerPop;
DELETE FROM Building_YieldModifiers;

-- Table changes

ALTER TABLE BuildingClasses ADD COLUMN EoM_MaxCityPercent integer DEFAULT 100; -- max percentage of cities that this building can be built in
