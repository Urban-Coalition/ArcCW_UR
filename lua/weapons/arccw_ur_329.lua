SWEP.Base = "arccw_base"
SWEP.Spawnable = true
SWEP.Category = "ArcCW - Urban Coalition"
SWEP.UC_CategoryPack = "2Urban Renewal"
SWEP.AdminOnly = false
SWEP.UseHands = true

-- Muzzle and shell effects --

SWEP.MuzzleEffect = "muzzleflash_pistol_deagle"
SWEP.ShellEffect = "arccw_uc_shelleffect"
SWEP.ShellModel = "models/weapons/arccw/uc_shells/50ae.mdl"
SWEP.ShellScale = 1

SWEP.MuzzleEffectAttachment = 1
SWEP.CaseEffectAttachment = 2
SWEP.TracerNum = 1
SWEP.TracerWidth = 1
SWEP.ShootPitch = 100

-- Fake name --

SWEP.PrintName = "Enforcement .44"

-- True name --

SWEP.TrueName = "Model 329PD"

-- Trivia --

SWEP.Trivia_Class = "Revolver"
SWEP.Trivia_Desc = [[Though commonly viewed as archaic, revolvers maintain a large following today for their reliability, accuracy, and evocative sentiment. This model was famously the "most powerful handgun in the world" at its time, though its usurpers have not changed the fact that it packs a mean punch.

Has a heavy trigger pull. Single-action mode removes trigger delay and increases accuracy, but requires manual cocking of the hammer.]]
SWEP.Trivia_Manufacturer = "Sneed & Walwakashi"
SWEP.Trivia_Calibre = ".44 Magnum"
SWEP.Trivia_Mechanism = "Double-Action"
SWEP.Trivia_Country = "USA"
SWEP.Trivia_Year = 1955

-- Weapon slot --

SWEP.Slot = 1

-- Weapon's manufacturer real name --

if GetConVar("arccw_truenames"):GetBool() then
    SWEP.PrintName = SWEP.TrueName
    SWEP.Trivia_Manufacturer = "Smith & Wesson"
end

-- Viewmodel / Worldmodel / FOV --

SWEP.ViewModel = "models/weapons/arccw/c_ur_329pd.mdl"
SWEP.WorldModel = "models/weapons/arccw/c_ud_deagle.mdl"
SWEP.ViewModelFOV = 70
SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_REVOLVER

-- Damage parameters --

SWEP.Damage = 60 -- 2 shot close range kill
SWEP.DamageMin = 15 -- 7 shot long range kill
SWEP.RangeMin = 10
SWEP.Range = 160
SWEP.Penetration = 10
SWEP.DamageType = DMG_BULLET
SWEP.ShootEntity = nil
SWEP.MuzzleVelocity = 470
SWEP.PhysBulletMuzzleVelocity = 470

SWEP.BodyDamageMults = ArcCW.UC.BodyDamageMults

-- Jamming --

--SWEP.Malfunction = true
SWEP.MalfunctionJam = true
--SWEP.MalfunctionMean = 21
SWEP.MalfunctionPostFire = true
SWEP.MalfunctionTakeRound = false

-- Mag size --

SWEP.ChamberSize = 0
SWEP.Primary.ClipSize = 6

-- Recoil --

SWEP.Recoil = 3
SWEP.RecoilSide = 1

SWEP.RecoilRise = 0.5
SWEP.VisualRecoilMult = 1.5
SWEP.MaxRecoilBlowback = 2
SWEP.MaxRecoilPunch = 6

SWEP.Sway = 1.1

-- Firerate / Firemodes --

SWEP.TriggerDelay = true

SWEP.Delay = 60 / 160
SWEP.Num = 1
SWEP.Firemodes = {
    {
        Mode = 1,
        PrintName = "ur.329.dact",
    },
--    {
--        Mode = 1,
--        PrintName = "ur.329.sact",
--        Override_ManualAction = true,
--        Mult_AccuracyMOA = .75,
--        Override_TriggerDelay = false,
--    },
    {
        Mode = 0,
        PrintName = "fcg.safe2",
    }
}

SWEP.ShootPitch = 100
SWEP.ShootVol = 120

SWEP.ProceduralRegularFire = false
SWEP.ProceduralIronFire = false

SWEP.ReloadInSights = false -- can't in mw and can't here

-- NPC --

SWEP.NPCWeaponType = "weapon_357"
SWEP.NPCWeight = 70

-- Accuracy --

SWEP.AccuracyMOA = 2
SWEP.HipDispersion = 500
SWEP.MoveDispersion = 300
SWEP.JumpDispersion = 1000

SWEP.Primary.Ammo = "357"
SWEP.MagID = "deagle"

-- Speed multipliers --

SWEP.SpeedMult = 0.925
SWEP.SightedSpeedMult = 0.75
SWEP.SightTime = 0.5
SWEP.ShootSpeedMult = 0.8

-- Length --

SWEP.BarrelLength = 12
SWEP.ExtraSightDist = 7

-- Ironsights / Customization / Poses --

SWEP.HolsterPos = Vector(0.3, 1, 0)
SWEP.HolsterAng = Angle(-3, 9, -12)

SWEP.HoldtypeHolstered = "normal"
SWEP.HoldtypeActive = "revolver"
SWEP.HoldtypeSights = "revolver"

SWEP.IronSightStruct = {
     Pos = Vector(-2.7, 2, 0.733),
     Ang = Angle(0, 0, 0),
     Magnification = 1,
     SwitchToSound = "",
     ViewModelFOV = 55,
}

SWEP.ActivePos = Vector(0, 2, 0.9)
SWEP.ActiveAng = Angle(0, 0, -1)

SWEP.CustomizePos = Vector(1, -2, -1)
SWEP.CustomizeAng = Angle(15, 15, 0)

SWEP.CrouchPos = Vector(-2.2, 1, 0.6)
SWEP.CrouchAng = Angle(0, 0, -14)

SWEP.MirrorVMWM = true
SWEP.WorldModelOffset = {
    pos        =    Vector(-10.5, 2.5, -5),
    ang        =    Angle(-6, -6, 180),
    bone    =    "ValveBiped.Bip01_R_Hand",
}

-- Weapon sounds --

local path = ")^weapons/arccw_ur/sw329/"
local path1 = ")^weapons/arccw_ur/sw586/"
local common = ")^/arccw_uc/common/"
local rottle = {common .. "cloth_2.ogg", common .. "cloth_3.ogg", common .. "cloth_4.ogg", common .. "cloth_6.ogg", common .. "rattle.ogg"}

SWEP.ShootSound = {
    path .. "fire-01.ogg",
    path .. "fire-02.ogg",
    path .. "fire-03.ogg",
    path .. "fire-04.ogg",
    path .. "fire-05.ogg",
    path .. "fire-06.ogg"
}
SWEP.ShootSoundSilenced = {
    path .. "fire-01.ogg",
    path .. "fire-02.ogg",
    path .. "fire-03.ogg",
    path .. "fire-04.ogg",
    path .. "fire-05.ogg",
    path .. "fire-06.ogg"
}

SWEP.DistantShootSound = nil
SWEP.DistantShootSoundSilenced = nil
SWEP.ShootDrySound = {common .. "revolver_hammer-01.ogg", common .. "revolver_hammer-02.ogg", common .. "revolver_hammer-03.ogg"}

SWEP.DistantShootSoundOutdoors = {
    path .. "fire-dist-01.ogg",
    path .. "fire-dist-02.ogg",
    path .. "fire-dist-03.ogg",
    path .. "fire-dist-04.ogg",
    path .. "fire-dist-05.ogg",
    path .. "fire-dist-06.ogg"
}
SWEP.DistantShootSoundIndoors = {
    common .. "fire-dist-int-shotgun-01.ogg",
    common .. "fire-dist-int-shotgun-02.ogg",
    common .. "fire-dist-int-shotgun-03.ogg",
    common .. "fire-dist-int-shotgun-04.ogg",
    common .. "fire-dist-int-shotgun-05.ogg",
    common .. "fire-dist-int-shotgun-06.ogg"
}
SWEP.DistantShootSoundOutdoorsSilenced = {
    path .. "fire-dist-01.ogg",
    path .. "fire-dist-02.ogg",
    path .. "fire-dist-03.ogg",
    path .. "fire-dist-04.ogg",
    path .. "fire-dist-05.ogg",
    path .. "fire-dist-06.ogg"
}
SWEP.DistantShootSoundIndoorsSilenced = {
    common .. "fire-dist-int-shotgun-01.ogg",
    common .. "fire-dist-int-shotgun-02.ogg",
    common .. "fire-dist-int-shotgun-03.ogg",
    common .. "fire-dist-int-shotgun-04.ogg",
    common .. "fire-dist-int-shotgun-05.ogg",
    common .. "fire-dist-int-shotgun-06.ogg"
}
SWEP.DistantShootSoundOutdoorsVolume = 1
SWEP.DistantShootSoundIndoorsVolume = 0.75
SWEP.Hook_AddShootSound = ArcCW.UC.InnyOuty

-- Bodygroups --

SWEP.BulletBones = {
    [1] = "Bullet1",    [2] = "Bullet2",    [3] = "Bullet3", [4] = "Bullet4",    [5] = "Bullet5",    [6] = "Bullet6"
}

SWEP.DefaultBodygroups = "000000000"

SWEP.AttachmentElements = {
    ["ur_329_barrel_m29"] = {
        VMBodygroups = { { ind = 1, bg = 1 } },
        NameChange = "Thunderbolt .44",
        TrueNameChange = "Model 29"
    }
}

-- Animations --

SWEP.Hook_Think = ArcCW.UC.ADSReload
SWEP.RevolverReload = true

SWEP.Animations = {
    ["idle"] = {
        Source = "idle",
        Time = 3,
    },
    ["draw"] = {
        Source = "draw",
        SoundTable = {
            {s = path .. "draw.ogg", t = 0}, -- Not Temporary
            {s = common .. "raise.ogg", t = 0.05},
        },
    },
    ["holster"] = {
        Source = "holster",
        SoundTable = {
            {s = common .. "cloth_2.ogg", t = 0},
            {s = path .. "holster.ogg", t = 0.2}, -- Not Temporary
        },
    },

    ["fire"] = {
        Source = "fire",
        SoundTable = {
            { s = {common .. "revolver_hammer-01.ogg", common .. "revolver_hammer-02.ogg", common .. "revolver_hammer-03.ogg"}, t = 0 }
        },
    },

    ["trigger"] = {
        Source = "trigger",
        Time = 0.15,
        SoundTable = {
            { s = { common .. "revolver_trigger-01.ogg", common .. "revolver_trigger-02.ogg", common .. "revolver_trigger-03.ogg" }, t = 0 }
        },
    },

    ["reload"] = {
        Source = "reload",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_PISTOL,
        MinProgress = 2.7,
        ShellEjectAt = 1.3,
        LHIK = true,
        LHIKIn = 0.2,
        LHIKEaseIn = 0.2,
        LHIKEaseOut = 0.6,
        LHIKOut = 0.62,
        SoundTable = {
            { s = rottle, t = 0 },
            { s = path .. "cyl_latch.ogg", t = 0.2 },
            { s = path .. "cyl_open.ogg", t = 0.5 },
            { s = path .. "extractor_1.ogg", t = 1.0 },
            { s = path1 .. "cylinder_extract.ogg", t = 1.0 },
            { s = path .. "extractor_2.ogg", t = 1.125 },
            { s = common .. "magpouch_pull_small.ogg", t = 1.7 },
            { s = path1 .. "speedloader.ogg", t = 2.3 },
            { s = path .. "cyl_close.ogg", t = 3 },
            { s = rottle, t = 3.3 },
        },
    },
}

-- Attachments --

SWEP.CamAttachment = 3

SWEP.Attachments = {
    {
        PrintName = "Optic",
        Slot = {"optic_lp"},
        DefaultAttName = "Iron Sights",
        Bone = "Body",
        Offset = {
            vpos = Vector(3, -3.6, 0),
            vang = Angle(0, 0, -90),
        },
    },
    {
        PrintName = "Barrel",
        Slot = {"ur_329_barrel"},
        DefaultAttIcon = Material("entities/att/acwatt_ur_deagle_barrel.png","mips smooth"),
        DefaultAttName = "6\" Standard Barrel",
        Bone = "Body",
        Offset = {
            vpos = Vector(3.07, -3.8, -27),
            vang = Angle(90, 0, -90),
        },
    },
    {
        PrintName = "Caliber",
        Slot = {"ur_329_caliber"},
        DefaultAttIcon = Material("entities/att/acwatt_uc_cal_44magnum.png","mips smooth"),
        DefaultAttName = ".44 Magnum",
        Bone = "Body",
        Offset = {
            vpos = Vector(3.07, -3.8, -27),
            vang = Angle(90, 0, -90),
        },
    },
    {
        PrintName = "Tactical",
        InstalledEles = {"tac_rail"},
        Slot = {"tac_pistol"},
        Bone = "Body",
        Offset = {
            vpos = Vector(6.75, -2.5, 0),
            vang = Angle(0, 0, -90),
        },
    },
    {
        PrintName = "Stock",
        Slot = {"uc_stock", "go_stock_pistol_bt"},
        VMScale = Vector(1.1, 1.1, 1.1),
        Bone = "Body",
        Offset = {
            vpos = Vector(-2, 2, 0),
            vang = Angle(0, 0, -90),
        },
    },
    {
        PrintName = "Grip",
        DefaultAttName = "Factory Grip",
        DefaultAttIcon = Material("entities/att/acwatt_ur_deagle_grip_plastic.png","mips smooth"),
        Slot = "ur_329_grip"
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
        Slot = "uc_fg", -- Fire group
        DefaultAttName = "Standard Internals"
    },
    {
        PrintName = "Charm",
        Slot = {"charm","fml_charm"},
        FreeSlot = true,
        Bone = "Body",
        Offset = {
            vpos = Vector(0.65, -4.1, 8.5),
            vang = Angle(90, 0, -100),
        },
        VMScale = Vector(.6,.6,.6),
    },
}