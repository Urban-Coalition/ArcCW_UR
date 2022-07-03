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
SWEP.ShellPitch = 90

SWEP.MuzzleEffectAttachment = 1
SWEP.CaseEffectAttachment = 2
SWEP.TracerNum = 1
SWEP.TracerWidth = 1
SWEP.ShootPitch = 100

-- Fake name --

SWEP.PrintName = "Enforcer .44"

-- True name --

SWEP.TrueName = "Model 329PD"

-- Trivia --

SWEP.Trivia_Class = "Revolver"
SWEP.Trivia_Desc = [[Though commonly viewed as archaic, revolvers maintain a large following today for their reliability, accuracy, and evocative sentiment. This model was famously the "most powerful handgun in the world" at its time, though its usurpers have not changed the fact that it packs a mean punch.

Switch to single-action mode to lighten the trigger pull, eliminating delay and increasing accuracy.]]
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

SWEP.ViewModel = "models/weapons/arccw/c_ud_deagle.mdl"
SWEP.WorldModel = "models/weapons/arccw/c_ud_deagle.mdl"
SWEP.ViewModelFOV = 60
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

SWEP.Delay = 60 / 160
SWEP.Num = 1
SWEP.Firemodes = {
    {
        Mode = 1,
        PrintName = "ur.329.dact",
    },
    {
        Mode = 1,
        PrintName = "ur.329.sact",
        Override_ManualAction = true,
        Mult_AccuracyMOA = .75,
    },
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

SWEP.HolsterPos = Vector(0.3, 3, 1)
SWEP.HolsterAng = Angle(-5, 15, -20)

SWEP.HoldtypeHolstered = "normal"
SWEP.HoldtypeActive = "revolver"
SWEP.HoldtypeSights = "revolver"

SWEP.IronSightStruct = {
     Pos = Vector(-2.546, 5, 1.09),
     Ang = Angle(0.6, 0, 0),
     Magnification = 1,
     SwitchToSound = "",
}

SWEP.ActivePos = Vector(0.2, 2, 1.5)
SWEP.ActiveAng = Angle(0, 0, -2)

SWEP.CustomizePos = Vector(-1, -2, 1)
SWEP.CustomizeAng = Angle(0, 0, 0)

SWEP.CrouchPos = Vector(-2.2, 1, 0.6)
SWEP.CrouchAng = Angle(0, 0, -14)

SWEP.MirrorVMWM = true
SWEP.WorldModelOffset = {
    pos        =    Vector(-10.5, 2.5, -5),
    ang        =    Angle(-6, -6, 180),
    bone    =    "ValveBiped.Bip01_R_Hand",
}

-- Weapon sounds --

local path = ")^weapons/arccw_ur/deagle/"
local common = ")^/arccw_uc/common/"
local rottle = {common .. "cloth_2.ogg", common .. "cloth_3.ogg", common .. "cloth_4.ogg", common .. "cloth_6.ogg", common .. "rattle.ogg"}
SWEP.ShootSound = path .. "fire.ogg"
SWEP.ShootSoundSilenced = path .. "fire_sup_dist.ogg"
SWEP.DistantShootSoundSilenced = path .. "fire_sup.ogg"

SWEP.ShootSound = {
    path .. "fire-01.ogg",
    path .. "fire-02.ogg",
    path .. "fire-03.ogg",
    path .. "fire-04.ogg",
    path .. "fire-05.ogg",
    path .. "fire-06.ogg"
}

SWEP.ShootSoundSilenced = path .. "fire_sup.ogg"
SWEP.DistantShootSound = nil
SWEP.DistantShootSoundSilenced = common .. "sup_tail.ogg"
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
    common .. "fire-dist-int-shotgun-01.ogg",
    common .. "fire-dist-int-shotgun-02.ogg",
    common .. "fire-dist-int-shotgun-03.ogg",
    common .. "fire-dist-int-shotgun-04.ogg",
    common .. "fire-dist-int-shotgun-05.ogg",
    common .. "fire-dist-int-shotgun-06.ogg"
}
SWEP.DistantShootSoundOutdoorsSilenced = {
    common .. "sup_tail.ogg"
}
SWEP.DistantShootSoundIndoorsSilenced = {
    common .. "sup_tail.ogg"
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
}

-- Animations --

SWEP.Animations = {
    ["idle"] = {
        Source = "idle",
        Time = 120 / 60,
    },
    ["ready"] = {
        Source = "ready",
        Time = 73 / 60,
        LHIK = true,
        LHIKIn = 0,
        LHIKEaseOut = 0.3,
        LHIKOut = 0.6,
        SoundTable = {
            { s = rottle, t = 0 / 60, c = ca },
            { s = path .. "rack1.ogg", t = 10 / 60, c = ca },
            { s = path .. "rack2.ogg", t = 25 / 60, c = ca },
        },
    },
    ["draw"] = {
        Source = "idle",
        ProcDraw = true,
        SoundTable = {
            {s = path .. "draw.ogg", t = 0}, -- Not Temporary
            {s = common .. "raise.ogg", t = 0.05},
        },
    },
    ["holster"] = {
        Source = "idle",
        SoundTable = {
            {s = common .. "cloth_2.ogg", t = 0},
            {s = path .. "holster.ogg", t = 0.2}, -- Not Temporary
        },
    },

    ["fire"] = {
        Source = {"fire_01", "fire_02", "fire_03"},
        Time = 0.9,
        ShellEjectAt = 0.05,
        SoundTable = {{ s = {path .. "mech-01.ogg", path .. "mech-02.ogg", path .. "mech-03.ogg", path .. "mech-04.ogg", path .. "mech-05.ogg", path .. "mech-06.ogg"}, t = 0.03 }},
    },

    -- 7-R Reloads --

    ["reload"] = {
        Source = "reload",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_PISTOL,
        MinProgress = 1.3525,
        Time = 139 / 60,
        LastClip1OutTime = 0.9,
        LHIK = true,
        LHIKIn = 0.2,
        LHIKEaseIn = 0.2,
        LHIKEaseOut = 0.6,
        LHIKOut = 0.62,
        SoundTable = {
            { s = rottle, t = 0 / 60, c = ca },
            { s = common .. "magrelease.ogg", t = 7 / 60, c = ca },
            { s = path .. "magout.ogg", t = 6 / 60, c = ca },
            { s = rottle, t = 10 / 60, c = ca },
            { s = common .. "magpouch_pull_small.ogg", t = 30 / 60, c = ca },
            { s = rottle, t = 55 / 60, c = ca },
            { s = path .. "magin_miss.ogg", t = 64 / 60, c = ca },
            { s = path .. "magin_old.ogg", t = 71 / 60, c = ca },
        },
    },
    ["reload_empty"] = {
        Source = "reload_empty",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_PISTOL,
        MinProgress = 1.75,
        Time = 160 / 60,
        LastClip1OutTime = 0.76,
        LHIK = true,
        LHIKIn = 0.1,
        LHIKEaseIn = 0.1,
        LHIKEaseOut = 0.55,
        LHIKOut = 0.7,
        SoundTable = {
            { s = rottle, t = 0 / 60, c = ca },
            { s = common .. "magrelease.ogg", t = 7 / 60, c = ca },
            { s = path .. "magout_old.ogg", t = 8 / 60, c = ca },
            { s = rottle, t = 10 / 60, c = ca },
            { s = common .. "magpouch_pull_small.ogg", t = 26 / 60, c = ca },
            { s = common .. "pistol_magdrop.ogg", t = 40 / 60, c = ca },
            { s = rottle, t = 55 / 60, c = ca },
            { s = path .. "magin_miss.ogg", t = 60 / 60, c = ca },
            { s = path .. "magin_old.ogg", t = 66 / 60, c = ca },
            { s = path .. "chamber.ogg", t = 94 / 60, c = ca },
            { s = rottle, t = 75 / 60, c = ca },
        },
    },
}

-- Attachments --

SWEP.CamAttachment = 3

SWEP.Attachments = {
    {
        PrintName = "Optic",
        Slot = {"optic_lp","optic"},
        DefaultAttName = "Iron Sights",
        Bone = "Body",
        Offset = {
            vpos = Vector(0, -5.3, 7),
            vang = Angle(90, 0, -90),
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
        DefaultAttIcon = Material("entities/att/acwatt_uc_cal_50ae.png","mips smooth"),
        DefaultAttName = ".50 Action Express",
        Bone = "Body",
        Offset = {
            vpos = Vector(3.07, -3.8, -27),
            vang = Angle(90, 0, -90),
        },
    },
    {
        PrintName = "Muzzle",
        DefaultAttName = "Standard Muzzle",
        Slot = {"muzzle"},
        Bone = "Barrel",
        Offset = {
            vpos = Vector(0, 0, 0.75),
            vang = Angle(90, 0, -90),
        },
        InstalledEles = {"nofh"},
        ExcludeFlags = {"barrel_annihilator"},
    },
    {
        PrintName = "Tactical",
        InstalledEles = {"tac_rail"},
        Slot = {"tac_pistol"},
        Bone = "Body",
        Offset = {
            vpos = Vector(0, -3.7, 7),
            vang = Angle(90, 0, -90),
        },
    },
    {
        PrintName = "Magazine",
        Slot = {"ur_329_mag"},
        DefaultAttIcon = Material("entities/att/acwatt_ur_deagle_mag_7.png","mips smooth"),
        DefaultAttName = "6-Round Cylinder",
    },
    {
        PrintName = "Stock",
        Slot = {"uc_stock", "go_stock_pistol_bt"},
        VMScale = Vector(1.1, 1.1, 1.1),
        Bone = "Body",
        Offset = {
            vpos = Vector(0, -0.25, 0),
            vang = Angle(90, 0, -90),
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
    {
        PrintName = "Finish",
        Slot = {"ur_329_skin"},
        DefaultAttName = "Stainless Steel",
        DefaultAttIcon = Material("entities/att/acwatt_ur_deagle_finish_default.png","mips smooth"),
        FreeSlot = true,
    },
}