--Mod
local mod = mod_loader.mods[modApi.currentMod]

--Paths
local scriptPath = mod.scriptPath
local resourcePath = mod.resourcePath
--------------------------------------------------- UTILITY / LOCAL FUNCTIONS ---------------------------------------------------
ANIMS.Evac_TimeTravel = Animation:new{
	Image = "effects/timetravel.png",
	NumFrames = 19,
	Loop = false,
	PosX = -32,
	Time = 0.05,
	PosY = -145,
}
----------------------------------------------- HOOKS HANDLERS -----------------------------------------------

local function IsUserPresent()
	--LOG("Running Pilot Check")
	for i = 0, 2 do
		local mech = Board:GetPawn(i)
		--LOG("i: " .. tostring(i))
		if mech then
			--LOG("ability: " .. mech:GetAbility()) 
			if mech:IsAbility("EvacuateSkill") then
				--LOG("mech has right skill!")
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
			if mech:IsAbility("EvacuateSkill") then
				--LOG("mech has the right skill!")
				return Board:GetPawn(i)
			end
		end
	end
	return nil
end


local function GetSkillEffect()
	local user = GetUser()
	for dir = DIR_START, DIR_END do
		local building = user:GetSpace()+DIR_VECTORS[dir]
		if Board:IsBuilding(building) and not Board:IsUniqueBuilding(building) and Board:IsPowered(building) then
			Board:AddAlert(building,"EVACUATING")
			Board:AddAnimation(building, "Evac_TimeTravel", NO_DELAY)
			Board:Ping(building,GL_Color(250, 250, 250, 0.75))
			Board:SetPopulated(false,building)
			user:AddMoveBonus(-1)
			--Board:Ping(user:GetSpace(),GL_Color(250, 70, 70, 0.75))
		end
	end
end


local evac = function(mission)
	if IsUserPresent() and Game:GetTeamTurn() == TEAM_PLAYER then
			Board:AddEffect(GetSkillEffect())
	end
end

----------------------------------------------- HOOKS / EVENTS SUBSCRIPTION -----------------------------------------------

local function EVENT_onModsLoaded()
	modApi:addNextTurnHook(evac)
end

modApi.events.onModsLoaded:subscribe(EVENT_onModsLoaded)