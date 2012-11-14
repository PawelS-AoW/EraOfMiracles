-- Give Settlers (also contains the code that unpuppets cities)
-- Author: PawelS
-- DateCreated: 5/25/2012 9:55:25 PM
--------------------------------------------------------------
local gLastTurn = 0

function TurnEvents ()
	-- make sure it's executed only once per turn
	local iThisTurn = Game.GetGameTurn ()
	if (iThisTurn > gLastTurn) then
		gLastTurn = iThisTurn;
		-- unpuppet cities
		UnPuppet ();
		-- determine whether it's a "settler turn"
		local iInterval = GameInfo.GameSpeeds [Game.GetGameSpeedType ()].EoM_SettlerInterval;
		if iThisTurn % iInterval == 0 then
			GiveSettlers ();
		end
	end
end
Events.ActivePlayerTurnStart.Add (TurnEvents);

function UnPuppet ()
	-- remove puppet status from all cities - no more mass puppeting for the AI
	for lnum = 0, GameDefines.MAX_CIV_PLAYERS-1, 1 do
		local player = Players [lnum];
		if player:IsAlive () then
			for city in player:Cities () do
				if city:IsPuppet () then
					city:SetPuppet (false);
				end
			end
		end
	end
end

function GiveSettlers ()
    -- this function creates Settlers for major civs if they have happiness of 15 or above and don't have a Settler
	-- minor civs can't use settlers, so it creates cities for them (max. 4)
	for lnum = 0, GameDefines.MAX_CIV_PLAYERS-1, 1 do
		local player = Players [lnum];
		if player:IsAlive () then
			if player:GetExcessHappiness () >= 15 and player:GetUnitClassCountPlusMaking (GameInfo.UnitClasses.UNITCLASS_SETTLER.ID) == 0 and player:GetNumCities () > 0 then
				if player:IsMinorCiv () then
					-- minor civ - create a city
					-- these cities can appear quite far from their capitals
					if player:GetNumCities () < 4 and Teams [player:GetTeam ()]:GetAtWarCount (true) == 0 then
					    -- Minor Civs can't have more than 4 cities (unless they conquer them)
						-- the cities won't appear when the minor civ is at war
						local iW, iH = Map.GetGridSize ();
						local max = 0;
						local max_x = -1;
						local max_y = -1;
						local minor_cap = player:GetCapitalCity ();
						local x1 = minor_cap:GetX ();
						local y1 = minor_cap:GetY ();

						-- find the best spot for a city in AI's opinion
						for y = 0, iH - 1 do
							for x = 0, iW - 1 do
								if Map.PlotDistance (x,y,x1,y1) <= 8 then
									local v = player:AI_foundValue (x,y);
									if v > max then
										max = v;
										max_x = x;
										max_y = y;
									end
								end
							end
						end

						-- found the city, if spot found
						if max_x > -1 then
							player:Found (max_x,max_y);
						end
					end
				else
					-- major civ, give a settler
					local cap = player:GetCapitalCity ();
					local settler_id = GameInfo.Units.UNIT_SETTLER.ID;
					player:InitUnit (settler_id,cap:GetX (),cap:GetY (),UNITAI_SETTLE);
					-- racial promotions should apply to the settler
					-- if it has a combat type ("civilian units")
				end
			end
		end
	end
end
