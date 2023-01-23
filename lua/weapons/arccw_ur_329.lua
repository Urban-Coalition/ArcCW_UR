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
SWEP.UC_ShellColor = Color(0.7*255, 0.2*255, 0.2*255)

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
SWEP.Trivia_Desc = [[Though commonly viewed as archaic, revolvers maintain a large following today for their reliability, accuracy, and evocative sentiment. This model was famously "the most powerful handgun in the world" at its time, though its usurpers have not changed the fact that it packs a mean punch.

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
SWEP.WorldModel = "models/weapons/arccw/c_ur_329pd.mdl"
SWEP.ViewModelFOV = 70
SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_REVOLVER

-- Damage parameters --

SWEP.Damage = 75 -- 2 shot close range kill
SWEP.DamageMin = 16 -- 7 shot long range kill
SWEP.RangeMin = 10
SWEP.Range = 160
SWEP.Penetration = 10
SWEP.DamageType = DMG_BULLET
SWEP.ShootEntity = nil
SWEP.MuzzleVelocity = 470
SWEP.PhysBulletMuzzleVelocity = 470

SWEP.BodyDamageMults = ArcCW.UC.BodyDamageMults

-- Jamming --

SWEP.MalfunctionTakeRound = false
SWEP.MalfunctionMean = math.huge -- Theoretically it will never malfunction

-- Mag size --

SWEP.ChamberSize = 0
SWEP.Primary.ClipSize = 6
SWEP.RejectMagSizeChange = true -- Signals to attachments that mag size shouldn't be changeable; needs to be implemented attachment-side with att.Compatible
SWEP.UC_CanManualAction = true -- In case this ever applies to anything other than shotguns

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

SWEP.Delay = 0.25
SWEP.Num = 1
SWEP.FiremodeSound = false
SWEP.Firemodes = {
    {
        Mode = 1,
        PrintName = "ur.329.dact",
    },
   {
       Mode = 1,
       PrintName = "ur.329.sact",
       Override_ManualAction = true,
       Mult_AccuracyMOA = 0.5,
       Mult_HipDispersion = (1/3),
       Mult_MoveDispersion = (1/3),
       Mult_ShootSpeedMult = 3,
       Override_TriggerDelay = false,
   },
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
SWEP.MoveDispersion = 250
SWEP.JumpDispersion = 1000

SWEP.Primary.Ammo = "357"
SWEP.MagID = "deagle"

-- Speed multipliers --

SWEP.SpeedMult = 0.95
SWEP.SightedSpeedMult = 0.9
SWEP.SightTime = 0.25
SWEP.ShootSpeedMult = 0.8

-- Length --

SWEP.BarrelLength = 12
SWEP.ExtraSightDist = 10

-- Ironsights / Customization / Poses --

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

SWEP.CustomizePos = Vector(2, 0, -1.5)
SWEP.CustomizeAng = Angle(15, 15, 05)

SWEP.CrouchPos = Vector(-2.2, 1, 0.6)
SWEP.CrouchAng = Angle(0, 0, -14)

SWEP.HolsterPos = Vector(-1, 2, 1)
SWEP.HolsterAng = Angle(-15.5, 2, -4)

SWEP.SprintPos = Vector(0.3, 1, 0)
SWEP.SprintAng = Angle(-3, 9, -12)

SWEP.MirrorVMWM = true
SWEP.WorldModelOffset = {
    pos        =    Vector(-7.5, 4, -4.5),
    ang        =    Angle(-6, 0, 180),
    bone    =    "ValveBiped.Bip01_R_Hand",
}

-- Weapon sounds --

local path = ")^weapons/arccw_ur/sw329/"
local path1 = ")^weapons/arccw_ur/sw586/"
local path2 = ")^weapons/arccw_ur/1911/"
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

local tail = ")^/arccw_uc/common/44mag/"

SWEP.DistantShootSoundOutdoors = {
    tail .. "fire-dist-44mag-pistol-ext-01.ogg",
    tail .. "fire-dist-44mag-pistol-ext-02.ogg",
    tail .. "fire-dist-44mag-pistol-ext-03.ogg",
    tail .. "fire-dist-44mag-pistol-ext-04.ogg",
    tail .. "fire-dist-44mag-pistol-ext-05.ogg",
    tail .. "fire-dist-44mag-pistol-ext-06.ogg"
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
    },
    ["ur_329_barrel_master"] = {
        VMBodygroups = { { ind = 1, bg = 2 } },
        NameChange = "Thunderbolt .44 Master",
        TrueNameChange = "Model 29"
    },
    ["ur_329_barrel_pocket"] = {
        VMBodygroups = { { ind = 1, bg = 3 } },
        NameChange = "Companion .44",
        TrueNameChange = "Model 629"
    }
}

-- Animations --

SWEP.Hook_Think = ArcCW.UC.ADSReload
SWEP.RevolverReload = true

SWEP.Hook_TranslateAnimation = function(wep,anim)
    if wep:GetCurrentFiremode().Override_ManualAction and anim == "fire_dry" then
        return "fire_dry_sact"
    end
    if wep:GetCurrentFiremode().Override_ManualAction and anim ~= "fire" and (anim ~= "reload" or !wep:GetNeedCycle()) then
        return anim .. "_cocked"
    end
end

SWEP.Animations = {
    ["idle"] = {
        Source = "idle",
        Time = 3,
    },
    ["idle_cocked"] = {
        Source = "idle_cocked",
        Time = 3,
    },
    ["ready"] = {
        Source = "ready",
        Time = 86 / 60,
        SoundTable = {
            {s = path2 .. "draw.ogg", t = 0},
            { s = path1 .. "cylinder_in.ogg", t = 0.2 },
            {s = common .. "raise.ogg", t = 0.55},
        },
    },
    ["draw"] = {
        Source = "draw",
        Time = 0.7,
        MinProgress = .4,
        SoundTable = {
            {s = path2 .. "draw.ogg", t = 0}, -- Not Temporary
            {s = common .. "raise.ogg", t = 0.05},
        },
    },
    ["draw_cocked"] = {
        Source = "draw_cocked",
        Time = 0.7,
        MinProgress = .4,
        SoundTable = {
            {s = path2 .. "draw.ogg", t = 0}, -- Not Temporary
            {s = common .. "raise.ogg", t = 0.05},
        },
    },
    ["holster"] = {
        Source = "holster",
        Time = 0.5,
        SoundTable = {
            {s = common .. "cloth_2.ogg", t = 0},
            {s = path2 .. "holster.ogg", t = 0.12}, -- Not Temporary
        },
    },
    ["holster_cocked"] = {
        Source = "holster_cocked",
        Time = 0.5,
        SoundTable = {
            {s = common .. "cloth_2.ogg", t = 0},
            {s = path2 .. "holster.ogg", t = 0.12}, -- Not Temporary
        },
    },

    ["fire"] = {
        Source = "fire",
        SoundTable = {
            { s = {common .. "revolver_hammer-01.ogg", common .. "revolver_hammer-02.ogg", common .. "revolver_hammer-03.ogg"}, t = 0 }
        },
        MinProgress = .2,
    },
    ["fire_dry"] = {
        Source = "dryfire",
        SoundTable = {
            { s = {common .. "revolver_hammer-01.ogg", common .. "revolver_hammer-02.ogg", common .. "revolver_hammer-03.ogg"}, t = 0 }
        },
    },
    ["fire_dry_sact"] = {
        Source = "dryfire_sact",
        SoundTable = {
            { s = {common .. "revolver_hammer-01.ogg", common .. "revolver_hammer-02.ogg", common .. "revolver_hammer-03.ogg"}, t = 0 },
            { s = { common .. "revolver_trigger-01.ogg", common .. "revolver_trigger-03.ogg" }, t = 0.25 + 0.2 },
        },
    },

    ["trigger"] = {
        Source = "trigger",
        Time = 0.1,
        SoundTable = {
            { s = { common .. "revolver_trigger-01.ogg", common .. "revolver_trigger-02.ogg", common .. "revolver_trigger-03.ogg" }, t = 0 }
        },
    },

    ["cycle"] = {
        Source = "cocking",
        MinProgress = 0.5,
        SoundTable = {
            { s = { common .. "revolver_trigger-01.ogg", common .. "revolver_trigger-03.ogg" }, t = 0.2 }
        }
    },

    ["fix"] = {
        Source = "cocking",
        MinProgress = 0.5,
        SoundTable = {
            { s = { common .. "revolver_trigger-01.ogg", common .. "revolver_trigger-03.ogg" }, t = 0.2 }
        }
    },

    ["1_to_2"] = {
        Source = "cocking",
        Time = 0.8,
        SoundTable = {
            { s = { common .. "revolver_trigger-01.ogg", common .. "revolver_trigger-03.ogg" }, t = 0.1 }
        }
    },
    ["2_to_1"] = {
        Source = "decocking",
        Time = 0.8,
        SoundTable = {
            { s = common .. "revolver_trigger-02.ogg", t = 0.1 }
        }
    },
    ["2_to_3"] = {
        Source = "decocking",
        Time = 0.8,
        SoundTable = {
            { s = common .. "revolver_trigger-02.ogg", t = 0.1 }
        }
    },

    ["reload"] = {
        Source = "reload",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_REVOLVER,
        Time = 3.0,
        MinProgress = 1.8,
        ShellEjectAt = 1,
        LHIK = true,
        LHIKIn = 0.2,
        LHIKEaseIn = 0.2,
        LHIKEaseOut = 0.6,
        LHIKOut = 0.62,
        SoundTable = {
            { s = rottle, t = 0 },
            { s = path .. "cyl_latch.ogg", t = 0.1 },
            { s = path1 .. "cylinder_out.ogg", t = 0.2 },
            { s = path1 .. "extractor1.ogg", t = 0.65 },
            { s = path1 .. "extract1.ogg", t = 0.65, p = 110, v = 0.25 },
            { s = path1 .. "extractor2.ogg", t = 0.75, p = 110 },
            { s = path1 .. "cylinder_extract.ogg", t = 0.75 },
            { s = path1 .. "extractor2.ogg", t = 0.825 },
            { s = common .. "magpouch_pull_small.ogg", t = 1.2, v = 0.2 },
            { s = path1 .. "speedloader.ogg", t = 1.65 },
            { s = path1 .. "cylinder_in.ogg", t = 2.15 },
            { s = rottle, t = 2.4 },
        },
    },
    ["reload_cocked"] = {
        Source = "reload_cocked",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_REVOLVER,
        Time = 3.0,
        MinProgress = 1.8,
        ShellEjectAt = 1,
        LHIK = true,
        LHIKIn = 0.2,
        LHIKEaseIn = 0.2,
        LHIKEaseOut = 0.6,
        LHIKOut = 0.62,
        SoundTable = {
            { s = rottle, t = 0 },
            { s = path .. "cyl_latch.ogg", t = 0.1 },
            { s = path1 .. "cylinder_out.ogg", t = 0.2 },
            { s = path1 .. "extractor1.ogg", t = 0.65 },
            { s = path1 .. "extract1.ogg", t = 0.65, p = 110, v = 0.25 },
            { s = path1 .. "extractor2.ogg", t = 0.75, p = 110 },
            { s = path1 .. "cylinder_extract.ogg", t = 0.75 },
            { s = path1 .. "extractor2.ogg", t = 0.825 },
            { s = common .. "magpouch_pull_small.ogg", t = 1.2, v = 0.2 },
            { s = path1 .. "speedloader.ogg", t = 1.65 },
            { s = path1 .. "cylinder_in.ogg", t = 2.15 },
            { s = rottle, t = 2.4 },
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
        DefaultAttIcon = Material("entities/att/acwatt_ur_329_barrel.png","mips smooth"),
        DefaultAttName = "4\" Snubnose Barrel",
        Bone = "Body",
        Offset = {
            vpos = Vector(3.07, -3.8, -27),
            vang = Angle(90, 0, -90),
        },
    },
    {
        PrintName = "Caliber",
        Slot = {"ur_329_caliber"},
        DefaultAttIcon = Material("entities/att/uc_bullets/44magnum.png","mips smooth"),
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
    --[[]
    {
        PrintName = "Grip",
        DefaultAttName = "Factory Grip",
        DefaultAttIcon = Material("entities/att/acwatt_ur_329_grip.png","mips smooth"),
        Slot = "ur_329_grip"
    },
    ]]
    {
        PrintName = "Ammo Type",
        DefaultAttName = "\"FMJ\" Full Metal Jacket",
        DefaultAttIcon = Material("entities/att/arccw_uc_ammo_generic.png", "mips smooth"),
        Slot = "uc_ammo",
        ExcludeFlags = {"329_ss"}
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
        DefaultAttName = "Standard Internals",
    },
    {
        PrintName = "Charm",
        Slot = {"charm","fml_charm"},
        FreeSlot = true,
        Bone = "Body",
        Offset = {
            vpos = Vector(7.1, -2.4, -0.1),
            vang = Angle(0, 0, -90),
        },
        VMScale = Vector(.75,.75,.75),
    },
}