
-- init.lua is the entry point of every mod

local mod = {
	id = "hedera_swapper_pilot",
	name = "Olga the Empath",
	version = "1.0.0",
	requirements = {},
	modApiVersion = "2.3.0",
	icon = "img/mod_icon.png"
}

function mod:init()

	if modApiExt then
		-- modApiExt already defined. This means that the user has the complete
		-- ModUtils package installed. Use that instead of loading our own one.
		Hedera_Swapper_ModApiExt = modApiExt
	else
		-- modApiExt was not found. Load our inbuilt version
		local extDir = self.scriptPath.."modApiExt/"
		Hedera_Swapper_ModApiExt = require(extDir.."modApiExt")
		Hedera_Swapper_ModApiExt:init(extDir)
	end

	-- look in template/pilot to see how to code pilots.
	require(self.scriptPath .."pilot")

	--truelch test
	require(self.scriptPath .. "hooks")
end

function mod:load(options, version)
	--ModApiExt NAH
	Hedera_Swapper_ModApiExt:load(self, options, version)
	--NAH
	require(self.scriptPath.."hooks"):load(Hedera_Swapper_ModApiExt)
end

return mod
