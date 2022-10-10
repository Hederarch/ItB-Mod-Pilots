
-- Adds a personality without the use of a csv file.
-- Table of responses to various triggers.
return {
	-- Game States
	Gamestart = {"Islands, your hero has returned.","Islands, your savior has returned.","Back in one piece, for now. Let's see if my legacy lives on.","Back in one piece, for now. Let's see if I've still got it."},
	FTL_Found = {"A friend from beyond the stars. No idea what it's saying, though.","Something terrible's come from that pod. Can we put it back in?"},
	--FTL_Start = {},
	Gamestart_PostVictory = {"Islands, I come victorious against the Vek. I have saved you before and will save you again."},
	Death_Revived = {"Legends don't die."},
	Death_Main = {"At last, karma has caught me.","It was thrilling while it lasted."},
	Death_Response = {"You have not gone in vain, #main_second.","Rest well, hero. You have done us proud.","Your glory will live on, #main_second."},
	Death_Response_AI = {"You have not gone in vain, servant.","Rest well, servant. You have done us proud.","Your glory will live on, servant."},
	TimeTravel_Win = {"Bow to your conqueror, Vek."},
	Gameover_Start = {"The grid has surrendered. Must we do the same?","The grid is no more. The Vek have bested us.","This is just a setback. We can still win!"},
	Gameover_Response = {"Well fought. We'll get them next time.","A valliant crusade. The Vek won't win again.","This is a tactical retreat, not a surrender!","You've won for the last time, Vek!"},
	
	-- UI Barks
	Upgrade_PowerWeapon = {"Permission to fire, commander?","Must we wait for the Vek to get here? Let's test this now.","Ohh, I'm itching to pull the trigger on this.",},
	Upgrade_NoWeapon = {"Is this a joke to you, commander?","Are you being cruel, or just that stupid?","I don't have to put up with this.","Having fun, commander? Get back to me when you're ready to lead."},
	Upgrade_PowerGeneric = {"That's the power I deserve.","My armor grows ever stronger.","Such a delightful hum. I think it liked that.",},
	
	-- Mid-Battle
	MissionStart = {"Let's get it done, no showing off.\n...okay, a little showing off.","If the Vek knew what was good for them, they'd turn back now.","My armor hungers for justice!","Do not fear, citizens. Your hero is here.",},
	Mission_ResetTurn = {"Keep it together, #self_first.","I'm still in one piece, right?","Must breaches give me such a headache?","Feels like I've been split in half."},
	MissionEnd_Dead = {"Must we leave? I was still savoring the victory.","Feels like I'm back in my glory days.","Total victory, as expected."},
	MissionEnd_Retreat = {"Aww, I wasn't even done gloating.","We're not done yet, Vek! Get back here and die!","What sore losers. Can't even accept defeat with honor."},

	MissionFinal_Start = {"A mighty foe. We will duel once the grid catches up.","At last, my triumph is near! But where's the grid?"},
	MissionFinal_StartResponse = {"Pylon allies on the way.","Reinforcements incoming.","At last, the grid arrives."},
	--MissionFinal_FallStart = {},
	MissionFinal_FallResponse = {"Onward! To adventure!","Come, we can kill it from within!","These quakes mean nothing. The real beast lies beneath."},
	--MissionFinal_Pylons = {},
	MissionFinal_Bomb = {"This is... more than I expected.","Finally a worthy foe. Maybe a little too worthy.","At last, a challenge! But how to destroy it?"},
	--MissionFinal_BombResponse = {},
	MissionFinal_CaveStart = {"This is it, #squad! Defend the bomb!","All or nothing now. Keep that bomb steady!","This is it! Let the bomb get ready!"},
	--MissionFinal_BombDestroyed = {},
	MissionFinal_BombArmed = {"That's enough. Our victory is assured."},

	PodIncoming = {"An ally from the heavens!","A present from the heavens!"},
	PodResponse = {"About time I showed up.","Keep our new ally safe.","Keep the Vek away from our new ally."},
	PodCollected_Self = {"You're safe with me.","Pod caught. Now let's win this!"},
	PodDestroyed_Obs = {"Ooh, that's gotta hurt.","Let's hope it was just machinery.","At least the seal held on the way down.","I could've saved it."},
	Secret_DeviceSeen_Mountain = {"Look! A treasure within the mountain!"},
	Secret_DeviceSeen_Ice = {"Look! A treasure under the ice!"},
	Secret_DeviceUsed = {"Treasure secured. It's calling out to something.","Treasure secured. It's signaling the sky."},
	Secret_Arriving = {"An ally from the stars?","An ally from the stars!"},
	Emerge_Detected = {"More Vek have come to die by my hand.","More Vek come to challenge me."},
	Emerge_Success = {"Don't get comfy, Vek. You'll be in pieces when I'm done with you.","If you know what's good for you, you'll get back in that hole."},
	Emerge_FailedMech = {"I've got this Vek stomped.","Don't make me come down there."},
	Emerge_FailedVek = {"They're blocking their own reinforcements.","Cute. It's trying to save its friend from me."},

	-- Mech State
	Mech_LowHealth = {"At this rate, I'll be smeared all over the cockpit.","You can't treat a hero like this!"},
	Mech_Webbed = {"My armor is stuck in place.","I'll come out there and punch you myself if I have to.","It's grabbed my armor, I'm stuck!"},
	Mech_Shielded = {"Save it for someone weaker.","This is just a distraction."},
	Mech_Repaired = {"Back in fighting form!","My armor grows ever stronger."},
	Pilot_Level_Self = {"Feels just like my glory days."},
	Pilot_Level_Obs = {"We triumph together, #main_second."},
	Mech_ShieldDown = {"Up close and personal again.","Didn't need it anyway.","Useless tricks."},

	-- Damage Done
	Vek_Drown = {"An undignified death.","I prefer a more personal approach.","Efficient, but where's the glory in it?"},
	Vek_Fall = {"An undignified death.","I prefer a more personal approach.","Tell the rest to stay underground!"},
	Vek_Smoke = {"That's not fighting fair.","The Vek's so choked up it can't fight back!","Hit it while it's dazed!"},
	Vek_Frozen = {"We're thawing that out and finishing the job.","Freezing's not enough. Break it out and let me at it!","Only good Vek is a dead Vek.","I'll kill it once we're done here."},
	VekKilled_Self = {"Come to me!","I have become the enemy I fight.","Warped again.","How do they keep doing that to me?"},
	VekKilled_Obs = {"Well done, #main_second.","I've taught you well, #main_second.","At least you don't have to warp after it."},
	VekKilled_Vek = {"They're so scared of me, they're turning on each other!","Can't wait until I find a worthier foe.","This is the best they've got?","My skills are wasted on these bugs."},

	DoubleVekKill_Self = {"What a ride.","Oh great, where am I now?","The victories are worth the warp sickness."},
	DoubleVekKill_Obs = {"That shot's going in the history books.","Now you're just showing off.","At least you don't have to warp after it."},
	DoubleVekKill_Vek = {"I've got some competition.","They're trying to outdo me."},

	MntDestroyed_Self = {"Take that, nature!","The hills themselves kneel to me.","Nature kneels before me."},
	MntDestroyed_Obs = {"Yeah! Show that mountain who's boss!","What a show! Now do it on the Vek."},
	MntDestroyed_Vek = {"Lashing out at rocks, eh?.","No one will miss it.","One less obstacle to deal with.","The Vek are clearing a path for us."},

	PowerCritical = {"The grid's low. How dramatic!","They've got us low. Time for our glorious comeback!"},
	Bldg_Destroyed_Self = {"Make sure no one hears of this.","No one can know this happened."},
	Bldg_Destroyed_Obs = {"Are you out of your mind?!","They can't cheer for me if they're dead, idiot!","Some hero you are."},
	Bldg_Destroyed_Vek = {"That Vek's mine.","They'll pay for that.","That Vek's not leaving alive."},
	Bldg_Resisted = {"Ha! Sturdier than it looks!","Hardly even scratched!","I'm taking credit for that."},


	-- Shared Missions
	Mission_Train_TrainStopped = {"The train's smashed, but they can fix it."},
	Mission_Train_TrainDestroyed = {"Forget about the train, let's get revenge!"},
	Mission_Block_Reminder = {"Stomp these Vek back underground before we get yelled at."},

	-- Archive
	Mission_Airstrike_Incoming = {"They've called in some air support. Not that I need it."},
	Mission_Tanks_Activated = {"Aww yeah, more firepower."},
	Mission_Tanks_PartialActivated = {"Aww yeah, more firepower."},
	Mission_Dam_Reminder = {"Someone slay the dam!"},
	Mission_Dam_Destroyed = {"Behold! The wrath of nature!"},
	Mission_Satellite_Destroyed = {"There's no fixing that."},
	Mission_Satellite_Imminent = {"Get ready everyone, it's launching!"},
	Mission_Satellite_Launch = {"Pierce the heavens!"},
	Mission_Mines_Vek = {"Behold! The wrath of Old Earth!"},

	-- RST
	Mission_Terraform_Destroyed = {"How did they manage to overpower it?"},
	Mission_Terraform_Attacks = {"Such a fearsome foe. Don't get on its bad side."},
	Mission_Cataclysm_Falling = {"Let's push a few Vek back into the depths."},
	Mission_Lightning_Strike_Vek = {"Behold! The wrath of nature!"},
	Mission_Solar_Destroyed = {"The panels never stood a chance."},
	Mission_Force_Reminder = {"We must intimidate the Vek by taking down these mountains!"},

	-- Pinnacle
	Mission_Freeze_Mines_Vek = {"It's retreated into the ice. What a coward."},
	Mission_Factory_Destroyed = {"The monster is slain! Zenith won't be happy."},
	Mission_Factory_Spawning = {"Stomp it before it wakes up!"},
	Mission_Reactivation_Thawed = {"Now come here so I can destroy you."},
	Mission_SnowStorm_FrozenVek = {"It's retreated into the ice. What a coward."},
	Mission_SnowStorm_FrozenMech = {"Break me out and let me at em!"},
	BotKilled_Self = {"It never stood a chance."},
	BotKilled_Obs = {"It never stood a chance."},

	-- Detritus
	Mission_Disposal_Destroyed = {"How did they manage to overpower it?"},
	Mission_Disposal_Activated = {"Now THAT'S a real weapon."},
	Mission_Barrels_Destroyed = {"It's done, but there's no honor in it."},
	Mission_Power_Destroyed = {"Find whatever smashed that and cave its head in."},
	Mission_Teleporter_Mech = {"I'm already used to it."},
	Mission_Belt_Mech = {"Finally traveling in style."}
}