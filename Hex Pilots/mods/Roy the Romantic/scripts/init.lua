
-- init.lua is the entry point of every mod

local mod = {
	id = "hedera_chalenge_pilot",
	name = "Roy the Romantic",
	version = "1.0.0",
	requirements = {},
	modApiVersion = "2.3.0",
	icon = "img/mod_icon.png"
}

function mod:init()
	-- look in template/pilot to see how to code pilots.
	require(self.scriptPath .."pilot")
	require(self.scriptPath .."animations")
	--truelch test
	require(self.scriptPath .. "hooks")
end

function mod:load(options, version)
end

return mod
