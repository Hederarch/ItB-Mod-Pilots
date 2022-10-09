local path = mod_loader.mods[modApi.currentMod].resourcePath
BaseUnit = ANIMS.Animation:new { Image = "units/player/mech_punch_1.png", PosX = -19, PosY = -4, Loop = true, Time = 0.3 }
EnemyUnit = BaseUnit:new { Height = 1 }

BaseEmerge = ANIMS.Animation:new { 
				Image = "units/aliens/firefly_1_emerge.png", 
				NumFrames = 10, 
				PosX = -24, 
				PosY = 0, 
				Loop = false, 
				Time = 0.10, 
				Sound = "/enemy/shared/crawl_out",
				Height = 1}

modApi:appendAsset("img/portraits/enemy/djinn_tenta.png", path .."img/pawns/djinn_tenta_portrait.png")
modApi:appendAsset("img/units/aliens/djinn_tenta.png", path .."img/pawns/djinn_tenta.png")
modApi:appendAsset("img/units/aliens/djinn_tentaa.png", path .."img/pawns/djinn_tenta_idle.png")
modApi:appendAsset("img/units/aliens/djinn_tentae.png", path .."img/pawns/djinn_tenta_emerge.png")
modApi:appendAsset("img/units/aliens/djinn_tentad.png", path .."img/pawns/djinn_tenta_rip.png")

ANIMS.djinn_tenta = EnemyUnit:new{ Image = "units/aliens/djinn_tenta.png", PosX = -24, PosY = -10 }
ANIMS.djinn_tentaa = EnemyUnit:new{ Image = "units/aliens/djinn_tentaa.png", PosX = -24, PosY = -10, NumFrames = 6 }
ANIMS.djinn_tentae = BaseEmerge:new{ Image = "units/aliens/djinn_tentae.png", PosX = -24, PosY = -10, NumFrames = 8 }
ANIMS.djinn_tentad = EnemyUnit:new{ Image = "units/aliens/djinn_tentad.png", PosX = -28, PosY = -10, NumFrames = 8, Time = 0.14, Loop = false  }