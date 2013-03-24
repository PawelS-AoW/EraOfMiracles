-- Promotions

DELETE FROM UnitPromotions;
DELETE FROM UnitPromotions_CivilianUnitType;
DELETE FROM UnitPromotions_Domains;
DELETE FROM UnitPromotions_Features;
DELETE FROM UnitPromotions_Terrains;
DELETE FROM UnitPromotions_UnitClasses;
DELETE FROM UnitPromotions_UnitCombatMods;
DELETE FROM UnitPromotions_UnitCombats;

-- Table changes

ALTER TABLE UnitPromotions_UnitCombatMods ADD COLUMN Attack integer;
ALTER TABLE UnitPromotions_UnitCombatMods ADD COLUMN Defense integer;