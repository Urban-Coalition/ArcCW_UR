SWEP.Base = "arccw_base"
SWEP.Spawnable = true
SWEP.Category = "ArcCW - Urban Coalition"
SWEP.AdminOnly = false
SWEP.UseHands = true

-- Effects --

SWEP.MuzzleEffect = "muzzleflash_1"
SWEP.ShellModel = "models/weapons/arccw/ud_shells/9.mdl"
SWEP.ShellScale = 1.4
--SWEP.ShellMaterial = "models/weapons/arcticcw/shell_9mm"
SWEP.ShellPitch = 100
SWEP.ShellSounds = ArcCW.PistolShellSoundsTable

SWEP.MuzzleEffectAttachment = 1
SWEP.CaseEffectAttachment = 2
-- SWEP.CamAttachment = 3 ---------------------------------------------------------------------------
SWEP.TracerNum = 1
SWEP.TracerCol = Color(25, 255, 25)
SWEP.TracerWidth = 2

-- Fake name --

SWEP.PrintName = "K7"

-- True name --

SWEP.TrueName = "MP5A3"

-- Trivia --

SWEP.Trivia_Class = "Submachine Gun"
SWEP.Trivia_Desc = [[Versatile submachine gun known for its use by high profile police units around the world, most famously by the British SAS during the Iranian embassy siege. While not the most cutting-edge weapon, it remains a classic despite multiple newer alternatives from both HK and its competitors.

If accurate, sophisticated close-combat performance is what you’re looking for, no weapon has a better track record.]]
SWEP.Trivia_Manufacturer = "Crowdley & Nelson"
SWEP.Trivia_Calibre = "9x19mm Parabellum"
SWEP.Trivia_Mechanism = "Roller-Delayed Blowback"
SWEP.Trivia_Country = "Germany"
SWEP.Trivia_Year = 1966

-- Weapon slot --

SWEP.Slot = 2

-- Weapon's manufacturer real name --

if GetConVar("arccw_truenames"):GetBool() then
    SWEP.PrintName = SWEP.TrueName
    SWEP.Trivia_Manufacturer = "Heckler & Koch"
end

-- Viewmodel / Worldmodel / FOV --

SWEP.ViewModel = "models/weapons/arccw/fesiugmw2/c_slog_mp5n.mdl"
SWEP.WorldModel = "models/weapons/arccw/c_ur_mp5.mdl"
SWEP.ViewModelFOV = 60
SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2

-- Damage --

SWEP.Damage = 30 -- 3 shot close range kill
SWEP.DamageMin = 17 -- 6 shot long range kill
SWEP.RangeMin = 15
SWEP.Range = 90
SWEP.Penetration = 3
SWEP.DamageType = DMG_BULLET
SWEP.ShootEntity = nil
SWEP.MuzzleVelocity = 300

-- Mag size --

SWEP.ChamberSize = 1
SWEP.Primary.ClipSize = 30
SWEP.ExtendedClipSize = 40
SWEP.ReducedClipSize = 15

-- Recoil --

SWEP.Recoil = 0.5
SWEP.RecoilSide = 0.25

SWEP.RecoilRise = 0.6
SWEP.RecoilPunch = 1
SWEP.VisualRecoilMult = 1
SWEP.MaxRecoilBlowback = 1
SWEP.MaxRecoilPunch = 0.6
SWEP.RecoilPunchBack = 1.5

SWEP.Sway = 0.25

-- Firerate / Firemodes --

SWEP.Delay = 60 / 815
SWEP.Num = 1
SWEP.Firemodes = {
    {
        Mode = 2,
    },
    {
        Mode = -3,
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

SWEP.NPCWeaponType = "weapon_smg"
SWEP.NPCWeight = 60

-- Accuracy --

SWEP.AccuracyMOA = 3
SWEP.HipDispersion = 500
SWEP.MoveDispersion = 120
SWEP.JumpDispersion = 1000

SWEP.Primary.Ammo = "pistol"
SWEP.MagID = "mp5"

SWEP.HeatCapacity = 75
SWEP.HeatDissipation = 15
SWEP.HeatDelayTime = 3

SWEP.MalfunctionMean = 200

-- Speed multipliers --

SWEP.SpeedMult = 0.925
SWEP.SightedSpeedMult = 0.75
SWEP.SightTime = 0.4
SWEP.ShootSpeedMult = 0.95

-- Length --

SWEP.BarrelLength = 24
SWEP.ExtraSightDist = 7

-- Ironsights / Customization / Poses --

SWEP.HolsterPos = Vector(0.5, -2, 1)
SWEP.HolsterAng = Angle(-8.5, 8, -10)

SWEP.HoldtypeHolstered = "normal"
SWEP.HoldtypeActive = "ar2"
SWEP.HoldtypeSights = "smg"

SWEP.IronSightStruct = {
     Pos = Vector(-2.91, -3.79, 0.95),
     Ang = Angle(-0.278, 0.008, 0),
     Magnification = 1,
     SwitchToSound = "",
     ViewModelFOV = 55,
}

SWEP.ActivePos = Vector(0, 0, 1)
SWEP.ActiveAng = Angle(0, 0, -3)

SWEP.CustomizePos = Vector(5, -2, -2)
SWEP.CustomizeAng = Angle(15, 25, 0)

SWEP.CrouchPos = Vector(-3, -3, 0)
SWEP.CrouchAng = Angle(0, 0, -30)

SWEP.BarrelOffsetHip = Vector(4, 0, -4)

SWEP.MirrorVMWM = true
SWEP.WorldModelOffset = {
    pos        =    Vector(-16, 3.5, -6),
    ang        =    Angle(-6, 0, 180),
    bone    =    "ValveBiped.Bip01_R_Hand",
}

-- Firing sounds --
local path = ")^weapons/arccw_ur/mp5/"
local path1 = ")^weapons/arccw_ud/glock/"
local common = ")^/arccw_uc/common/"
SWEP.FirstShootSound = path .. "fire_first.ogg"
SWEP.ShootSound = { path .. "fire_auto_1.ogg", path .. "fire_auto_2.ogg", path .. "fire_auto_3.ogg" }
SWEP.ShootSoundSilenced = path1 .. "fire_supp.ogg"
SWEP.DistantShootSound = path .. "fire_dist.ogg"

-- Bodygroups --

SWEP.BulletBones = {
    [1] = "uzi_b1", [2] = "uzi_b2", [3] = "uzi_b3", [4] = "uzi_b4"
}

SWEP.AttachmentElements = {

    ["ur_mp5_mag_20"] = {
        VMBodygroups = {{ind = 2, bg = 1}},
    },
    ["ur_mp5_mag_40"] = {
        VMBodygroups = {{ind = 2, bg = 2}},
    },
    ["ur_mp5_mag_100"] = {
        VMBodygroups = {{ind = 2, bg = 3}},
    },

    ["ur_mp5_rail_optic"] = {
        VMBodygroups = {{ind = 4, bg = 2}},
    },

    ["ur_mp5_clamp"] = {
        VMBodygroups = {{ind = 6, bg = 1}},
    },

    ["ur_mp5_rail_fg"] = {
        VMBodygroups = {{ind = 5, bg = 1}},
    },

    ["ur_mp5_stock_wood"] = {
        VMBodygroups = {{ind = 3, bg = 2}},
    },
    ["ur_mp5_stock_polymer"] = {
        VMBodygroups = {{ind = 3, bg = 3}},
    },
    ["ur_mp5_stock_folded"] = {
        VMBodygroups = {{ind = 3, bg = 1}},
    },
    ["ur_mp5_stock_remove"] = {
        VMBodygroups = {{ind = 3, bg = 4}},
    },

    ["ur_mp5_body_carbine"] = {
        VMBodygroups = {{ind = 1, bg = 1}},
        NameChange = "CarP-9",
        TrueNameChange = "Uzi Carbine",
        AttPosMods = {
            [3] = {
                vpos = Vector(-0.2, 0.5, 20.8),
            },
        },
    },
    ["ur_mp5_body_mini"] = {
        VMBodygroups = {{ind = 1, bg = 2}},
        NameChange = "MeP-9",
        TrueNameChange = "Mini Uzi",
        AttPosMods = {
            [3] = {
                vpos = Vector(-0.2, 0.5, 12.8),
            },
        },
    },
    ["ur_mp5_body_micro"] = {
        VMBodygroups = {{ind = 1, bg = 3},{ind = 4, bg = 1},{ind = 3, bg = 4}},
        NameChange = "MiP-9G",
        TrueNameChange = "Micro Uzi",
        Override_IronSightStruct = {
            Pos = Vector(-2.869, 0, 2.3),
            Ang = Angle(-0.95, 0.035, 0),
            Magnification = 1,
            CrosshairInSights = false
        },
        AttPosMods = {
            [1] = {
                vpos = Vector(-0.2, -1.2, -2.5),
            },
            [3] = {
                vpos = Vector(-0.2, 0.3, 7.8),
            },
            [5] = {
                vpos = Vector(0, 0, 7),
                vang = Angle(90, 0, 0),
            },
        },
    },
    ["ur_mp5_body_civvy"] = {
        VMBodygroups = {{ind = 1, bg = 4}},
        NameChange = "CarP-9 Model GB",
        TrueNameChange = "Uzi Action-B",
        AttPosMods = {
            [3] = {
                vpos = Vector(-0.2, 0.5, 23.8),
            },
        },
    },
}

SWEP.Hook_ModifyBodygroups = function(wep, data)
    local vm = data.vm
    if !IsValid(vm) then return end
    local barrel = wep.Attachments[2].Installed
    if barrel == "ur_mp5_body_micro" then
        if wep.Attachments[1].Installed then
            vm:SetBodygroup(4, 3)
        end
        if wep.Attachments[5].Installed then
            vm:SetBodygroup(6, 3)
        end
    end
end

-- Animations --

SWEP.Hook_Think = ArcCW.UD.ADSReload

SWEP.Animations = {
    ["idle"] = {
        Source = "idle",
    },
    ["idle_empty"] = {
        Source = "idle_empty",
    },
    ["draw"] = {
        Source = "draw",
        SoundTable = ArcCW.UD.DrawSounds,
    },
    ["draw_empty"] = {
        Source = "draw_empty",
        SoundTable = ArcCW.UD.DrawSounds,
    },
    ["holster"] = {
        Source = "holster",
        Time = 0.25,
        SoundTable = ArcCW.UD.HolsterSounds,
    },
    ["holster_empty"] = {
        Source = "holster_empty",
        Time = 0.25,
        SoundTable = ArcCW.UD.HolsterSounds,
    },
    ["fire"] = {
        Source = "fire",
        Time = 13 / 30,
        ShellEjectAt = 0.03,
    },
    ["fire_empty"] = {
        Source = "fire_empty",
        Time = 13 / 30,
        ShellEjectAt = 0.03,
    },

    ["fix"] = {
        Source = "fix",
        Time = 40 / 30,
        ShellEjectAt = false,
        LHIK = true,
        LHIKIn = 0.4,
        LHIKEaseIn = 0.4,
        LHIKEaseOut = 0.15,
        LHIKOut = 0.4,
        SoundTable = {
            {s = {common .. "cloth_2.ogg", common .. "cloth_3.ogg", common .. "cloth_4.ogg", common .. "cloth_6.ogg", common .. "rattle.ogg"}, t = 0.15},
            {s = path .. "chback.ogg",         t = 0.3, c = ci},
            {s = path .. "chforward.ogg",         t = 0.65, c = ci},
        },
    },
    ["fix_empty"] = {
        Source = "fix_empty",
        Time = 40 / 30,
        ShellEjectAt = false,
        LHIK = true,
        LHIKIn = 0.4,
        LHIKEaseIn = 0.4,
        LHIKEaseOut = 0.15,
        LHIKOut = 0.4,
        SoundTable = {
            {s = {common .. "cloth_2.ogg", common .. "cloth_3.ogg", common .. "cloth_4.ogg", common .. "cloth_6.ogg", common .. "rattle.ogg"}, t = 0.15},
            {s = path .. "chback.ogg",         t = 0.3, c = ci},
            {s = path .. "chforward.ogg",         t = 0.65, c = ci},
        },
    },

    -- 30 Round Reloads --

    ["reload"] = {
        Source = "reload",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_SMG1,
        Time = 2,
        MinProgress = 1.2,
        LastClip1OutTime = 2,
        LHIK = true,
        LHIKIn = 0.4,
        LHIKEaseIn = 0.4,
        LHIKEaseOut = 0.15,
        LHIKOut = 0.6,
        SoundTable = {
            {s = {common .. "cloth_2.ogg", common .. "cloth_3.ogg", common .. "cloth_4.ogg", common .. "cloth_6.ogg", common .. "rattle.ogg"}, t = 0},
            {s = path .. "magout.ogg",        t = 0.25, c = ci},
            {s = {common .. "cloth_2.ogg", common .. "cloth_3.ogg", common .. "cloth_4.ogg", common .. "cloth_6.ogg", common .. "rattle.ogg"}, t = 0.25},
            {s = path .. "magin.ogg",         t = 0.55, c = ci},
            {s = common .. "shoulder.ogg",  t = 1.75},
        },
    },
    ["reload_empty"] = {
        Source = "reload_empty",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_SMG1,
        Time = 90 / 30,
        MinProgress = 2.2,
        LastClip1OutTime = 1.8,
        LHIK = true,
        LHIKIn = 0.3,
        LHIKEaseIn = 0.3,
        LHIKEaseOut = 0.2,
        LHIKOut = 0.55,
        SoundTable = {
            {s = {common .. "cloth_2.ogg", common .. "cloth_3.ogg", common .. "cloth_4.ogg", common .. "cloth_6.ogg", common .. "rattle.ogg"}, t = 0},
            {s = path .. "magout.ogg",        t = 0.4, c = ci},
            {s = {common .. "cloth_2.ogg", common .. "cloth_3.ogg", common .. "cloth_4.ogg", common .. "cloth_6.ogg", common .. "rattle.ogg"}, t = 0.25},
            {s = common .. "magdrop_smg.ogg",  t = 1.0},
            {s = path .. "magin.ogg",         t = 1.1, c = ci},
            {s = {common .. "cloth_2.ogg", common .. "cloth_3.ogg", common .. "cloth_4.ogg", common .. "cloth_6.ogg", common .. "rattle.ogg"}, t = 1.25},
            {s = path .. "chback.ogg",         t = 1.947, c = ci},
            {s = path .. "chforward.ogg",         t = 2.15, c = ci},
            {s = common .. "shoulder.ogg",  t = 2.6},
        },
    },


    ["reload"] = {
        Source = "reload",
        Time = 67 / 30,
        MinProgress = 1.2,
        LastClip1OutTime = 67 / 30,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_SMG1,
        SoundTable = {
            {s = "arccw_uc/common/cloth_1.ogg", 	t = 0/30},
            {s = "weapons/arccw_ur/mp5/magout.ogg", 	t = 13/30},
            {s = "arccw_uc/common/cloth_4.ogg", 	t = 20/30},	
            {s = "weapons/arccw_ur/mp5/magin.ogg", 	t = 36/30},
            {s = "arccw_uc/common/cloth_3.ogg", 	t = 40/30},	
            {s = "arccw_uc/common/shoulder.ogg", 	t = 70/30},	
        },
        LHIK = true,
        LHIKIn = 0.3,
        LHIKOut = 0.5,
    },
    ["reload_empty"] = {
        Source = "reload_empty",
        Time = 90 / 30,
        MinProgress = 2.2,
        LastClip1OutTime = 1.8,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_SMG1,
        SoundTable = {
            {s = "arccw_uc/common/cloth_1.ogg", 	t = 0/30},		
            {s = "weapons/arccw_ur/mp5/chback.ogg", 	t = 6/30},
            {s = "weapons/arccw_ur/mp5/chlock.ogg", 	t = 11/30},	
            {s = "weapons/arccw_ur/mp5/magout.ogg", 	t = 26/30},
            {s = "arccw_uc/common/cloth_2.ogg", 	t = 30/30},		
            {s = "weapons/arccw_ur/mp5/magin.ogg", 	t = 52/30},
            {s = "arccw_uc/common/cloth_4.ogg", 	t = 55/30},
            {s = "arccw_uc/common/cloth_3.ogg", 	t = 75/30},
            {s = "weapons/arccw_ur/mp5/chamber.ogg", 	t = 80/30},	
            {s = "arccw_uc/common/shoulder.ogg", 	t = 95/30},						
		},
    },

    -- 15 Round Reloads --

    ["reload_15"] = {
        Source = "reload",--"reload_15",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_SMG1,
        Time = 67 / 30,
        MinProgress = 1.2,
        LastClip1OutTime = 67 / 30,
        LHIK = true,
        LHIKIn = 0.4,
        LHIKEaseIn = 0.4,
        LHIKEaseOut = 0.15,
        LHIKOut = 0.6,
        SoundTable = {
            {s = {common .. "cloth_2.ogg", common .. "cloth_3.ogg", common .. "cloth_4.ogg", common .. "cloth_6.ogg", common .. "rattle.ogg"}, t = 0},
            {s = path .. "magout.ogg",        t = 0.25, c = ci},
            {s = {common .. "cloth_2.ogg", common .. "cloth_3.ogg", common .. "cloth_4.ogg", common .. "cloth_6.ogg", common .. "rattle.ogg"}, t = 0.25},
            {s = path .. "magin.ogg",         t = 0.55, c = ci},
            {s = common .. "shoulder.ogg",  t = 1.75},
        },
    },
    ["reload_empty_15"] = {
        Source = "reload_empty",--"reload_empty_15",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_SMG1,
        Time = 90 / 30,
        MinProgress = 2.2,
        LastClip1OutTime = 1.8,
        LHIK = true,
        LHIKIn = 0.3,
        LHIKEaseIn = 0.3,
        LHIKEaseOut = 0.2,
        LHIKOut = 0.55,
        SoundTable = {
            {s = {common .. "cloth_2.ogg", common .. "cloth_3.ogg", common .. "cloth_4.ogg", common .. "cloth_6.ogg", common .. "rattle.ogg"}, t = 0},
            {s = path .. "magout.ogg",        t = 0.4, c = ci},
            {s = {common .. "cloth_2.ogg", common .. "cloth_3.ogg", common .. "cloth_4.ogg", common .. "cloth_6.ogg", common .. "rattle.ogg"}, t = 0.25},
            {s = common .. "magdrop_smg.ogg",  t = 1.0},
            {s = path .. "magin.ogg",         t = 1.0, c = ci},
            {s = {common .. "cloth_2.ogg", common .. "cloth_3.ogg", common .. "cloth_4.ogg", common .. "cloth_6.ogg", common .. "rattle.ogg"}, t = 1.25},
            {s = path .. "chback.ogg",         t = 1.947, c = ci},
            {s = path .. "chforward.ogg",         t = 2.15, c = ci},
            {s = common .. "shoulder.ogg",  t = 2.45},
        },
    },

    -- 40 Round Reloads --

    ["reload_40"] = {
        Source = "reload",--"reload_40",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_SMG1,
        Time = 67 / 30,
        MinProgress = 1.2,
        LastClip1OutTime = 67 / 30,
        LHIK = true,
        LHIKIn = 0.4,
        LHIKEaseIn = 0.4,
        LHIKEaseOut = 0.15,
        LHIKOut = 0.6,
        SoundTable = {
            {s = {common .. "cloth_2.ogg", common .. "cloth_3.ogg", common .. "cloth_4.ogg", common .. "cloth_6.ogg", common .. "rattle.ogg"}, t = 0.1},
            {s = path .. "magout.ogg",        t = 0.35, c = ci},
            {s = {common .. "cloth_2.ogg", common .. "cloth_3.ogg", common .. "cloth_4.ogg", common .. "cloth_6.ogg", common .. "rattle.ogg"}, t = 0.25},
            {s = path .. "magin.ogg",         t = 0.65, c = ci},
            {s = common .. "shoulder.ogg",  t = 1.75},
        },
    },
    ["reload_empty_40"] = {
        Source = "reload_empty",--"reload_empty_40",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_SMG1,
        Time = 90 / 30,
        MinProgress = 2.2,
        LastClip1OutTime = 1.8,
        LHIK = true,
        LHIKIn = 0.3,
        LHIKEaseIn = 0.3,
        LHIKEaseOut = 0.2,
        LHIKOut = 0.55,
        SoundTable = {
            {s = {common .. "cloth_2.ogg", common .. "cloth_3.ogg", common .. "cloth_4.ogg", common .. "cloth_6.ogg", common .. "rattle.ogg"}, t = 0},
            {s = path .. "magout.ogg",        t = 0.4, c = ci},
            {s = {common .. "cloth_2.ogg", common .. "cloth_3.ogg", common .. "cloth_4.ogg", common .. "cloth_6.ogg", common .. "rattle.ogg"}, t = 0.25},
            {s = common .. "magdrop_smg.ogg",  t = 1.0},
            {s = path .. "magin.ogg",         t = 1.1, c = ci},
            {s = {common .. "cloth_2.ogg", common .. "cloth_3.ogg", common .. "cloth_4.ogg", common .. "cloth_6.ogg", common .. "rattle.ogg"}, t = 1.25},
            {s = path .. "chback.ogg",         t = 1.95, c = ci},
            {s = path .. "chforward.ogg",         t = 2.2, c = ci},
            {s = common .. "shoulder.ogg",  t = 2.6},
        },
    },

    -- 100 Round Reloads --

    ["reload_50"] = {
        Source = "reload",--"reload_50",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_SMG1,
        Time = 67 / 30,
        MinProgress = 1.6,
        LastClip1OutTime = 1,
        LHIK = true,
        LHIKIn = 0.4,
        LHIKEaseIn = 0.4,
        LHIKEaseOut = 0.15,
        LHIKOut = 0.4,
        SoundTable = {
            {s = {common .. "cloth_2.ogg", common .. "cloth_3.ogg", common .. "cloth_4.ogg", common .. "cloth_6.ogg", common .. "rattle.ogg"}, t = 0},
            {s = path .. "magout.ogg",        t = 0.25, c = ci},
            {s = {common .. "cloth_2.ogg", common .. "cloth_3.ogg", common .. "cloth_4.ogg", common .. "cloth_6.ogg", common .. "rattle.ogg"}, t = 0.25},
            {s = {common .. "cloth_2.ogg", common .. "cloth_3.ogg", common .. "cloth_4.ogg", common .. "cloth_6.ogg", common .. "rattle.ogg"}, t = 0.75},
            {s = path .. "magin.ogg",         t = 1.15, c = ci},
            {s = common .. "cloth_4.ogg",  t = 1.65},
            {s = common .. "shoulder.ogg",  t = 1.95},
        },
    },
    ["reload_empty_50"] = {
        Source = "reload_empty",--"reload_empty_50",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_SMG1,
        Time = 90 / 30,
        MinProgress = 2.4,
        LastClip1OutTime = 1.8,
        LHIK = true,
        LHIKIn = 0.3,
        LHIKEaseIn = 0.3,
        LHIKEaseOut = 0.2,
        LHIKOut = 0.55,
        SoundTable = {
            {s = {common .. "cloth_2.ogg", common .. "cloth_3.ogg", common .. "cloth_4.ogg", common .. "cloth_6.ogg", common .. "rattle.ogg"}, t = 0},
            {s = path .. "magout.ogg",        t = 0.25, c = ci},
            {s = {common .. "cloth_2.ogg", common .. "cloth_3.ogg", common .. "cloth_4.ogg", common .. "cloth_6.ogg", common .. "rattle.ogg"}, t = 0.25},
            {s = {common .. "cloth_2.ogg", common .. "cloth_3.ogg", common .. "cloth_4.ogg", common .. "cloth_6.ogg", common .. "rattle.ogg"}, t = 0.75},
            {s = common .. "magdrop.ogg",  t = 1.0},
            {s = path .. "magin.ogg",         t = 1.15, c = ci},
            {s = common .. "cloth_4.ogg",  t = 1.65},
            {s = path .. "chback.ogg",         t = 2.25, c = ci},
            {s = path .. "chforward.ogg",         t = 2.1, c = ci},
            {s = common .. "shoulder.ogg",  t = 2.7},
        },
    },
}

SWEP.AutosolveSourceSeq = "idle"

SWEP.Attachments = {
    {
        PrintName = "Optic",
        DefaultAttName = "Iron Sights",
        Slot = {"optic_lp"}, -- ,"optic"
        Bone = "uzi_parent",
        Offset = {
            vpos = Vector(-0.2, -1.0, -2.5),
            vang = Angle(90, 0, -90),
        },
        VMScale = Vector(1, 1, 1),
        InstalledEles = {"ur_mp5_rail_optic"}
    },
    {
        PrintName = "Barrel",
        DefaultAttName = "10\" Standard Barrel",
        DefaultAttIcon = Material("entities/att/acwatt_ur_mp5_body.png", "smooth mips"),
        Slot = "ur_mp5_frame",
        Bone = "uzi_parent",
        Offset = {
            vpos = Vector(2.6, -3.7, -17.3),
            vang = Angle(90, 0, -90),
        },
    },
    {
        PrintName = "Caliber",
        DefaultAttName = "9x19mm Parabellum",
        DefaultAttIcon = Material("entities/att/acwatt_ur_mp5_caliber.png", "smooth mips"),
        Slot = "ur_mp5_caliber",
    },
    {
        PrintName = "Muzzle",
        DefaultAttName = "Standard Muzzle",
        Slot = {"muzzle"},
        Bone = "uzi_parent",
        Offset = {
            vpos = Vector(-0.2, 0.5, 14.8),
            vang = Angle(90, 0, -90),
        },
    },
    {
        PrintName = "Underbarrel",
        Slot = {"foregrip"},
        Bone = "uzi_parent",
        Offset = {
            vpos = Vector(-0.2, 2.4, 8),
            vang = Angle(90, 0, -90),
        },
        InstalledEles = {"ur_mp5_rail_fg"}
    },
    {
        PrintName = "Tactical",
        Slot = {"tac_pistol"},
        Bone = "uzi_parent",
        Offset = {
            vpos = Vector(0.3, 0.9, 12.5),
            vang = Angle(90, 0, -45),
        },
        InstalledEles = {"ur_mp5_clamp"}
    },
    {
        PrintName = "Stock",
        Slot = {"ur_mp5_stock"},
        DefaultAttName = "Folding Stock",
        DefaultAttIcon = Material("entities/att/acwatt_ur_mp5_stock.png", "smooth mips"),
        ExcludeFlags = {"micro"},
    },
    {
        PrintName = "Magazine",
        Slot = {"ur_mp5_mag"},
        DefaultAttName = "30-Round Mag",
        DefaultAttIcon = Material("entities/att/acwatt_ur_mp5_mag_32.png", "smooth mips"),
    },
    {
        PrintName = "Ammo Type",
        DefaultAttName = "\"FMJ\" Full Metal Jacket",
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
        Slot = "uc_fg", -- Fire group
        DefaultAttName = "Standard Internals"
    },
    {
        PrintName = "Charm",
        Slot = {"charm", "fml_charm"},
        FreeSlot = true,
        Bone = "Body",
        Offset = {
            vpos = Vector(0.6, -4, 4),
            vang = Angle(90, 0, -90),
        },
    },
}