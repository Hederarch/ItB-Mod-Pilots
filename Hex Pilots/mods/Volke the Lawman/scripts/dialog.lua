
-- Adds a personality without the use of a csv file.
-- Table of responses to various triggers.
return {
	-- Game States
	Gamestart = {"There ain't room for Vek on these islands.","R.S.T, back as it was. Except maybe I'm in charge this time.","Time for some frontier justice.","Listen up #squad, you answer to me now. Understood?"},
	FTL_Found = {"There's a weird lookin' Vek in this pod. Do I shoot it?","This ain't any Vek I've ever seen. Do we keep it?"},
	--FTL_Start = {},
	Gamestart_PostVictory = {"Howdy, commander. Have we met before?"},
	Death_Revived = {"Can't keep ol' #self_second down that easy."},
	Death_Main = {"Didn't even get to ride into the sunset.","I'm smoked. Keep fightin' for me."},
	Death_Response = {"Which Vek did that? I'm takin' its head.","Rest well, pardner.","Aw, hell. Not another."},
	Death_Response_AI = {"Aw, hell. The computer's busted.","Useless tech.","At least it wasn't occupied."},
	TimeTravel_Win = {"You've done me proud, #squad. I'll see you on the other side."},
	Gameover_Start = {"Aw, hell. There goes the power.","The lights are going dark. No more grid.","The grid's smoked. We're done for."},
	Gameover_Response = {"We'll get them next time.","We saved who we could. Let's go.","There's no more helpin' here. Let's go."},
	
	-- UI Barks
	Upgrade_PowerWeapon = {"That's one hell of a six shooter.","Locked and loaded, pardner.","",},
	Upgrade_NoWeapon = {"My pocket pistol can't handle these varmints.","Am I supposed to walk out there and punch 'em myself?","You think you're funny, commander?"},
	Upgrade_PowerGeneric = {"Mighty fine tech you got here.","Everything's in place.","That'll do nicely.",},
	
	-- Mid-Battle
	MissionStart = {"Alright, everybody out.","Can't stand workin' with an audience.","Sherrif's in town now.","This ain't no place for bystanders.",},
	Mission_ResetTurn = {"Warn me next time.","These things make my teeth rattle.","Don't go un-killing my Vek."},
	MissionEnd_Dead = {"Darn. Not enough left behind for a trophy.","You're welcome, everybody.","That's all of 'em."},
	MissionEnd_Retreat = {"The Vek are turning tail!","Scared the varmints off.","At least they're out of here."},

	MissionFinal_Start = {"Time for a showdown.","Come out and duel, Vek.","Finally a real showdown."},
	MissionFinal_StartResponse = {"Pylons fired. Watch out, #squad.","Keep those pylons in one piece. We gotta finish this."},
	--MissionFinal_FallStart = {},
	MissionFinal_FallResponse = {"We're goin' down!","I'm used to quakes, but this is new."},
	--MissionFinal_Pylons = {},
	MissionFinal_Bomb = {"Alright hive, let's draw!","I bet Kern's got some firepower for this."},
	--MissionFinal_BombResponse = {},
	MissionFinal_CaveStart = {"Keep that bomb together. We can't win without it.","Bomb's priming. Let's ket some shots in while we can."},
	--MissionFinal_BombDestroyed = {},
	MissionFinal_BombArmed = {"Hang on, the bomb's gettin' hot.","Wait a minute. Isn't the bomb armed?","Bomb's ready, isn't it?"},

	PodIncoming = {"Hey, it's one of my pods.","Got something coming in hot."},
	PodResponse = {"Is that one of mine?","Is that an escape pod?","There better not be civillians inside."},
	PodCollected_Self = {"Pod wrangled.","Pod caught."},
	PodDestroyed_Obs = {"Can't save 'em all.","This is no place for bystanders.","A damn shame, that is."},
	Secret_DeviceSeen_Mountain = {"Somethin' strange is coming from that mountain."},
	Secret_DeviceSeen_Ice = {"Somethin' strange is coming from the water."},
	Secret_DeviceUsed = {"Aw hell, I've set it off.","I've set it off, now what?"},
	Secret_Arriving = {"What in tarnation?"},
	Emerge_Detected = {"Keep those varmints underground!","Keep 'em underground where they belong!"},
	Emerge_Success = {"Aw, hell. Now they'll go for the buildings.","Maybe they'll go back once we start shooting."},
	Emerge_FailedMech = {"And stay down.","Can't get past the law."},
	Emerge_FailedVek = {"Those varmints don't like sharin' space.","These varmints are helping us for once."},

	-- Mech State
	Mech_LowHealth = {"One more hit and I'm smoked.","I ain't going down that easy.","This #self_mech's running out of steam."},
	Mech_Webbed = {"I've been lassoed.","I've been wrangled.","It's got me wrangled."},
	Mech_Shielded = {"That'll keep them off me.","Finally some real protection."},
	Mech_Repaired = {"A little elbow grease, and it's runnin' like new."},
	Pilot_Level_Self = {"That's how it's done, #squad."},
	Pilot_Level_Obs = {"Nice work, pardner.","Nice work, #main_second."},
	Mech_ShieldDown = {"Didn't feel a thing.","I was usin' that."},

	-- Damage Done
	Vek_Drown = {"Vek's down with the fish now.","Vek's gone swimming.","It's not comin' back up."},
	Vek_Fall = {"Vek's gone back to the hive.","Vek's not flyin', that's for sure.","It's not comin' back up."},
	Vek_Smoke = {"Choke on that, vermin.","That'll keep it occupied."},
	Vek_Frozen = {"Vek's chilled out.","Not as good as a kill, but it'll do.","That's one thorough freeze."},
	VekKilled_Self = {"Now that's some frontier justice.","Not a quickdraw, this one.","Only room for one of us in this town.","Only good Vek's a dead Vek.","One less varmint."},
	VekKilled_Obs = {"Nice shootin', pardner.","Nice shooting, #main_second.","That'll teach 'em."},
	VekKilled_Vek = {"Got 'em dueling each other now.","Pow! Vek down.","Varmint's turned traitor.","A good old fashioned shootout."},

	DoubleVekKill_Self = {"Now that's some real frontier justice.","I'm a damn fine sharpshooter.","Pow! That's two of 'em.","Don't mess with this sherrif."},
	DoubleVekKill_Obs = {"Damn fine shootin', pardner.","Damn fine shooting, #main_second.","Keep that up and we'll have 'em gone for good."},
	DoubleVekKill_Vek = {"Got 'em dueling each other now.","Pow! Double kill.","A good old fashioned shootout."},

	MntDestroyed_Self = {"R.S.T. style.","Terraforming by hand, like they did back then.","Now it's just dust."},
	MntDestroyed_Obs = {"Quality teardown. You considered work at R.S.T.?","Thorough work, pardner.","Mighty fine terraformin'."},
	MntDestroyed_Vek = {"They've learned a thing or two from R.S.T.","I hate to say it, that's quality terraformin'."},

	PowerCritical = {"We're runnin' out of juice.","The grid's not lookin' too good."},
	Bldg_Destroyed_Self = {"We cleared that one out, right?","That one's empty, right?"},
	Bldg_Destroyed_Obs = {"I oughta shoot you myself.","There's still people in there!","That one wasn't empty, idiot!"},
	Bldg_Destroyed_Vek = {"Didn't get to it in time.","Can't save 'em all.","Why've they all gotta go for the full ones?"},
	Bldg_Resisted = {"Mighty fine construction.","That's a relief.","All A-OK in there."},


	-- Shared Missions
	Mission_Train_TrainStopped = {"The engineers will handle it."},
	Mission_Train_TrainDestroyed = {"The train's smoked."},
	Mission_Block_Reminder = {"We've got to keep these varmints underground!"},

	-- Archive
	Mission_Airstrike_Incoming = {"Here comes the calvary."},
	Mission_Tanks_Activated = {"The little pistols are up and running."},
	Mission_Tanks_PartialActivated = {"The little pistol's up and running."},
	Mission_Dam_Reminder = {"We've got terraformin' to do. Take out the dam!"},
	Mission_Dam_Destroyed = {"Now that's a mighty fine river."},
	Mission_Satellite_Destroyed = {"At least it weren't occupied."},
	Mission_Satellite_Imminent = {"Stand back, it's gonna blow."},
	Mission_Satellite_Launch = {"Another job well done."},
	Mission_Mines_Vek = {"That'll teach it to mess with us."},

	-- RST
	Mission_Terraform_Destroyed = {"Aw, hell. Now it's busted."},
	Mission_Terraform_Attacks = {"I remember doing that."},
	Mission_Cataclysm_Falling = {"It wouldn't be R.S.T. if it weren't trying to kill us."},
	Mission_Lightning_Strike_Vek = {"Vek's been fried."},
	Mission_Solar_Destroyed = {"Can't save 'em all."},
	Mission_Force_Reminder = {"We've got terraformin' to do. Take down those mountains."},

	-- Pinnacle
	Mission_Freeze_Mines_Vek = {"It's not botherin' us anymore."},
	Mission_Factory_Destroyed = {"That's bad, but I'm not gonna miss it."},
	Mission_Factory_Spawning = {"It's makin' more critters."},
	Mission_Reactivation_Thawed = {"They're thawing fast! Battle stations!"},
	Mission_SnowStorm_FrozenVek = {"Pinnacle's got some fancy storms of their own."},
	Mission_SnowStorm_FrozenMech = {"I can deal with bad weather."},
	BotKilled_Self = {"Ooh, that's not gettin' back up."},
	BotKilled_Obs = {"We're not supposed to be hittin' those."},

	-- Detritus
	Mission_Disposal_Destroyed = {"Aw hell, now it's busted."},
	Mission_Disposal_Activated = {"What I wouldn't give to pull the trigger on that."},
	Mission_Barrels_Destroyed = {"How's that taste, Vek?"},
	Mission_Power_Destroyed = {"Can't save 'em all."},
	Mission_Teleporter_Mech = {"I'll never get used to that."},
	Mission_Belt_Mech = {"I'll never get used to that."},
}