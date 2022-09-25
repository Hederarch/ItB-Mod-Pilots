
-- Adds a personality without the use of a csv file.
-- Table of responses to various triggers.
return {
	-- Game States
	Gamestart = {"This is prototype unit #self_first reporting a successful first breach.","ERR: Memory 'Timeline 1' already exists. Overwrite Timeline 1?",
	"Diagnostics show a local anomaly is compromising results. I am error?","This unit is currently under study. Please do not disturb."},
	FTL_Found = {"Invalid tachyon signature from creature inside pod. I am error?","Impossible tachyon readings from recovered creature. I am error?"},
	--FTL_Start = {},
	Gamestart_PostVictory = {"This is prototype unit #self_first reporting a successful first breach.","ERR: Memory 'Timeline 1' already exists. Overwrite Timeline 1?"},
	Death_Revived = {"Diagnostics show I am currently dead. I am error?"},
	Death_Main = {"I have... failed.","Shutting down."},
	Death_Response = {"A branch is severed, the tree survives.","There are other #main_seconds out there.","Casualty logged. Consulting ethics protocol."},
	Death_Response_AI = {"A waste of good machinery.","Mech down. Again.",""},
	TimeTravel_Win = {"Research complete in [ERR] more breaches. The study must continue."},
	Gameover_Start = {"ERR: Insufficient power.","ERR: Low battery warning.","ERR: Mech unresponsive."},
	Gameover_Response = {"Initiating emergency breach.","Breach initiated. Goodbye, doctor.","Preparing second breach."},
	
	-- UI Barks
	Upgrade_PowerWeapon = {"Fascinating technology. I must bring this back for study!","Must we use this? It might get damaged.","Have I seen this weapon before? Impossible.",},
	Upgrade_NoWeapon = {"Is this an experiment?","Did I do something wrong?","Preparing plan B.","This unit is currently under study. Please do not disturb.", "If you insist, doctor."},
	Upgrade_PowerGeneric = {"Tastes good.","These power cores have a nice flavor.","I've missed the taste of reactor power.",},
	
	-- Mid-Battle
	MissionStart = {"Deja vu logged and discarded.","Ready to serve, doctor.","Diagnostics show a successful drop.","Preparing efficiency diagnostics.",},
	Mission_ResetTurn = {"Chronometer program has run out of memory. I am error?","Invalid breach destination. Continue?","Unit #self_first has initiated emergency reboot.","Chronometer program not found. Please delete chronometer."},
	MissionEnd_Dead = {"Test passed. Engage reward protocol.","Test completed. Efficiency at 100%.","Submitting combat data for peer review."},
	MissionEnd_Retreat = {"Test failed. Engage discouragement protocol.","Insufficient results. Increasing power intake.","Is it too late for a do-over?"},

	MissionFinal_Start = {"How am I supposed to pilot without power?","The grid is a crucial control variable. We cannot proceed without it.","This island feels familiar. Too familiar.",},
	MissionFinal_StartResponse = {"Pylons entering testing site.","Being crushed by a pylon would ruin my data collection.","Diagnostics show a successful drop."},
	--MissionFinal_FallStart = {},
	MissionFinal_FallResponse = {"Abort mission! Abort!","Pull us back up, quick!","Diagnostics show a sudden drop in elevation. Are we dying?"},
	--MissionFinal_Pylons = {},
	MissionFinal_Bomb = {"ERR: Unit #self_first cannot accomplish hive destruction.","ERR: Task table overflow. Hive destruction impossible."},
	--MissionFinal_BombResponse = {},
	MissionFinal_CaveStart = {"New test: Defend the bomb!","Hypothesis: An intact bomb will save this timeline.","Predicted hive destruction at 100%."},
	--MissionFinal_BombDestroyed = {},
	MissionFinal_BombArmed = {"Diagnostics show the bomb has fully armed.","The bomb is ready. We get to leave now, right?","Diagnostics show bomb reaction is about to breach containment."},

	PodIncoming = {"Tachyon readings have spiked. What's happening?","Breach detected. Scanning for anomalies..."},
	PodResponse = {"Anomaly present. Investigate at once.","Secure the specimen for further testing.","This pod feels familiar. Too familiar."},
	PodCollected_Self = {"A pod from the future... I am error?","It's intact. So stable breaches really are possible..."},
	PodDestroyed_Obs = {"Specimen lost.","Anomaly lost.","Maybe I can pick something from the wreckage, at least."},
	Secret_DeviceSeen_Mountain = {"Tachyon emissions coming from that mountain."},
	Secret_DeviceSeen_Ice = {"Tachyon emissions coming from under that ice."},
	Secret_DeviceUsed = {"Anomaly seems activated. Results inconclusive."},
	Secret_Arriving = {"Tachyon readings are out of bounds. Immense breach logged."},
	Emerge_Detected = {"Vek are en route. Stay alert.","Vek coming to tamper with results."},
	Emerge_Success = {"Vek observed. Remove Vek from testing area.","Vek observed. Begin extermination."},
	Emerge_FailedMech = {"Seismic readings stabilizing.","Adjusting predicted emerge time."},
	Emerge_FailedVek = {"Vek cannot occupy the same space.","Vek samples colliding. No notable results."},

	-- Mech State
	Mech_LowHealth = {"Unit #self_first is compromised. Please abort testing.","Unit #self_first cannot proceed with testing.","Diagnostics critical, proceed with caution."},
	Mech_Webbed = {"Diagnostics report severe motor failure.","Is this part of the test?","My Mech's unresponsive. Weapons still online."},
	Mech_Shielded = {"Anomaly contained. I am error?","Unit #self_first contained."},
	Mech_Repaired = {"Mech harmonized."},
	Pilot_Level_Self = {"A promotion? Why?"},
	Pilot_Level_Obs = {"Well done, Dr. #main_second."},
	Mech_ShieldDown = {"Containment breached.","Containment failed.","Containment ended."},

	-- Damage Done
	Vek_Drown = {"Hypothesis: Vek will drown within 2 minutes.","Hypothesis: Vek will not resurface.","Hypothesis: Vek has insufficient adaptations for water.","Hypothesis: Vek terminated."},
	Vek_Fall = {"Hypothesis: Vek exoskeleton cannot withstand that fall.","Hypothesis: Vek will not resurface.","Hypothesis: Vek has insufficient adaptations for flight.","Hypothesis: Vek terminated."},
	Vek_Smoke = {"Hypothesis: Vek senses cannot function in smoke.","Hypothesis: Vek attack will not proceed.","Hypothesis: Vek will halt prepared attack.","Hypothesis: Airborne debris interfering with Vek senses."},
	Vek_Frozen = {"Vek preserved for future study.","Vek is contained for future study.","Vek is unresposnsive, but vital signs present.","Vek temperature dropping fast."},
	VekKilled_Self = {"Rival subject terminated.","Consulting ethics protocol.","Vek structural failure logged.","Vek removed from testing area.","Vek vital signs ceased."},
	VekKilled_Obs = {"Efficiently done, Dr. #main_second.","Nicely done, Dr. #main_second.","Satisfactory results."},
	VekKilled_Vek = {"Efficiently done... Vek?","Nicely done... Vek?","Why did they do that?","Satisfactory results... Vek?"},

	DoubleVekKill_Self = {"Consulting ethics protocol for excessive force.","Combat efficiency at 200%.","Subject pool greatly reduced."},
	DoubleVekKill_Obs = {"I will have to analyze #main_second's combat data later.","Excellently done Dr. #main_second.","Impressive results."},
	DoubleVekKill_Vek = {"Incomprehensible. I am error?","Testing area cleared.","Vek destructively interfered.","Excellently done... Vek?"},

	MntDestroyed_Self = {"Analyzing mineral contents.","This isn't a Vek. I am error?","Destructive efficiency increased.","Watch out for debris!"},
	MntDestroyed_Obs = {"Analyzing mineral contents.","That's not a Vek. Are you okay?","Recalculating local wind patterns.","Recalculating local topography.","Watch out for debris!"},
	MntDestroyed_Vek = {"Analyzing mineral contents.","Recalculating local wind patterns.","Recalculating local topography.","Did it do that on purpose?"},

	PowerCritical = {"Entering power saving mode.","Grid compromised. Entering low power mode."},
	Bldg_Destroyed_Self = {"I... I am error?","Unacceptable. Engaging discouragement protocol."},
	Bldg_Destroyed_Obs = {"You are error.","Did you mean to do that?"},
	Bldg_Destroyed_Vek = {"Casualties logged. Engaging discouragement protocol.","Consulting ethics protocol.","Unacceptable. Engaging discouragement protocol."},
	Bldg_Resisted = {"The building passed the test!","Congratulations, Dr. Building!","Analyzing structural data. Building stable."},


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