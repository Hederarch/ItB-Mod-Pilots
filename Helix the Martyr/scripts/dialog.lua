
-- Adds a personality without the use of a csv file.
-- Table of responses to various triggers.
return {
	-- Game States
	Gamestart = {"Let out of my cage at last.","I am starving, commander. Hurry up and get the Vek.","Islands hunger as I hunger. We devour these Vek together.","#squad, let us feast."},
	FTL_Found = {"Unappetizing thing in pod.","Tastes terrible. Put it back in the pod."},
	--FTL_Start = {},
	Gamestart_PostVictory = {"Hunger is not sated, commander. Require a second helping of Vek."},
	Death_Revived = {"I do not live, I cannot die."},
	Death_Main = {"Do not mourn me.","Flimsy machines.","Just a bruise."},
	Death_Response = {"#main_first was honored prey.","Is anyone going to eat that?","#main_first has been digested."},
	Death_Response_AI = {"Flimsy machines.","Not even a real hunt.","Pathetic prey."},
	TimeTravel_Win = {"Freedom at last."},
	Gameover_Start = {"Wretched grid! Loathsome grid! No more power!","Pathetic pathetic pathetic! We are caught again!","Turn the power back on! I'm not done yet!"},
	Gameover_Response = {"The Vek are all over! Let me loose, I can take them!","Do not drag me back. I am so close to my feast!"},
	
	-- UI Barks
	Upgrade_PowerWeapon = {"Enough. Back to battle.","I cannot eat this.","A new utensil.",},
	Upgrade_NoWeapon = {"Cannot train me.","Waste of time.","Grrrrr...","Wretched commander."},
	Upgrade_PowerGeneric = {"Enough. Back to battle.","Just give me the core and leave.","I don't care about this. Bring me more Vek.",},
	
	-- Mid-Battle
	MissionStart = {"Let the hunt begin.","Point me at the enemy.","Stick together. We hunt as a pack.",},
	Mission_ResetTurn = {"Where are you taking me?","Do not tug my leash. Leave me to my work.","Loathsome breaches. Let me hunt in peace!"},
	MissionEnd_Dead = {"Not enough! I need more!","Is that all? I was just getting started."},
	MissionEnd_Retreat = {"We must be more thorough next time.","At least I can scavenge the scraps.","Bring them back. I wasn't done."},

	MissionFinal_Start = {"Bleh! The pheremones are so thick I can hardly breathe!","Anyone else smell something... angry?",},
	MissionFinal_StartResponse = {"Pylons make poor seasoning.","They're in the way of my dining."},
	--MissionFinal_FallStart = {},
	MissionFinal_FallResponse = {"I'm being eaten!","It's eating us!"},
	--MissionFinal_Pylons = {},
	MissionFinal_Bomb = {"Even I can't eat this much.","With all this, my hunger would finally be sated.","They will tear us apart before I can eat enough."},
	--MissionFinal_BombResponse = {},
	MissionFinal_CaveStart = {"The bomb is savoring this hive. Let it finish.","The bomb will digest it for us. Let it rest.",},
	--MissionFinal_BombDestroyed = {},
	MissionFinal_BombArmed = {"The hunt is over.","The bomb is ready to feast.","The bomb is about to eat us."},

	PodIncoming = {"A morsel appears on sensors.","A garnish has appeared on our meal."},
	PodResponse = {"Don't bother. We hunt bugs, not boxes.","Why do we care? It's not edible, is it?"},
	PodCollected_Self = {"This better not weigh me down.","I hate canned food."},
	PodDestroyed_Obs = {"Pod digested.","Good riddance. Back to the hunt.","Pod has been chewed."},
	Secret_DeviceSeen_Mountain = {"Something shiny from the mountain. A treat, maybe?"},
	Secret_DeviceSeen_Ice = {"Something shiny from the water. A treat, maybe?"},
	Secret_DeviceUsed = {"Tastes loud. Why is it screaming?"},
	Secret_Arriving = {"A delicacy has appeared on sensors."},
	Emerge_Detected = {"More Vek ready to sprout.","They're bringing the next course right to us."},
	Emerge_Success = {"A new appetizer, fresh from the ground.","Fresh meat has entered the field."},
	Emerge_FailedMech = {"Ack! Don't push me!","The ground is biting!"},
	Emerge_FailedVek = {"It's wounded. Let me at it!","They're tenderizing each other."},

	-- Mech State
	Mech_LowHealth = {"I'm ready.","Don't let the fun stop now!","The Vek cannot kill me in a way that matters."},
	Mech_Webbed = {"I will not be leashed!","You cannot tame me!","This webbing lacks flavor."},
	Mech_Shielded = {"Don't you dare cage me.","You're trying to trap me?"},
	Mech_Repaired = {"Don't pamper me.","You're wasting my time."},
	Pilot_Level_Self = {"I am the apex predator!"},
	Pilot_Level_Obs = {"Meaningless titles. Show me your real skill."},
	Mech_ShieldDown = {"I will not be caged!","At last, freedom!","Wretched bubble."},

	-- Damage Done
	Vek_Drown = {"Vek's been swallowed.","Devoured by the sea.","I can't stand soggy food."},
	Vek_Fall = {"Vek's been swallowed.","Devoured by the earth.","A waste of good carrion."},
	Vek_Smoke = {"Its pheremones are scrambled.","Can't smell us coming anymore.","Quick! Strike while it's confused!","Vek's got a new smoky flavor."},
	Vek_Frozen = {"It's leftovers now.","Vek's in the fridge now.","That should keep it fresh."},
	VekKilled_Self = {"Delicious.","Vek chewed.","Vek digested."},
	VekKilled_Obs = {"Leave some for me.","Lousy cooking, but I'll take it."},
	VekKilled_Vek = {"The food chain ties in knots.","They're cannibalizing each other."},

	DoubleVekKill_Self = {"A hearty meal.","I've missed the taste of fresh Vek."},
	DoubleVekKill_Obs = {"Hey! Leave some for me!","Don't get greedy, #main_first."},
	DoubleVekKill_Vek = {"There won't be any left for us."},

	MntDestroyed_Self = {"Bleh! Tasteless rocks.","I'm just chewing on rocks now.","This is terrible prey."},
	MntDestroyed_Obs = {"What are you doing?! Point at the bugs!"},
	MntDestroyed_Vek = {"They're scratching at rocks.","Such mindless prey.","Vek are busy chewing gravel."},

	PowerCritical = {"The grid starves!","Tighten your belts, everyone. The grid's running thin."},
	Bldg_Destroyed_Self = {"This feels strangely... right.","There's barely any meat in this shell."},
	Bldg_Destroyed_Obs = {"What are you doing?! Point at the bugs!"},
	Bldg_Destroyed_Vek = {"Loathsome bugs.","Forget the building. Strike while it's distracted!","The grid grows hungrier!"},
	Bldg_Resisted = {"The building's shell has held.","The Vek haven't cracked it yet.","The building is sturdy prey."},


	-- Shared Missions
	--[[Mission_Train_TrainStopped = {},
	Mission_Train_TrainDestroyed = {},
	Mission_Block_Reminder = {},

	-- Archive
	Mission_Airstrike_Incoming = {},
	Mission_Tanks_Activated = {},
	Mission_Tanks_PartialActivated = {},
	Mission_Dam_Reminder = {},
	Mission_Dam_Destroyed = {},
	Mission_Satellite_Destroyed = {},
	Mission_Satellite_Imminent = {},
	Mission_Satellite_Launch = {},
	Mission_Mines_Vek = {},

	-- RST
	Mission_Terraform_Destroyed = {},
	Mission_Terraform_Attacks = {},
	Mission_Cataclysm_Falling = {},
	Mission_Lightning_Strike_Vek = {},
	Mission_Solar_Destroyed = {},
	Mission_Force_Reminder = {},

	-- Pinnacle
	Mission_Freeze_Mines_Vek = {},
	Mission_Factory_Destroyed = {},
	Mission_Factory_Spawning = {},
	Mission_Reactivation_Thawed = {},
	Mission_SnowStorm_FrozenVek = {},
	Mission_SnowStorm_FrozenMech = {},
	BotKilled_Self = {},
	BotKilled_Obs = {},

	-- Detritus
	Mission_Disposal_Destroyed = {},
	Mission_Disposal_Activated = {},
	Mission_Barrels_Destroyed = {},
	Mission_Power_Destroyed = {},
	Mission_Teleporter_Mech = {},
	Mission_Belt_Mech = {},]]
}