-- Game rule changes related to happiness and Settlers

UPDATE Defines
SET Value = 10
WHERE Name = 'UNHAPPINESS_PER_CITY';

UPDATE Defines
SET Value = 15
WHERE Name = 'UNHAPPINESS_PER_CAPTURED_CITY';

UPDATE Defines
SET Value = 1.5
WHERE Name = 'UNHAPPINESS_PER_OCCUPIED_POPULATION';

UPDATE Defines
SET Value = 0
WHERE Name = 'HAPPINESS_PER_NATURAL_WONDER';

UPDATE Defines
SET Value = -25
WHERE Name = 'VERY_UNHAPPY_COMBAT_PENALTY';


-- new column in the GameSpeeds table - the interval between turns when you can get Settlers

ALTER TABLE GameSpeeds ADD COLUMN EoM_SettlerInterval integer;
