-- this makes Attack and Defense in UnitPromotions_UnitCombatMods work
-- by automatically creating necessary entries in UnitPromotions_UnitClasses

-- code by whoward69, slightly modified
INSERT INTO UnitPromotions_UnitClasses(PromotionType, UnitClassType, Modifier, Attack, Defense, PediaType)
  SELECT cm.PromotionType, uc.Type, NULL, cm.Attack, cm.Defense, NULL
    FROM UnitPromotions_UnitCombatMods cm, UnitClasses uc, Units u
	  WHERE (cm.Attack != 0 OR cm.Defense != 0)
	  AND u.CombatClass = cm.UnitCombatType
	  AND u.Type = uc.DefaultUnit
	ORDER BY PromotionType;