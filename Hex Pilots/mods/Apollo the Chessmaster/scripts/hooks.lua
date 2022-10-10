--Mod
local mod = mod_loader.mods[modApi.currentMod]

--Paths
local scriptPath = mod.scriptPath
local resourcePath = mod.resourcePath

--------------------------------------------------- UTILITY / LOCAL FUNCTIONS ---------------------------------------------------

local function gameData()
	--LOG("[APOLLO] gameData() -> GAME: " .. tostring(GAME))
	if GAME.apollo == nil then
		GAME.apollo = {}
	end

	if GAME.apollo.previousDamaged == nil then
		GAME.apollo.previousDamaged = false
	end

	return GAME.apollo
end


----------------------------------------------- HOOKS HANDLERS -----------------------------------------------

local function IsApolloPresent()
	--LOG("[APOLLO] IsApolloPresent()")
	for i = 0, 2 do
		local mech = Board:GetPawn(i)
		--LOG("i: " .. tostring(i))
		if mech then
			--LOG("ability: " .. mech:GetAbility()) 
			if mech:IsAbility("ChessmasterSkill") then
				--LOG("mech has chess master skill!")
				return true
			else
				--LOG("not the chess master skill :(")
			end
		else
			--LOG("Mech doesn't exist!!")
		end
	end
	return false
end

local function ShieldAllies()
	for i = 0, 2 do
		local mech = Board:GetPawn(i)
		if mech then
			mech:SetShield(true)
		end
	end
end

--start mission / second phase of the final mission
local function ComputeShieldConditions()
	local gameData = gameData()

	if gameData == nil then
		--LOG("[APOLLO] ComputeShieldConditions -> No game data found -> RETURN")
		return
	end

	if not gameData.previousDamaged and IsApolloPresent() then
		ShieldAllies()
		--LOG("[APOLLO] Conditions met -> Shield Allies!")
	else
		--LOG("[APOLLO] Conditions not met -> prev damaged: " .. tostring(gameData.previousDamaged) .. ", is apollo present: " .. tostring(IsApolloPresent()))
	end

	gameData.previousDamaged = false --useless for second phase, but whatever
end

--I should save that in a mission data
--local previousDamaged = false
local HOOK_onMissionStarted = function(mission)
	ComputeShieldConditions()	
end

local HOOK_onNextPhaseCreated = function(prevMission, nextMission)
	--LOG("[APOLLO] Left mission " .. prevMission.ID .. ", going into " .. nextMission.ID)

	modApi:runLater(function()            
            modApi:runLater(function()                
                modApi:runLater(function()                    
                    modApi:runLater(function()                        
                        modApi:runLater(function()                            
                            modApi:runLater(function()
                                ComputeShieldConditions()
                            end)
                        end)
                    end)
                end)
            end)
        end)

	--ComputeShieldConditions()
end

----------------------------------------------- HOOKS / EVENTS SUBSCRIPTION -----------------------------------------------

EVENT_GRID_DAMAGED = 7
modApi.events.onMissionUpdate:subscribe(function()
	if Game:GetEventCount(EVENT_GRID_DAMAGED) > 0 and IsApolloPresent() then	
		local gameData = gameData()

		if gameData == nil then
			--LOG("[APOLLO] HOOK_onMissionStarted -> No game data found -> RETURN")
			return
		end

		gameData.previousDamaged = true

		--LOG("[APOLLO] Grid damage!")
	end
end)

local function EVENT_onModsLoaded()
	modApi:addMissionStartHook(HOOK_onMissionStarted)
	modApi:addMissionNextPhaseCreatedHook(HOOK_onNextPhaseCreated)
end

modApi.events.onModsLoaded:subscribe(EVENT_onModsLoaded)