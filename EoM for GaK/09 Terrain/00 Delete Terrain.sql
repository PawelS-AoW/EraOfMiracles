-- Yields
DELETE FROM Yields;

-- Terrains
DELETE FROM Terrains;
DELETE FROM Terrain_Yields;
DELETE FROM Terrain_RiverYieldChanges;
DELETE FROM Terrain_HillsYieldChanges;

-- Features
DELETE FROM Features;
DELETE FROM FakeFeatures; -- unused
DELETE FROM Feature_TerrainBooleans;
DELETE FROM Feature_YieldChanges;
DELETE FROM Feature_HillsYieldChanges; -- unused
DELETE FROM Feature_RiverYieldChanges; -- unused
DELETE FROM Natural_Wonder_Placement; -- unused

-- Resources
DELETE FROM Resources;
DELETE FROM Resource_FeatureBooleans;
DELETE FROM Resource_FeatureTerrainBooleans;
DELETE FROM Resource_Flavors;
DELETE FROM Resource_QuantityTypes;
DELETE FROM Resource_TerrainBooleans;
DELETE FROM Resource_YieldChanges;

UPDATE ResourceClasses SET UniqueRange = 0;

-- Improvements
DELETE FROM Improvements;
DELETE FROM Improvement_AdjacentCityYields;
DELETE FROM Improvement_AdjacentMountainYieldChanges;
DELETE FROM Improvement_CoastalLandYields;
DELETE FROM Improvement_Flavors;
DELETE FROM Improvement_FreshWaterYields;
DELETE FROM Improvement_HillsYields;
DELETE FROM Improvement_PrereqNatureYields;
DELETE FROM Improvement_ResourceType_Yields;
DELETE FROM Improvement_ResourceTypes;
DELETE FROM Improvement_RiverSideYields;
DELETE FROM Improvement_RouteYieldChanges;
DELETE FROM Improvement_TechFreshWaterYieldChanges;
DELETE FROM Improvement_TechNoFreshWaterYieldChanges;
DELETE FROM Improvement_TechYieldChanges;
DELETE FROM Improvement_ValidFeatures;
DELETE FROM Improvement_ValidTerrains;
DELETE FROM Improvement_Yields;

-- Routes (update only)
UPDATE Route_TechMovementChanges
SET TechType = 'TECH_IMPERIAL_ROADS';

-- Builds
DELETE FROM Builds;
DELETE FROM BuildFeatures;

-- TABLE CHANGES

ALTER TABLE Resources ADD COLUMN EoM_MaxSize integer DEFAULT 1;

ALTER TABLE Resources ADD COLUMN EoM_Ocean integer DEFAULT 0;
ALTER TABLE Resources ADD COLUMN EoM_Coast integer DEFAULT 0;
ALTER TABLE Resources ADD COLUMN EoM_Flatlands integer DEFAULT 0;
ALTER TABLE Resources ADD COLUMN EoM_Hills integer DEFAULT 0;

ALTER TABLE Resources ADD COLUMN EoM_Grass integer DEFAULT 0;
ALTER TABLE Resources ADD COLUMN EoM_Plains integer DEFAULT 0;
ALTER TABLE Resources ADD COLUMN EoM_Desert integer DEFAULT 0;
ALTER TABLE Resources ADD COLUMN EoM_Tundra integer DEFAULT 0;
ALTER TABLE Resources ADD COLUMN EoM_Snow integer DEFAULT 0;

ALTER TABLE Resources ADD COLUMN EoM_GrassHills integer DEFAULT 0;
ALTER TABLE Resources ADD COLUMN EoM_PlainsHills integer DEFAULT 0;
ALTER TABLE Resources ADD COLUMN EoM_DesertHills integer DEFAULT 0;
ALTER TABLE Resources ADD COLUMN EoM_TundraHills integer DEFAULT 0;
ALTER TABLE Resources ADD COLUMN EoM_SnowHills integer DEFAULT 0;

ALTER TABLE Resources ADD COLUMN EoM_GPForest integer DEFAULT 0;
ALTER TABLE Resources ADD COLUMN EoM_TundraForest integer DEFAULT 0;
ALTER TABLE Resources ADD COLUMN EoM_Jungle integer DEFAULT 0;
ALTER TABLE Resources ADD COLUMN EoM_Marsh integer DEFAULT 0;
ALTER TABLE Resources ADD COLUMN EoM_FloodPlains integer DEFAULT 0;
