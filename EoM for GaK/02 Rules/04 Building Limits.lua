-- Building Limits
-- Author: PawelS
-- DateCreated: 9/9/2012 5:42:47 PM
--------------------------------------------------------------
GameEvents.PlayerCanConstruct.Add (
function (iPlayer, buildingTypeID)
	-- get the player object
	local player = Players [iPlayer]
	-- get the building class ID
	local classID = GameInfo.BuildingClasses [GameInfo.Buildings [buildingTypeID].BuildingClass].ID;
	-- get the maximum cities percentage
	local percent = GameInfo.BuildingClasses [classID].EoM_MaxCityPercent
	-- check the number of buildings
	if percent > 0 and percent < 100 then
		local limit = math.floor (percent * player:GetNumCities () / 100) -- maximum number of buildings of this class
		local number = player:GetBuildingClassCountPlusMaking (classID) + 1 -- number of buildings of this class (existing and under construction), plus the one we're asking for
		if number > limit then
			return false -- too many
		else
			return true -- not too many, can build at least one more
		end
	else
		return true -- no limit defined (not between 0 and 100), so allow it
	end
end)