SWEP.Base = "arccw_base"
SWEP.Spawnable = true -- this obviously has to be set to true
SWEP.Category = "ArcCW - Urban Coalition" -- edit this if you like
SWEP.UC_CategoryPack = "2Urban Renewal"
SWEP.AdminOnly = false

SWEP.PrintName = "G58"
SWEP.TrueName = "G3A3"

SWEP.Trivia_Class = "Battle Rifle"
SWEP.Trivia_Desc = [[Heckler & Koch's earliest major weapon design, conceived in collaboration with Spanish research group CETME. As a pioneer of the roller-delay system, its success within the Bundeswehr inspired HK to derive subsequent designs from its layout, including the MP5 submachine gun.

Well known for its excellent accuracy and range, but its powerful cartridge makes sustained fire difficult.]]
SWEP.Trivia_Manufacturer = "Crowdley & Nelson"
SWEP.Trivia_Calibre = "7.62x51mm NATO"
SWEP.Trivia_Mechanism = "Roller-Delayed Blowback"
SWEP.Trivia_Country = "Germany"
SWEP.Trivia_Year = 1958

if GetConVar("arccw_truenames"):GetBool() then
    SWEP.PrintName = SWEP.TrueName
    SWEP.Trivia_Manufacturer = "Heckler & Koch"
end

SWEP.Slot = 2
SWEP.CamAttachment = 3

SWEP.UseHands = true

SWEP.ViewModel = "models/weapons/arccw/c_ur_g3.mdl"
SWEP.WorldModel = "models/weapons/arccw/c_ur_g3.mdl"
SWEP.ViewModelFOV = 70

SWEP.DefaultBodygroups = "000000000000"

-- Damage --

SWEP.Damage = 65
SWEP.DamageMin = 35
SWEP.RangeMin = 50
SWEP.Range = 400
SWEP.Penetration = 20
SWEP.DamageType = DMG_BULLET
SWEP.ShootEntity = nil
SWEP.MuzzleVelocity = 715
SWEP.PhysBulletMuzzleVelocity = 715

SWEP.BodyDamageMults = ArcCW.UC.BodyDamageMults

-- Mag size --

SWEP.ChamberSize = 1
SWEP.Primary.ClipSize = 20

-- Recoil --

SWEP.Recoil = 1.0
SWEP.RecoilSide = 0.6

SWEP.RecoilRise = 0.6
SWEP.RecoilPunch = 1
SWEP.VisualRecoilMult = 1
SWEP.MaxRecoilBlowback = 1
SWEP.MaxRecoilPunch = 1
SWEP.RecoilPunchBack = 2

SWEP.Sway = 0.6

-- Firerate / Firemodes --

SWEP.Delay = 60 / 520
SWEP.Num = 1
SWEP.Firemodes = {
    {
        Mode = 2,
    },
    {
        Mode = 1,
    },
    {
        Mode = 0,
    },
}

SWEP.ShootPitch = 100
SWEP.ShootVol = 120

SWEP.ProceduralRegularFire = false
SWEP.ProceduralIronFire = false

SWEP.ReloadInSights = true

-- NPC --

SWEP.NPCWeaponType = "weapon_ar2"
SWEP.NPCWeight = 60

-- Accuracy --

SWEP.AccuracyMOA = 2
SWEP.HipDispersion = 950
SWEP.MoveDispersion = 250
SWEP.JumpDispersion = 1000

SWEP.Primary.Ammo = "ar2"
SWEP.MagID = "ak"

SWEP.HeatCapacity = 75
SWEP.HeatDissipation = 15
SWEP.HeatDelayTime = 3

-- SWEP.Malfunction = true
SWEP.MalfunctionMean = 200
--SWEP.MeleeTime = 1.5

-- Speed multipliers --

SWEP.SpeedMult = 0.9
SWEP.SightedSpeedMult = 0.75
SWEP.SightTime = 0.5
SWEP.ShootSpeedMult = 0.75

local path = ")^weapons/arccw_ur/g3/"
local path1 = ")^weapons/arccw_ur/mp5/"
local common = ")^/arccw_uc/common/"
local rottle = {common .. "cloth_1.ogg", common .. "cloth_2.ogg", common .. "cloth_3.ogg", common .. "cloth_4.ogg", common .. "cloth_6.ogg", common .. "rattle.ogg"}
local ratel = {common .. "rattle1.ogg", common .. "rattle2.ogg", common .. "rattle3.ogg"}
--SWEP.FirstShootSound = path .. "fire_first.ogg"

SWEP.ShootSound = {
    path .. "fire-01.ogg",
    path .. "fire-02.ogg",
    path .. "fire-03.ogg",
    path .. "fire-04.ogg",
    path .. "fire-05.ogg",
    path .. "fire-06.ogg"
}
SWEP.ShootSoundSilenced = {
    path .. "fire-sup-01.ogg",
    path .. "fire-sup-02.ogg",
    path .. "fire-sup-03.ogg",
    path .. "fire-sup-04.ogg",
    path .. "fire-sup-05.ogg",
    path .. "fire-sup-06.ogg"
}
SWEP.DistantShootSound = nil
SWEP.DistantShootSoundSilenced = nil
SWEP.ShootDrySound = path .. "dryfire.ogg"

SWEP.DistantShootSoundOutdoors = {
    path .. "fire-dist-01.ogg",
    path .. "fire-dist-02.ogg",
    path .. "fire-dist-03.ogg",
    path .. "fire-dist-04.ogg",
    path .. "fire-dist-05.ogg",
    path .. "fire-dist-06.ogg"
}
SWEP.DistantShootSoundIndoors = {
    common .. "fire-dist-int-rifle-01.ogg",
    common .. "fire-dist-int-rifle-02.ogg",
    common .. "fire-dist-int-rifle-03.ogg",
    common .. "fire-dist-int-rifle-04.ogg",
    common .. "fire-dist-int-rifle-05.ogg",
    common .. "fire-dist-int-rifle-06.ogg"
}
SWEP.DistantShootSoundOutdoorsSilenced = {
    common .. "sup_tail.ogg"
}
SWEP.DistantShootSoundIndoorsSilenced = {
    common .. "sup_tail.ogg"
}
SWEP.DistantShootSoundOutdoorsVolume = 1
SWEP.DistantShootSoundIndoorsVolume = 1
SWEP.Hook_AddShootSound = ArcCW.UC.InnyOuty

SWEP.MuzzleEffect = "muzzleflash_6"
SWEP.ShellEffect = "arccw_uc_shelleffect"
SWEP.ShellModel = "models/weapons/arccw/uc_shells/556x45.mdl"
SWEP.ShellScale = 1.145
SWEP.ShellPitch = 90
SWEP.ShellScale = 1
SWEP.ShellRotateAngle = Angle(0, 0, 0)
SWEP.UC_ShellColor = Color(0.7*255, 0.2*255, 0.2*255)

SWEP.MuzzleEffectAttachment = 1 -- which attachment to put the muzzle on
SWEP.CaseEffectAttachment = 2 -- which attachment to put the case effect on

SWEP.BulletBones = {
    --[1] = "tag_mag2",
}

SWEP.IronSightStruct = {
    Pos = Vector(-2.3, 1, 0.95),
    Ang = Angle(0, 0, 0),
    Magnification = 1.1,
    SwitchToSound = "", -- sound that plays when switching to this sight
    CrosshairInSights = false
}
SWEP.LaserOffsetAngle = Angle(0, 0, 0)
SWEP.LaserIronsAngle = Angle(0, 0, 0)

SWEP.HoldtypeHolstered = "passive"
SWEP.HoldtypeActive = "ar2"
SWEP.HoldtypeSights = "rpg"

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2

SWEP.ActivePos = Vector(0, -1, 1)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.SprintPos = Vector(0.5, 1, 0.5)
SWEP.SprintAng = Angle(-8.5, 15, -10)

SWEP.CrouchPos = Vector(-2, -2, -0.6)
SWEP.CrouchAng = Angle(0, 0, -14)

SWEP.HolsterPos = Vector(-1, -1, 1.2)
SWEP.HolsterAng = Angle(-15, 8, -10)

SWEP.BarrelOffsetSighted = Vector(0, 0, 0)
SWEP.BarrelOffsetHip = Vector(0, 0, 0)

SWEP.CustomizePos = Vector(6.5, 0.8, -0.2)
SWEP.CustomizeAng = Angle(8, 22, 15)

SWEP.BarrelLength = 24

SWEP.AttachmentElements = {
}

--[[
1 --- 	id: 0
     [	name: base
	num: 2
	submodels:
	0 --- base def.smd
	1 --- base hk33.smd
2 --- 	id: 1
     [	name: upper
	num: 2
	submodels:
	0 --- upper def.smd
	1 --- upper psg.smd
3 --- 	id: 2
     [	name: barrel
	num: 4
	submodels:
	0 --- barrel def.smd
	1 --- barrel k.smd
	2 --- barrel 51.smd
	3 --- barrel psg.smd
4 --- 	id: 3
     [	name: grip
	num: 3
	submodels:
	0 --- grip def.smd
	1 --- grip sef.smd
	2 --- grip psg.smd
5 --- 	id: 4
     [	name: mag
	num: 6
	submodels:
	0 --- mag def.smd
	1 --- mag psg.smd
	2 --- mag drum.smd
	3 --- mag hk33 20rnd.smd
	4 --- mag hk33 30rnd.smd
	5 --- mag hk33 40rnd.smd
6 --- 	id: 5
     [	name: stock
	num: 7
	submodels:
	0 --- stock def.smd
	1 --- stock sg.smd
	2 --- stock collapsable.smd
	3 --- stock collapsed.smd
	4 --- stock psg.smd
	5 --- stock rucar.smd
	6 --- 
7 --- 	id: 6
     [	name: hg
	num: 12
	submodels:
	0 --- hg def.smd
	1 --- hg slim.smd
	2 --- hg pica.smd
	3 --- hg k def.smd
	4 --- hg k slim.smd
	5 --- hg k pica.smd
	6 --- hg 51.smd
	7 --- hg 51 slim.smd
	8 --- hg 51 pica.smd
	9 --- hg 51 mlok.smd
	10 --- hg 51 flash.smd
	11 --- 
8 --- 	id: 7
     [	name: underbarrel
	num: 5
	submodels:
	0 --- 
	1 --- underbarrel bayonet.smd
	2 --- underbarrel bayonet k.smd
	3 --- underbarrel bipod.smd
	4 --- underbarrel bipod k.smd
9 --- 	id: 8
     [	name: hg mount
	num: 3
	submodels:
	0 --- 
	1 --- hg rail def.smd
	2 --- hg rail slim.smd
10 --- 	id: 9
     [	name: muzzle
	num: 4
	submodels:
	0 --- muzzle def.smd
	1 --- muzzle k.smd
	2 --- muzzle 51.smd
	3 --- 
11 --- 	id: 10
     [	name: optic
	num: 4
	submodels:
	0 --- 
	1 --- top rail.smd
	2 --- top scope psg.smd
	3 --- top scope sg1.smd

1 optic
2 barrel
3 barrel
4 muzzle
5 underbarrel
6 tactical
7 stock
8 mag
	9 ammotype
	10 powder
	11 training
	12 internals
	13 charm
14 ubgl
]]

local rep = {
	mag = {
		["mag_20"] = 0,
		["mag_10"] = 1,
		["mag_50"] = 2,
		["mag_20_556"] = 3,
		["mag_30_556"] = 4,
		["mag_40_556"] = 5,
	},
	barrel = {
		["barrel_18"] = 0,
		["barrel_26"] = 3,
		["barrel_12"] = 1,
		["barrel_8"] = 2,
	},
	muzzle = {
		["barrel_18"] = 0,
		["barrel_26"] = 3,
		["barrel_12"] = 1,
		["barrel_8"] = 2,
	},
	handguard = {
		["hg_slim"] = 1,
		["hg_pica"] = 2,
		["hg_51_mlok"] = 9,
		["hg_51_flash"] = 10,
	},
}

SWEP.Hook_ModifyBodygroups = function(wep, data)
	local vm = data.vm

	local x = wep.Attachments
	local ATT = {
		["optic"]		= x[1].Installed or "std",
		["barrel"]		= x[2].Installed or "barrel_18",
		["handguard"]	= x[3].Installed or "std",
		["muzzle"]		= x[4].Installed,
		["underbarrel"]	= x[14].Installed or x[5].Installed,
		["tactical"]	= x[6].Installed,
		["stock"]		= x[7].Installed or "std",
		["mag"]			= x[8].Installed or "mag_20",
	}

	for i, v in pairs(ATT) do
		local modv = v
		modv = string.Replace( modv, "ur_g3_", "")

		ATT[i] = modv
	end

	-- Magazine and base
	if string.find( ATT["mag"], "_556" ) then
		vm:SetBodygroup(0, 1)
	end
	vm:SetBodygroup(4, rep.mag[ATT.mag] or 0)

	-- Handguard
	do
		local meth = 0
		if ATT["handguard"] == "hg_slim" then
			meth = meth + 1
		elseif ATT["handguard"] == "hg_pica" then
			meth = meth + 2
		end
		if ATT["barrel"] == "barrel_26" then
		elseif ATT["barrel"] == "barrel_12" then
			meth = meth + 3
		elseif ATT["barrel"] == "barrel_8" then
			meth = meth + 6
		end
		if ATT["handguard"] == "hg_51_flash" then
			meth = 10
		elseif ATT["handguard"] == "hg_51_mlok" then
			meth = 9
		end

		vm:SetBodygroup(6, meth)
	end

	vm:SetBodygroup(2, rep.barrel[ATT.barrel] or 0)
	vm:SetBodygroup(9, rep.muzzle[ATT.barrel] or 0)


	-- HK79
	if ATT["underbarrel"] == "uc_ubgl_hk79" and ATT["barrel"] == "barrel_18" then
		vm:SetBodygroup(6, 11)
		x[14].Offset.vpos = Vector(0, -0.7, 7.3)
	else
		x[14].Offset.vpos = Vector(0, 0.1, 6.9)
	end

end

SWEP.O_Hook_UC_UseClassicHK79Mount = function(wep, data)
	-- copy and paste this
	local x = wep.Attachments
	local ATT = {
		["optic"]		= x[1].Installed or "std",
		["barrel"]		= x[2].Installed or "18in",
		["handguard"]	= x[3].Installed or "std",
		["muzzle"]		= x[4].Installed,
		["underbarrel"]	= x[14].Installed or x[5].Installed,
		["tactical"]	= x[6].Installed,
		["stock"]		= x[7].Installed or "std",
		["mag"]			= x[8].Installed or "mag_20",
	}

	if ATT["underbarrel"] == "uc_ubgl_hk79" and ATT["barrel"] == "18in" then
		data.current = true
	end
end

SWEP.ExtraSightDist = 2
SWEP.GuaranteeLaser = false

SWEP.WorldModelOffset = {
    pos = Vector(-5, 3, -5.5),
    ang = Angle(-10, 0, 180)
}

SWEP.MirrorVMWM = true

SWEP.Attachments = {
    {
        PrintName = "Optic",
        Slot = "optic",
        Bone = "body",
        Offset = {
            vpos = Vector(0, -1.2, 0.5),
            vang = Angle(90, 0, -90),
        },
        InstalledEles = {"mount_optic"},
        CorrectivePos = Vector(0, 0, -0.0),
        CorrectiveAng = Angle(0, 0.3, 0.45),
    },
    {
        PrintName = "Barrel",
        Slot = "ur_g3_barrel",
        DefaultAttName = "18\" Standard Barrel",
        DefaultAttIcon = Material("entities/att/acwatt_ud_m16_barrel_20.png", "smooth mips"),
    },
    {
        PrintName = "Handguard",
        Slot = "ur_g3_handguard",
        DefaultAttName = "Standard Handguard",
        DefaultAttIcon = Material("entities/att/acwatt_ud_m16_barrel_20.png", "smooth mips"),
        ExcludeFlags = {"hk79_pro"},
    },
    {
        PrintName = "Muzzle",
        Slot = "muzzle",
        Bone = "body",
        Offset = {
            vpos = Vector(0, 0.15, 21.7),
            vang = Angle(90, 0, -90),
        },
    },
    {
        PrintName = "Underbarrel",
        Slot = "foregrip",
        Bone = "body",
        Offset = {
            vpos = Vector(0, 1.1, 9),
            vang = Angle(90, 0, -90),
        },
        InstalledEles = {"mount_underbarrel"},
        MergeSlots = {14},
    },
    {
        PrintName = "Tactical",
        Slot = "tac",
        Bone = "body",
        Offset = {
            vpos = Vector(-0.6, -0.8, 10.5),
            vang = Angle(90, 0, -180),
        },
        InstalledEles = {"mount_tactical"},
    },
    {
        PrintName = "Stock",
        Slot = "ur_g3_stock",
        DefaultAttName = "Sniper Stock",
        DefaultAttIcon = Material("entities/att/acwatt_ud_m16_stock_default.png", "smooth mips"),
    },
    {
        PrintName = "Magazine",
        Slot = "ur_g3_mag",
        DefaultAttName = "20-Round Mag",
        DefaultAttIcon = Material("entities/att/acwatt_ud_m16_mag_30.png", "smooth mips"),
    },
    {
        PrintName = "Ammo Type",
        DefaultAttName = "\"FMJ\" Full Metal Jacket",
        DefaultAttIcon = Material("entities/att/arccw_uc_ammo_generic.png", "mips smooth"),
        Slot = "uc_ammo",
    },
    {
        PrintName = "Powder Load",
        Slot = "uc_powder",
        DefaultAttName = "Standard Load"
    },
    {
        PrintName = "Training Package",
        Slot = "uc_tp",
        DefaultAttName = "Basic Training"
    },
    {
        PrintName = "Internals",
        Slot = "uc_fg",
        DefaultAttName = "Standard Internals"
    },
    {
        PrintName = "Charm",
        Slot = {"charm", "fml_charm", "ur_ak_charm"},
        FreeSlot = true,
        Bone = "tag_weapon",
        Offset = {
            vpos = Vector(0.6, 2, 2.25),
            vang = Angle(90, -90, -90),
        },
    },
    {
        PrintName = "M203 slot",
        Slot = "uc_ubgl",
        Bone = "body",
        Offset = {
            vpos = Vector(0, 0.1, 6.9), -- this is also changed by ModifyBodygroups
            vang = Angle(90, 0, -90),
        },
        Hidden = true,
        InstalledEles = {"mount_underbarrel"},
    }
}

SWEP.Animations = {
    ["idle"] = {
        Source = "idle"
    },
    ["draw"] = {
        Source = "draw",
        LHIK = false,
        LHIKIn = 0,
        LHIKOut = 0.5,
        SoundTable = {
            {s = ratel, t = 0},
            {s = common .. "raise.ogg", t = 0.2},
            {s = common .. "shoulder.ogg",    t = 0.2},
        },
    },
    ["holster"] = {
        Source = "holster",
        LHIK = false,
        LHIKIn = 0,
        LHIKOut = 0.5,
        SoundTable = {
            {s = ratel, t = 0},
           -- {s = common .. "raise.ogg", t = 0.2},
            -- {s = common .. "shoulder.ogg",    t = 0.2},
        },
    },
    ["ready"] = {
        Source = "ready",
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 0.6,
        LHIKEaseOut = 0.25,
        SoundTable = {
            {s = ratel, t = 0},
            {s = path .. "chback.ogg",    t = 0.2},
            {s = path .. "chamber.ogg",    t = 0.3},
            {s = common .. "shoulder.ogg",    t = .6},
        },
    },
    ["fire"] = {
        Source = {"fire_01","fire_02","fire_03"},
        ShellEjectAt = 0,
        SoundTable = {{ s = {path .. "mech-01.ogg", path .. "mech-02.ogg", path .. "mech-03.ogg", path .. "mech-04.ogg", path .. "mech-05.ogg", path .. "mech-06.ogg"}, t = 0 }},
    },
   ["reload"] = {
       Source = "reload",
       TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
       LHIK = true,
       LHIKIn = 0.3,
       LHIKOut = 0.65,
       LHIKEaseOut = 0.25,
       MinProgress = 1.3,
       SoundTable = {
            {s = rottle,  t = 0.0},
            {s = ratel, t = 3/30},
            {s = path .. "magout.ogg", 	 t = 11/30},
            {s = common .. "magpouch.ogg", t = 26/30},
            {s = ratel, t = 0.5},
            {s = rottle,  t = 0.75},
            {s = path .. "struggle.ogg", t = 39/30},
            {s = path .. "magin.ogg", t = 44/30},
            {s = ratel, t = 1.1},
            {s = rottle,  t = 1.15},
            {s = common .. "grab.ogg", t = 56/30},
            {s = common .. "shoulder.ogg", t = 61/30},
       },
   },
    ["reload_empty"] = {
        Source = "reload_empty",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        LHIK = true,
        LHIKIn = 0.3,
        LHIKOut = 0.5,
        LHIKEaseOut = 0.25,
        MinProgress = 2.1,
        LastClip1OutTime = 50/30,
        SoundTable = {
            {s = rottle,  t = 0.0},
            {s = path .. "chback.ogg", t = 6/30, v = 1.95},
            {s = path .. "chlock.ogg", t = 13/30, v = 1.95},
            {s = ratel,  t = 23/30},
            {s = rottle,  t = 23/30},
            {s = path .. "magrel.ogg", t = 27/30},
            {s = path .. "magout.ogg", t = 30/30},
            {s = common .. "magpouch.ogg", t = 47/30},
            {s = rottle,  t = 49/30},
            {s = rottle,  t = 55/30},
            {s = {common .. "rifle_magdrop_1.ogg",common .. "rifle_magdrop_2.ogg",common .. "rifle_magdrop_3.ogg",common .. "rifle_magdrop_4.ogg",common .. "rifle_magdrop.ogg"}, t = 51/30, v = 0.25},
            {s = path .. "struggle.ogg", t = 57/30},
            {s = path .. "magin.ogg", t = 62/30},
            {s = rottle,  t = 75/30},
            {s = path .. "chslap.ogg", t = 80/30},
            {s = ratel,  t = 81/30},
            {s = common .. "grab.ogg", t = 92/30},
            {s = common .. "shoulder.ogg", t = 93/30},
        },
    },
    ["unjam"] = {
        Source = "jamfix",
        ShellEjectAt = 0.65,
        SoundTable = {
            {s = common .. "cloth_4.ogg",  t = 0.1},
            {s = path .. "chback.ogg",    t = 0.6},
            {s = path .. "chamber.ogg",    t = 0.7},
            {s = common .. "grab.ogg", t = 1.1},
            {s = common .. "shoulder.ogg", t = 1.15},
        }
    },
}

SWEP.Hook_Think = ArcCW.UC.ADSReload