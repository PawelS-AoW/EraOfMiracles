UPDATE Defines
SET Value = 0
WHERE Name = 'START_YEAR';

UPDATE Defines
SET Value = 0
WHERE Name = 'CAN_WORK_WATER_FROM_GAME_START';

UPDATE Defines
SET Value = 1
WHERE Name = 'MAX_WORLD_WONDERS_PER_CITY';

UPDATE Defines
SET Value = 1
WHERE Name = 'MAX_NATIONAL_WONDERS_PER_CITY';

UPDATE Defines
SET Value = 75
WHERE Name = 'CITY_CAPTURE_POPULATION_PERCENT';

-- FOOD & CITY GROWTH

UPDATE Defines
SET Value = 4
WHERE Name = 'FOOD_CONSUMPTION_PER_POPULATION';

UPDATE Defines
SET Value = 19 -- 1->2 20, 2->3 22 ...
WHERE Name = 'BASE_CITY_GROWTH_THRESHOLD';

UPDATE Defines
SET Value = 2
WHERE Name = 'CITY_GROWTH_MULTIPLIER';

UPDATE Defines
SET Value = 0
WHERE Name = 'CITY_GROWTH_EXPONENT';

-- END FOOD & CITY GROWTH

UPDATE Defines
SET Value = 1
WHERE Name = 'GREAT_GENERAL_RANGE';

UPDATE Defines
SET Value = 25
WHERE Name = 'GREAT_GENERAL_STRENGTH_MOD';

UPDATE Defines
SET Value = 10
WHERE Name = 'POLICY_ATTACK_BONUS_MOD'; -- used by the Fury policy

UPDATE Defines
SET Value = 25
WHERE Name = 'NONCOMBAT_UNIT_RANGED_DAMAGE';

-- UNIT MAINTENANCE

UPDATE Defines
SET Value = 0
WHERE Name = 'INITIAL_GOLD_PER_UNIT_TIMES_100';

UPDATE Defines
SET Value = 0
WHERE Name = 'UNIT_MAINTENANCE_GAME_MULTIPLIER';

UPDATE Defines
SET Value = 1000000
WHERE Name = 'UNIT_MAINTENANCE_GAME_EXPONENT_DIVISOR';

UPDATE Defines
SET Value = 4
WHERE Name = 'INITIAL_FREE_OUTSIDE_UNITS';

UPDATE Defines
SET Value = 100
WHERE Name = 'INITIAL_OUTSIDE_UNIT_GOLD_PERCENT';

-- TRADE ROUTES

UPDATE Defines
SET Value = 0
WHERE Name = 'TRADE_ROUTE_BASE_GOLD';

UPDATE Defines
SET Value = 0
WHERE Name = 'TRADE_ROUTE_CAPITAL_POP_GOLD_MULTIPLIER';

UPDATE Defines
SET Value = 100
WHERE Name = 'TRADE_ROUTE_CITY_POP_GOLD_MULTIPLIER';

-- END TRADE ROUTES

UPDATE Defines
SET Value = 0
WHERE Name = 'GOLDEN_AGE_THRESHOLD_CITY_MULTIPLIER';

UPDATE Defines
SET Value = 25
WHERE Name = 'FORTIFY_MODIFIER_PER_TURN';

UPDATE Defines
SET Value = 100
WHERE Name = 'BASE_FEATURE_PRODUCTION_PERCENT';

UPDATE Defines
SET Value = 100
WHERE Name = 'DIFFERENT_TEAM_FEATURE_PRODUCTION_PERCENT';

UPDATE Defines
SET Value = 100
WHERE Name = 'MAX_UNIT_SUPPLY_PRODMOD';

UPDATE Defines
SET Value = 0
WHERE Name = 'BASE_UNIT_UPGRADE_COST';

-- POLICIES

UPDATE Defines
SET Value = 20
WHERE Name = 'BASE_POLICY_COST';

UPDATE Defines
SET Value = 5
WHERE Name = 'POLICY_COST_INCREASE_TO_BE_EXPONENTED';

UPDATE Defines
SET Value = 1
WHERE Name = 'POLICY_COST_EXPONENT';

UPDATE Defines
SET Value = 1
WHERE Name = 'POLICY_COST_VISIBLE_DIVISOR';

UPDATE Defines
SET Value = 10
WHERE Name = 'SWITCH_POLICY_BRANCHES_ANARCHY_TURNS';

-- END POLICIES

UPDATE Defines
SET Value = 0
WHERE Name = 'SCIENCE_PER_POPULATION';

UPDATE Defines
SET Value = 10
WHERE Name = 'BARBARIAN_CAMP_FIRST_TURN_PERCENT_OF_TARGET_TO_ADD';

UPDATE Defines
SET Value = 4
WHERE Name = 'MAX_BARBARIANS_FROM_CAMP_NEARBY';

UPDATE Defines
SET Value = 30
WHERE Name = 'GOLD_FROM_BARBARIAN_CONVERSION';

UPDATE Defines
SET Value = 1
WHERE Name = 'EMBARKED_VISIBILITY_RANGE';

-- STARTING LOCATIONS AND SETTLERS

UPDATE Defines
SET Value = 80
WHERE Name = 'START_AREA_BUILD_ON_COAST_PERCENT';

UPDATE Defines
SET Value = 100
WHERE Name = 'SETTLER_BUILD_ON_COAST_PERCENT';

UPDATE Defines
SET Value = 4
WHERE Name = 'CITY_RING_1_MULTIPLIER';

UPDATE Defines
SET Value = 3
WHERE Name = 'CITY_RING_2_MULTIPLIER';

UPDATE Defines
SET Value = 2
WHERE Name = 'CITY_RING_3_MULTIPLIER';

UPDATE Defines
SET Value = 1
WHERE Name = 'CITY_RING_4_MULTIPLIER';

UPDATE Defines
SET Value = 1
WHERE Name = 'CITY_RING_5_MULTIPLIER';

-- MINOR CIVS

UPDATE Defines
SET Value = 15
WHERE Name = 'MINOR_CIV_CONTACT_GOLD_FIRST';

UPDATE Defines
SET Value = 10
WHERE Name = 'MINOR_CIV_CONTACT_GOLD_OTHER';

UPDATE Defines
SET Value = 150
WHERE Name = 'MINOR_CIV_GOLD_PERCENT';

UPDATE Defines
SET Value = 75
WHERE Name = 'MINOR_CIV_TECH_PERCENT';

UPDATE Defines
SET Value = 150
WHERE Name = 'MINOR_POLICY_RESOURCE_MULTIPLIER';

UPDATE Defines
SET Value = 2000
WHERE Name = 'MINOR_GOLD_GIFT_LARGE';

UPDATE Defines
SET Value = 1000
WHERE Name = 'MINOR_GOLD_GIFT_MEDIUM';

UPDATE Defines
SET Value = 500
WHERE Name = 'MINOR_GOLD_GIFT_SMALL';

-- END MINOR CIVS

UPDATE Defines
SET Value = -25
WHERE Name = 'RIVER_ATTACK_MODIFIER';

-- HEAL RATES

UPDATE Defines
SET Value = 5
WHERE Name = 'ENEMY_HEAL_RATE';

UPDATE Defines
SET Value = 5
WHERE Name = 'NEUTRAL_HEAL_RATE';

UPDATE Defines
SET Value = 10
WHERE Name = 'FRIENDLY_HEAL_RATE';

UPDATE Defines
SET Value = 10
WHERE Name = 'CITY_HEAL_RATE';

-- COMBAT DAMAGE

UPDATE Defines
SET Value = 2000
WHERE Name = 'ATTACK_SAME_STRENGTH_MIN_DAMAGE';

UPDATE Defines
SET Value = 1000
WHERE Name = 'ATTACK_SAME_STRENGTH_POSSIBLE_EXTRA_DAMAGE'; -- 25 on average

UPDATE Defines
SET Value = 1000
WHERE Name = 'RANGE_ATTACK_SAME_STRENGTH_MIN_DAMAGE';

UPDATE Defines
SET Value = 500
WHERE Name = 'RANGE_ATTACK_SAME_STRENGTH_POSSIBLE_EXTRA_DAMAGE'; -- 12.5 on average

UPDATE Defines
SET Value = 100
WHERE Name = 'WOUNDED_DAMAGE_MULTIPLIER';

UPDATE Defines
SET Value = -50
WHERE Name = 'TRAIT_WOUNDED_DAMAGE_MOD';

-- CITY STRENGTH & RANGED ATTACK

UPDATE Defines
SET Value = 400
WHERE Name = 'CITY_STRENGTH_DEFAULT';

UPDATE Defines
SET Value = 20
WHERE Name = 'CITY_STRENGTH_POPULATION_CHANGE';

UPDATE Defines
SET Value = 200
WHERE Name = 'CITY_STRENGTH_UNIT_DIVISOR';

UPDATE Defines
SET Value = 0
WHERE Name = 'CITY_STRENGTH_TECH_BASE';

UPDATE Defines
SET Value = 0
WHERE Name = 'CITY_STRENGTH_TECH_EXPONENT';

UPDATE Defines
SET Value = 0
WHERE Name = 'CITY_STRENGTH_TECH_MULTIPLIER';

UPDATE Defines
SET Value = 200
WHERE Name = 'CITY_STRENGTH_HILL_CHANGE';

UPDATE Defines
SET Value = 3
WHERE Name = 'CITY_ATTACK_RANGE';

UPDATE Defines
SET Value = 50
WHERE Name = 'CITY_RANGED_ATTACK_STRENGTH_MULTIPLIER';

UPDATE Defines
SET Value = 1
WHERE Name = 'MIN_CITY_STRIKE_DAMAGE';

-- EXPERIENCE

UPDATE Defines
SET Value = 6
WHERE Name = 'EXPERIENCE_ATTACKING_UNIT_MELEE';

UPDATE Defines
SET Value = 3
WHERE Name = 'EXPERIENCE_ATTACKING_UNIT_RANGED';

UPDATE Defines
SET Value = 6
WHERE Name = 'EXPERIENCE_ATTACKING_CITY_MELEE';

UPDATE Defines
SET Value = 3
WHERE Name = 'EXPERIENCE_ATTACKING_CITY_RANGED';

UPDATE Defines
SET Value = 200
WHERE Name = 'BARBARIAN_MAX_XP_VALUE';

-- END EXPERIENCE

UPDATE Defines
SET Value = 2
WHERE Name = 'HEAVY_RESOURCE_THRESHOLD';

-- TEMP

UPDATE Worlds
SET DefaultMinorCivs = DefaultMinorCivs / 4;
