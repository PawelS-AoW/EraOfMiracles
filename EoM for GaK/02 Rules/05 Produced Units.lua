-- AI promotions and random promotions given to produced units (work in progress)
-- Author: PawelS
-- DateCreated: 9/23/2012 10:33:43 PM
--------------------------------------------------------------
include("MapmakerUtilities")

function contains (table,element)
	for _,value in pairs (table) do
		if value == element then
			return true
		end
	end
	return false
end

local givenPromotions = 
{
	GameInfoTypes.PROMOTION_SKILLED,
	GameInfoTypes.PROMOTION_STRONG,
	GameInfoTypes.PROMOTION_RESILIENT,
	GameInfoTypes.PROMOTION_HEALTHY,
	GameInfoTypes.PROMOTION_COOPERATIVE,
	GameInfoTypes.PROMOTION_HEALER_SKILLS,
	GameInfoTypes.PROMOTION_ROBBER_SKILLS,
	GameInfoTypes.PROMOTION_HIGHLANDER,
	GameInfoTypes.PROMOTION_LOWLANDER,
	GameInfoTypes.PROMOTION_WOODLANDER,
}

local group1 =
{
	GameInfoTypes.PROMOTION_HEALER_BACKGROUND,
	GameInfoTypes.PROMOTION_ROBBER_BACKGROUND,
}

local group2 =
{
	GameInfoTypes.PROMOTION_HIGHLANDER,
	GameInfoTypes.PROMOTION_LOWLANDER,
	GameInfoTypes.PROMOTION_WOODLANDER,
}

function GrantPromotions (playerID,unitID)

	local player = Players [playerID]
	local unit = player:GetUnitByID (unitID)

	-- AI BONUS

	local level = Game:GetHandicapType ()
	local prom

	-- Gives an AI Bonus promotion depending on the difficulty level

	if (not player:IsHuman ()) and level >= 4 then
		if level == 4 then prom = GameInfoTypes.PROMOTION_AI_BONUS_1
		elseif level == 5 then prom = GameInfoTypes.PROMOTION_AI_BONUS_2
		elseif level == 6 then prom = GameInfoTypes.PROMOTION_AI_BONUS_3
		elseif level == 7 then prom = GameInfoTypes.PROMOTION_AI_BONUS_4 end
		unit:SetHasPromotion (prom,true)
	end

	-- RANDOM PROMOTIONS
	
	-- Does it have any of the promotions?

	for _,promotionID in pairs (givenPromotions) do
		if unit:IsHasPromotion (promotionID) then return end
	end

	-- Picks two random promotions

	local randomPromotions = GetShuffledCopyOfTable (givenPromotions)

	local promotionID1 = randomPromotions [1]

	local i = 1
	local promotionID2
	local ok

	repeat
		i = i + 1
		promotionID2 = randomPromotions [i]
		ok = true
		if contains (group1,promotionID1) and contains (group1,promotionID2) then ok = false end
		if contains (group2,promotionID1) and contains (group2,promotionID2) then ok = false end		
	until ok

	unit:SetHasPromotion (promotionID1,true)
	unit:SetHasPromotion (promotionID2,true)

end
Events.SerialEventUnitCreated.Add (GrantPromotions)