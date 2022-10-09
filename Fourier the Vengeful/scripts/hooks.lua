--Mod
local mod = mod_loader.mods[modApi.currentMod]

--Paths
local scriptPath = mod.scriptPath
local resourcePath = mod.resourcePath


local this = {}
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

----------------------------------------------- HOOKS HANDLERS -----------------------------------------------

local function IsUserPresent()
	for i = 0, 2 do
		local mech = Board:GetPawn(i)
		LOG("i: " .. tostring(i))
		if mech then
			--LOG("ability: " .. mech:GetAbility()) 
			if mech:IsAbility("ResetDamage") then
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

local function GetSkillEffect()
	local ret = SkillEffect()
	local damage = SpaceDamage(Point(0,0),1)
	damage.sAnimation = "ExploArtReverse"
	local crush = SpaceDamage(Point(0,0),1)
	crush.sAnimation = "Mountain_Phantom"
	
	--ret:AddBoardShake(1)
	math.randomseed(os.time())
	
	local board_size = Board:GetSize()
	for i = 0, board_size.x - 1 do
		for j = 0, board_size.y - 1 do
			if Board:IsValid(Point(i,j)) and not Board:IsBuilding(Point(i,j)) then
				if Board:IsPawnSpace(Point(i,j)) and not Board:IsPawnTeam(Point(i,j),TEAM_PLAYER) then
					damage.loc = Point(i,j)
					ret:AddDamage(damage)
				elseif Board:IsTerrain(Point(i,j),TERRAIN_MOUNTAIN) then
					crush.loc = Point(i,j)
					ret:AddDamage(crush)
				end
			end
			ret:AddBounce(Point(i,j),-10)
		end
		local breakfx = SpaceDamage(Point(i,math.random(0,board_size.y - 1)),0)
		breakfx.sAnimation = "LightningBolt_Animated2"
		ret:AddDamage(breakfx)
		ret:AddDelay(0.05)
	end
	
	return ret
end

local onReset = function(mission)
	if IsUserPresent() then
		modApi:scheduleHook(100, function()
			Board:AddEffect(GetSkillEffect())
			LOG("SkillEffect added!")
		end)
	end
end

----------------------------------------------- HOOKS / EVENTS SUBSCRIPTION -----------------------------------------------

function this:load(Hedera_Destroyer_ModApiExt)
  Hedera_Destroyer_ModApiExt:addResetTurnHook(onReset)
  LOG("hook added!")
end

return this