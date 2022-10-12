

local mod = mod_loader.mods[modApi.currentMod]
local resourcePath = mod.resourcePath
local scriptPath = mod.scriptPath

local this = {}

local function IsUserPresent()
	for i = 0, 2 do
		local mech = Board:GetPawn(i)
		--LOG("i: " .. tostring(i))
		if mech then
			--LOG("ability: " .. mech:GetAbility()) 
			if mech:IsAbility("Revive") then
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
			if mech:IsAbility("Revive") then
				--LOG("mech has the right skill!")
				return Board:GetPawn(i)
			end
		end
	end
	return nil
end

local function GetSkillEffect()
	local userID = GetUser():GetId()
	local ret = SkillEffect()
	for i=0,2 do
		local target = Board:GetPawn(i):GetSpace()
		local heal = SpaceDamage(target,-1)
		if i == userID then
			heal = SpaceDamage(target,-10)
		end
		ret:AddDamage(heal)
	end
	return ret
end

local function InitialVfx()
	local ret = SkillEffect()
	local userID = GetUser():GetId()
	for i=0,2 do
		local target = Board:GetPawn(i):GetSpace()
		local vfx = SpaceDamage(target,0)
		vfx.sAnimation = "LightningBolt_Animated"
		ret:AddBurst(target,"Emitter_Crack_Start2",DIR_NONE)
		ret:AddBounce(target,2)
		ret:AddDamage(vfx)
		ret:AddDelay(0.1)
	end
	return ret
end

local function revive(mission, pawn)
	--LOG("CHECK")
	if IsUserPresent() then
		local userID = GetUser():GetId()
		if pawn:GetId() == userID then
			--LOG("ACTIVATING")
			Board:AddEffect(InitialVfx())
			modApi:conditionalHook(
				function()
					return not Board:IsBusy()
				end,
					function()
					Board:AddEffect(GetSkillEffect())
				end)
		end
	end
end

function this:load(Hedera_Suicide_ModApiExt)
  Hedera_Suicide_ModApiExt:addPawnKilledHook(revive)
  --LOG("hooks added!----------------------------------------[!]")
end

return this

