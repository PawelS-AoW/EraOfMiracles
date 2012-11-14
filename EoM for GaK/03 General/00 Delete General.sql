-- Eras

DELETE FROM Eras;
-- other tables aren't deleted for now

-- GameSpeeds

DELETE FROM GameSpeeds;
DELETE FROM GameSpeed_Turns;

-- GoodyHuts

DELETE FROM GoodyHuts; -- won't be used (?)

-- Handicaps

DELETE FROM HandicapInfos;
DELETE FROM HandicapInfo_AIFreeTechs; -- won't be used
DELETE FROM HandicapInfo_FreeTechs; -- won't be used
DELETE FROM HandicapInfo_Goodies; -- won't be used (?)

-- Specialists

DELETE FROM Specialists;
DELETE FROM SpecialistFlavors; -- unused
DELETE FROM SpecialistYields;