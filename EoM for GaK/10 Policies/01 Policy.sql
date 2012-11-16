ALTER TABLE Buildings ADD COLUMN 'PrereqPolicy' TEXT DEFAULT NULL;



-- The below table is supposed to allow for modifying the culture that a building produces by x%. However, --
-- that effect has been put on hold until later. It will require some lua to make the table work. --

-- CREATE TABLE Policy_BuildingClassCultureModifiers --
-- ( --
--  PolicyType TEXT DEFAULT NULL, --
--  BuildingClassType TEXT DEFAULT NULL, --
--  CultureMod INTEGER DEFAULT 0 --
-- ); --
	