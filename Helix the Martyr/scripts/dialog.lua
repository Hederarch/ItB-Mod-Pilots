
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
	Vek_Fall = {"Vek's been swallowed.","Devoured by the earth.","The islands hunger as I hunger."},
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
	Mission_Train_TrainStopped = {"The train is limping along."},
	Mission_Train_TrainDestroyed = {"The train is too badly wounded."},
	Mission_Block_Reminder = {"We cannot let too many Vek on our plate. Keep them under!"},

	-- Archive
	Mission_Airstrike_Incoming = {"Pilots incoming to steal my kills."},
	Mission_Tanks_Activated = {"New morsels?"},
	Mission_Tanks_PartialActivated = {"A new morsel?"},
	Mission_Dam_Reminder = {"We cannot let the dam live."},
	Mission_Dam_Destroyed = {"The river will swallow the Vek below."},
	Mission_Satellite_Destroyed = {"The rocket is too badly wounded to escape."},
	Mission_Satellite_Imminent = {"The rocket is preparing its escape."},
	Mission_Satellite_Launch = {"The rocket has broken free!"},
	Mission_Mines_Vek = {"Stop that! Come and fight me!"},

	-- RST
	Mission_Terraform_Destroyed = {"More for me."},
	Mission_Terraform_Attacks = {"The islands hunger as I hunger."},
	Mission_Cataclysm_Falling = {"The islands hunger as I hunger."},
	Mission_Lightning_Strike_Vek = {"Fresh fried Vek."},
	Mission_Solar_Destroyed = {"Strike while they're busy chewing glass."},
	Mission_Force_Reminder = {"We must finish these mountains as part of our meal."},

	-- Pinnacle
	Mission_Freeze_Mines_Vek = {"It's in the fridge now."},
	Mission_Factory_Destroyed = {"No more morsels?"},
	Mission_Factory_Spawning = {"Another morsel for me."},
	Mission_Reactivation_Thawed = {"More leftovers."},
	Mission_SnowStorm_FrozenVek = {"It's leftovers now."},
	Mission_SnowStorm_FrozenMech = {"You cannot trap me! I will break free!"},
	BotKilled_Self = {"Nutritious, but bland."},
	BotKilled_Obs = {"Don't try that on me."},

	-- Detritus
	Mission_Disposal_Destroyed = {"More for me."},
	Mission_Disposal_Activated = {"The island is sick."},
	Mission_Barrels_Destroyed = {"Drink that, Vek."},
	Mission_Power_Destroyed = {"The grid has been wounded."},
	Mission_Teleporter_Mech = {"Loathsome tricks."},
	Mission_Belt_Mech = {"Don't drag me around."},
}