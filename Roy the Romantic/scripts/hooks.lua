--Mod
local mod = mod_loader.mods[modApi.currentMod]

--Paths
local scriptPath = mod.scriptPath
local resourcePath = mod.resourcePath
--------------------------------------------------- UTILITY / LOCAL FUNCTIONS ---------------------------------------------------

local function getUnoccupiedSpace(offset) --offset added to help randomness
	local ret = Point(-1,-1)
	local size = Board:GetSize()
	math.randomseed(os.time() - offset)
	while ret == Point(-1,-1) do
		local x = math.random(0,size.x - 1)
		local y = math.random(0,size.y - 1)
		LOG(tostring(x)..","..tostring(y))
		if not Board:IsBlocked(Point(x,y),PATH_GROUND) or Board:IsPawnSpace(Point(x,y)) then
			ret = Point(x,y)
		end
	end
	LOG("point found!")
	return ret
end



local function tentaCount() --thanks tatu!
	local count = 0
	local enemyList = extract_table(Board:GetPawns(TEAM_PLAYER))
	for i = 1, #enemyList do
		if Board:GetPawn(enemyList[i]):GetType():find("Cult_Tentacle") ~= nil then
			count = count + 1
		end
	end
	return count
end

Cult_Tentacle = Pawn:new{
	Name = "Tentacle",
	Health = 1,
	Image = "burrower",
	MoveSpeed = 7,
	Burrows = true,
	DefaultTeam = TEAM_ENEMY,
	SkillList = {"CultAtk"},
	ImpactMaterial = IMPACT_INSECT,
	SoundLocation = "/enemy/burrower_1/",
	Pushable = false,
	Neutral = true,
}

CultAtk = Skill:new{
	Name = "Consuming Grasp",
	Description = "Crushes an adjacent tile, killing anything on it.",
	PathSize = 1,
	Icon = "weapons/enemy_scorpion1.png",	
	Damage = DAMAGE_DEATH,
	PreDamage = 0,
	Range = 1,
	Web = 0,
	Acid = 0,
	Push = 0,
	Class = "Enemy",
	ScoreEnemy = 5,
	ScoreFriendlyDamage = 5,
	ScoreBuilding = 0,
	ScoreNothing = 0,
	LaunchSound = "",
	SoundBase = "/enemy/scorpion_soldier_1",
	TipImage = {
		Unit = Point(2,2),
		Enemy = Point(2,1),
		Target = Point(2,1),
		CustomPawn = "Cult_Tentacle"
	}
}

function CultAtk:GetSkillEffect(p1, p2)
	local ret = SkillEffect()
	local direction = GetDirection(p2 - p1)
	local push = self.Push == 1 and direction or DIR_NONE
	

	if self.Web == 1 then--TRAILER
		local sound = SpaceDamage(p2)
		ret:AddDamage(SoundEffect(p2,self.SoundBase.."/attack_web"))
		ret:AddGrapple(p1,p2,"hold")
	end
	
	local damage = SpaceDamage(p2,self.Damage,push)
	damage.sAnimation = "tentacles"
	damage.iTerrain = TERRAIN_LAVA
	damage.iAcid = self.Acid
	damage.iDamage = DAMAGE_DEATH
	damage.sSound = self.SoundBase.."/attack"
	
	ret:AddQueuedMelee(p1,damage)--TRAILER
		
	return ret
end	
----------------------------------------------- HOOKS HANDLERS -----------------------------------------------

local function IsUserPresent()
	--LOG("Running Pilot Check")
	for i = 0, 2 do
		local mech = Board:GetPawn(i)
		--LOG("i: " .. tostring(i))
		if mech then
			--LOG("ability: " .. mech:GetAbility()) 
			if mech:IsAbility("TentacleSkill") then
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

local function GetSkillEffect()
	local ret = SkillEffect()
	local present = tentaCount()
	LOG (tostring(3 - present) .. " tentacles missing")
	if present >= 0 and present < 3 then
		for i = 0, 2 - present do
			LOG("spawning " .. tostring(i))
			local pawn = PAWN_FACTORY:CreatePawn("Cult_Tentacle") 
			Board:AddPawn(pawn) 
			pawn:SetTeam(TEAM_ENEMY) 
			pawn:SpawnAnimation() 
			pawn:SetTeam(TEAM_PLAYER) 
			--tentacle.iDamage = "DAMAGE_DEATH"
		end
	end
	return ret
end


local spawn = function(mission)
	if IsUserPresent() and Game:GetTeamTurn() == TEAM_ENEMY then
			Board:AddEffect(GetSkillEffect())
	end
end

----------------------------------------------- HOOKS / EVENTS SUBSCRIPTION -----------------------------------------------

local function EVENT_onModsLoaded()
	modApi:addNextTurnHook(spawn)
end

modApi.events.onModsLoaded:subscribe(EVENT_onModsLoaded)