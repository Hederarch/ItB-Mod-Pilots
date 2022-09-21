

local mod = mod_loader.mods[modApi.currentMod]
local resourcePath = mod.resourcePath
local scriptPath = mod.scriptPath

local this = {}

local lastPicked = nil
local teleporting = false

local function IsUserPresent()
	for i = 0, 2 do
		local mech = Board:GetPawn(i)
		--LOG("i: " .. tostring(i))
		if mech then
			--LOG("ability: " .. mech:GetAbility()) 
			if mech:IsAbility("KillSwap") then
				--LOG("mech has the right skill!")
				return true
			else
				--LOG("not the right skill :(")
			end
		else
			--LOG("Mech doesn't exist!!")
		end
	end
	return false
end

local function GetUser()
	for i = 0,2 do
		local mech = Board:GetPawn(i)
		if mech then
			--LOG("ability: " .. mech:GetAbility()) 
			if mech:IsAbility("KillSwap") then
				--LOG("mech has the right skill!")
				return Board:GetPawn(i)
			end
		end
	end
	return nil
end

local function teleport(mission, pawn)
	--LOG("OUT "..tostring(not teleporting))
	modApi:conditionalHook(function()
		return (not teleporting == true)
	end,function()
	teleporting = true
	--LOG("FUNC CALLED")
	if IsUserPresent() and pawn:GetTeam() == TEAM_ENEMY and Game:GetTeamTurn() == TEAM_PLAYER then
		local user = GetUser()  
			if lastPicked:GetId() == user:GetId() then
				--LOG("POINTS FOUND")
				--LOG("IN "..tostring(not teleporting))
				local ret = SkillEffect()
				local to = pawn:GetSpace()
				local from = GetUser():GetSpace()
				ret:AddTeleport(from,to, NO_DELAY)
				ret:AddBounce(from,-12)
				ret:AddBounce(to,-12)
				Board:AddEffect(ret)
				--LOG("EFFECT ADDED")
			end
		end
		modApi:scheduleHook(1500, function() 
		-- strange deciding value here. When killing a pawn, and then killing another 2 with push damage in the same attack, 1000 here will miss the middle teleport, but 1500 fires all 3. both work for a double kill.
			teleporting = false
			--LOG("REFRESHED")
		end)
	end)
end

local keepPicked = function(pawn)
	lastPicked = pawn
	--LOGF("Pawn %s was now selected!", pawn:GetMechName())
end

function this:load(Hedera_Swapper_ModApiExt)
  Hedera_Swapper_ModApiExt:addPawnKilledHook(teleport)
  --LOG("hooks added!----------------------------------------[!]")
end

local function EVENT_onModsLoaded()
  modApi:addPawnSelectedHook(keepPicked)
end

modApi.events.onModsLoaded:subscribe(EVENT_onModsLoaded)

return this
