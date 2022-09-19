
-- init.lua is the entry point of every mod

local mod = {
	id = "hedera_destroyer_pilot",
	name = "Fourier the Vengeful",
	version = "1.0.0",
	requirements = {},
	modApiVersion = "2.3.0",
	icon = "img/mod_icon.png"
}

function mod:init()

	if modApiExt then
		-- modApiExt already defined. This means that the user has the complete
		-- ModUtils package installed. Use that instead of loading our own one.
		Hedera_Destroyer_ModApiExt = modApiExt
	else
		-- modApiExt was not found. Load our inbuilt version
		local extDir = self.scriptPath.."modApiExt/"
		Hedera_Destroyer_ModApiExt = require(extDir.."modApiExt")
		Hedera_Destroyer_ModApiExt:init(extDir)
	end
	
	modApi:appendAsset("img/effects/explo_artillery_reverse.png",self.resourcePath.."img/effects/explo_artillery_reverse.png")
	modApi:appendAsset("img/effects/mountain_phantom.png",self.resourcePath.."img/effects/mountain_phantom.png")
	modApi:appendAsset("img/effects/shatter_phantom.png",self.resourcePath.."img/effects/shatter_phantom.png")

	-- look in template/pilot to see how to code pilots.
	require(self.scriptPath .."pilot")
	require(self.scriptPath.."animations")
	require(self.scriptPath.."hooks")
end

function mod:load(options, version)
	--ModApiExt NAH
	Hedera_Destroyer_ModApiExt:load(self, options, version)
	--NAH
	require(self.scriptPath.."hooks"):load(Hedera_Destroyer_ModApiExt)
end

return mod
