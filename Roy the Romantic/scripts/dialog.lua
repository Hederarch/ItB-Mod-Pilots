-- Adds a personality without the use of a csv file.
-- Table of responses to various triggers.
return {
	-- Game States
	Gamestart = {"Do not let the Vek scare you. They're lovely conversationalists.","Even up here I can hear her singing, deep beneath the hive.","Good to see the islands intact again, and just as beautiful as I remember."},
	FTL_Found = {"My translators aren't working. It doesn't speak like the Vek."},
	--FTL_Start = {},
	Gamestart_PostVictory = {"Where's the volcano? I long to feel her firey embrace again!"},
	Death_Revived = {"Wasn't my first death, nor my last."},
	Death_Main = {"Betrayal! Such cruel betrayal!","See you in hell, vermin!"},
	Death_Response = {"A tragedy. But we must look forward.","The show must go on.","Such bitter betrayal."},
	Death_Response_AI = {"They're breaking our props.","Do they plan to replace it?","The engineers will handle that. I hope."},
	TimeTravel_Win = {"I'm sad to see you go my dear volcano. May we meet again."},
	Gameover_Start = {"The Vek have done remarkably well. Maybe they earned this timeline.","Our curtain call has come.","The Vek are getting louder. Did the grid give out?"},
	Gameover_Response = {"That's my cue to leave.","Congratulations, Vek.","Goodbye, my beloved islands. I will do better."},
	
	-- UI Barks
	Upgrade_PowerWeapon = {"Must I fire it?","Such a terrifying contraption.","Have we tried just talking to them instead?",},
	Upgrade_NoWeapon = {"I'm a lover, not a figher.","I don't need weapons. The volcano will defend me.","Are we going to negotiate with the Vek now?","Keep your gadgets. The volcano will save me.",},
	Upgrade_PowerGeneric = {"I must admit, these cores are rather pretty.","Can this go to my audio equipment instead?","Plug in my receiver. This power could get us a connection.",},
	
	-- Mid-Battle
	MissionStart = {"Come to me, my dear!","Let us dance!","My love's helping hands are on their way.","Come out and play, dear Vek!",},
	Mission_ResetTurn = {"Ready to retrace our steps?","What a ride! Again! Again!","These breaches give me such a rush.",},
	MissionEnd_Dead = {"The Vek have gone completely quiet.","Could they cheer a little queter? They're going to blow out my receiver.","We've saved the people, sure, but think of the bloodshed."},
	MissionEnd_Retreat = {"Hold fire, everyone. They're retreating.","I'm losing Vek signal. They're on the move!","If only we could follow them..."},

	MissionFinal_Start = {"Honey, I'm home!","Her singing is getting louder! We've found it!","Come to me, my molten dear."},
	MissionFinal_StartResponse = {"Careful deploying those pylons.","Watch out, pylons incoming!","You'd think they'd arrange a softer landing."},
	--MissionFinal_FallStart = {},
	MissionFinal_FallResponse = {"I'm on my way, my dear!","Going down!",""},
	--MissionFinal_Pylons = {},
	MissionFinal_Bomb = {"Back in the warm embrace of the volcano.","At last, I'm home.","My beloved, oh how I've missed you."},
	--MissionFinal_BombResponse = {},
	MissionFinal_CaveStart = {"Must we do the bomb again?","I hate to say it, but that bomb is our only way out of here.","Forgive me, my dear."},
	--MissionFinal_BombDestroyed = {},
	MissionFinal_BombArmed = {"I leave you this parting gift, my dear.","Must we leave so soon?","That's our cue to go."},

	PodIncoming = {"A gift? Oh you shouldn't have.","A present! From my volcanic lover perhaps?"},
	PodResponse = {"I simply MUST know what's inside!","Let's make sure the Vek don't unwrap it before we do.",},
	PodCollected_Self = {"Hurry up with the battle, I can't wait to open this.","Gift secure! Hurry up and end the battle!"},
	PodDestroyed_Obs = {"I guess we'll never know what was in it.","What a waste.","That was an accident, right?"},
	Secret_DeviceSeen_Mountain = {"My receiver's going crazy! What is that mountain broadcasting?!","Something in that mountain is taking up the airwaves!"},
	Secret_DeviceSeen_Ice = {"My receiver's going crazy! What is that lake broadcasting?!","Something in that lake is taking up the airwaves!"},
	Secret_DeviceUsed = {"The signal's getting louder. What could it be contacting?","Finally it shuts up. But it sounded like it was calling something..."},
	Secret_Arriving = {"A gift? But where did it come from?"},
	Emerge_Detected = {"Come out and play, Vek!","The nearby Vek are getting chatty. Are they calling friends?"},
	Emerge_Success = {"More friends to join us!","Dance with me, dear Vek!"},
	Emerge_FailedMech = {"Oh dear, am I in your way?","Oh, pardon me."},
	Emerge_FailedVek = {"Oh adorable! They're arguing!","If only you guys could hear the squabble those two are having."},

	-- Mech State
	Mech_LowHealth = {"These bugs play so rough sometimes.","That last one only just missed the cockpit.","Comms are in critical condition. You can still hear me, right?"},
	Mech_Webbed = {"Look at that! It's hugging me!","Goodness, it's gotten all clingy.","They do this as a sign of affection too, you know."},
	Mech_Shielded = {"What a gorgeous bubble.","Don't worry Vek dearies, it's just some personal space."},
	Mech_Repaired = {"Back up and kicking!", "Ready for round two!"},
	Pilot_Level_Self = {"Don't tell the Vek, they'll get jealous.","Oh, this will really impress her."},
	Pilot_Level_Obs = {"Don't get too proud of yourself, #main_first."},
	Mech_ShieldDown = {"The bubble's popped!","Finally, no more interference on my sensors.","Back up close and personal, dear Vek!"},

	-- Damage Done
	Vek_Drown = {"They hate swimming, you know.","Oh my. I don't think it's surviving that.","Such a brutal way to go.","Let's hope it was painless."},
	Vek_Fall = {"Back to the tunnels it goes.","Oh my. I don't think it's surviving that.","Such a brutal way to go.","Let's hope it was painless."},
	Vek_Smoke = {"Poor thing sounds confused.","I don't think it liked that.","At least the smoke won't hurt it.","I'm picking up sounds of... coughing?","That made it calm down nicely."},
	Vek_Frozen = {"Poor thing would shiver if it wasn't immobile.","It'll be fine in there.","That'll keep it safe for later.","Why can't we do this more often?","It's the humane thing to do."},
	VekKilled_Self = {"Forgive me, my dear.","I wish there was another way.","I only meant to stun it.","Can't stand putting them down like this."},
	VekKilled_Obs = {"At least it'll keep people safe.","Did you have to be so rough with it?","How cruel.","Better than letting it suffer, I suppose.","You wouldn't be so rough with them if you heard what I do."},
	VekKilled_Vek = {"That one won the argument for sure.","These bugs play so rough sometimes.","It's not going to apologize?","Must they be so violent?"},

	DoubleVekKill_Self = {"I... I didn't mean to.","These bugs are so so fragile sometimes.","Well, they can't get hurt anymore.","The civilians had better be grateful."},
	DoubleVekKill_Obs = {"That was just excessive.","Now you're just showing off.","Two at once? I can't watch.","Impressive, but unnecessary."},
	DoubleVekKill_Vek = {"These bugs never change, do they?","What a bully.","Now they're just lashing out."},

	MntDestroyed_Self = {"Oops! Watch out for rubble!","There goes a lovely landmark.","I wish we didn't have to ruin the landscape like this.","There goes a part of paradise."},
	MntDestroyed_Obs = {"My signal's gotten clearer all of a sudden.","Hang on, wasn't there a mountain there?","There goes a landmark.","Carving up paradise, I see."},
	MntDestroyed_Vek = {"They were calling that mountain some nasty things.","These bugs play so rough.","The mountain didn't survive their dance.","Wasn't there a mountain there?","It's trying to dig a new hive."},

	PowerCritical = {"I'm getting power warnings. The grid isn't holding up, is it?","Picking up several distress signals. How's the grid doing?"},
	Bldg_Destroyed_Self = {"That was empty, right?","Oh, the grid won't like that."},
	Bldg_Destroyed_Obs = {"Don't get careless, #main_first.","Oh, the grid won't like that.","What a disaster."},
	Bldg_Destroyed_Vek = {"Oh right. They do that.","These bugs play so rough.","I don't think they know the damage they're doing."},
	Bldg_Resisted = {"See? They're gentler than you think.","Just roughousing, nothing dangerous.","Grid's holding steady."},


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