DELETE FROM Technologies;
DELETE FROM Technology_DomainExtraMoves;
DELETE FROM Technology_Flavors;
DELETE FROM Technology_ORPrereqTechs;
DELETE FROM Technology_PrereqTechs;

-- new column(s)

ALTER TABLE Technology_PrereqTechs ADD COLUMN EoM_ShowLine integer DEFAULT 0;
