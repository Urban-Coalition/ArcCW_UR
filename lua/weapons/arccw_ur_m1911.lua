SWEP.Base = "arccw_base"
SWEP.Spawnable = true
SWEP.Category = "ArcCW - Urban Coalition"
SWEP.UC_CategoryPack = "2Urban Renewal"
SWEP.AdminOnly = false
SWEP.UseHands = true

-- Muzzle and shell effects --

SWEP.MuzzleEffect = "muzzleflash_pistol"
SWEP.ShellEffect = "arccw_uc_shelleffect"
SWEP.ShellModel = "models/weapons/arccw/uc_shells/9x19.mdl"
SWEP.ShellScale = 1
--SWEP.ShellMaterial = "models/weapons/arcticcw/shell_9mm"
SWEP.ShellPitch = 90

SWEP.MuzzleEffectAttachment = 1
SWEP.CaseEffectAttachment = 2
SWEP.CamAttachment = 5
SWEP.TracerNum = 1
SWEP.TracerWidth = 1
SWEP.ShootPitch = 100

-- Fake name --

SWEP.PrintName = "AMAS" -- American Automatic Sidearm

-- True name --

SWEP.TrueName = "M1911"

-- Trivia --

SWEP.Trivia_Class = "Pistol"
SWEP.Trivia_Desc = [[Venerable semi-automatic pistol issued by the US Army throughout both World Wars and then some. Even after more than a century of service, it is rarely considered an obsolete design, and its short recoil mechanism has been inherited by most modern pistols.

Easy to handle and packing respectable stopping power, the antiquated single-stack magazine is its only notable downside.]]
SWEP.Trivia_Manufacturer = "Stoner's Legacy Ltd."
SWEP.Trivia_Calibre = ".45 ACP"
SWEP.Trivia_Mechanism = "Short Recoil"
SWEP.Trivia_Country = "USA"
SWEP.Trivia_Year = 1911

-- Weapon slot --

SWEP.Slot = 1

-- Weapon's manufacturer real name --

if GetConVar("arccw_truenames"):GetBool() then
    SWEP.PrintName = SWEP.TrueName
    SWEP.Trivia_Manufacturer = "Colt's Manufacturing Company"
end

-- Viewmodel / Worldmodel / FOV --

SWEP.ViewModel = "models/weapons/arccw/c_ur_m1911.mdl"
SWEP.WorldModel = "models/weapons/arccw/c_ur_m1911.mdl"
SWEP.ViewModelFOV = 66
SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_REVOLVER

-- Damage parameters --

SWEP.Damage = 45 -- 3 shot short range kill (2 shot chest point-blank)
SWEP.DamageMin = 15 -- 7 shot long range kill
SWEP.RangeMin = 10
SWEP.Range = 80 -- 3 shot until ~40m
SWEP.Penetration = 9
SWEP.DamageType = DMG_BULLET
SWEP.ShootEntity = nil

SWEP.PhysBulletMuzzleVelocity = 253

SWEP.BodyDamageMults = ArcCW.UC.BodyDamageMults

-- Jamming --

--SWEP.Malfunction = true
SWEP.MalfunctionJam = true
--SWEP.MalfunctionMean = 21
SWEP.MalfunctionPostFire = false
SWEP.MalfunctionTakeRound = true

-- Mag size --

SWEP.ChamberSize = 1
SWEP.Primary.ClipSize = 7

-- Recoil --

SWEP.Recoil = 1.25
SWEP.RecoilSide = 0.75

SWEP.RecoilRise = 0.25
SWEP.VisualRecoilMult = 1.0
SWEP.MaxRecoilBlowback = .5
SWEP.MaxRecoilPunch = .8

SWEP.Sway = 1

-- Firerate / Firemodes --

SWEP.Delay = 60 / 400
SWEP.Num = 1
SWEP.Firemodes = {
    {
        Mode = 1,
    },
    {
        Mode = 0
    }
}

SWEP.ShootPitch = 100
SWEP.ShootVol = 120

SWEP.ProceduralRegularFire = false
SWEP.ProceduralIronFire = false

SWEP.ReloadInSights = true

-- NPC --

SWEP.NPCWeaponType = "weapon_pistol"
SWEP.NPCWeight = 70

-- Accuracy --

SWEP.AccuracyMOA = 5
SWEP.HipDispersion = 400
SWEP.MoveDispersion = 150
SWEP.JumpDispersion = 1000

SWEP.Primary.Ammo = "pistol"
SWEP.MagID = "m1911"

-- Speed multipliers --

SWEP.SpeedMult = 0.97
SWEP.SightedSpeedMult = 0.875
SWEP.SightTime = 0.32
SWEP.ShootSpeedMult = 1

-- Length --

SWEP.BarrelLength = 8
SWEP.ExtraSightDist = 10

-- Ironsights / Customization / Poses --

SWEP.HolsterPos = Vector(0.3, 3, 1.6)
SWEP.HolsterAng = Angle(-14, 0, -0.5)

SWEP.SprintPos = Vector(0.3, 3, 1)
SWEP.SprintAng = Angle(-5, 15, -20)

SWEP.HoldtypeHolstered = "normal"
SWEP.HoldtypeActive = "pistol"
SWEP.HoldtypeSights = "revolver"

SWEP.IronSightStruct = {
     Pos = Vector(-2.33, 10, 1.5),
     Ang = Angle(0.2, 0.02, 5.5),
     Magnification = 1,
     SwitchToSound = "",
}

SWEP.ActivePos = Vector(0.3, 3, 1.3)
SWEP.ActiveAng = Angle(0, 0, -0.5)

SWEP.CustomizePos = Vector(0, 0, 0)
SWEP.CustomizeAng = Angle(0, 0, 0)

SWEP.CrouchPos = Vector(-2, 0, 0)
SWEP.CrouchAng = Angle(0, 0, -8)

SWEP.MirrorVMWM = true
SWEP.WorldModelOffset = {
    pos        =    Vector(-9, 2.5, -4.25),
    ang        =    Angle(-6, -6, 180),
    bone    =    "ValveBiped.Bip01_R_Hand",
}

-- Weapon sounds --

local path = ")^weapons/arccw_ur/1911/"
local common = ")^/arccw_uc/common/"
local rottle = {common .. "cloth_2.ogg", common .. "cloth_3.ogg", common .. "cloth_4.ogg", common .. "cloth_6.ogg", common .. "rattle.ogg"}
local rutle = {common .. "movement-pistol-01.ogg",common .. "movement-pistol-02.ogg",common .. "movement-pistol-03.ogg",common .. "movement-pistol-04.ogg"}

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
    common .. "fire-dist-int-pistol-01.ogg",
    common .. "fire-dist-int-pistol-02.ogg",
    common .. "fire-dist-int-pistol-03.ogg",
    common .. "fire-dist-int-pistol-04.ogg",
    common .. "fire-dist-int-pistol-05.ogg",
    common .. "fire-dist-int-pistol-06.ogg"
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

-- Bodygroups --

SWEP.BulletBones = {
    [1] = "Bullet1",    [2] = "Bullet2",    [3] = "Bullet3", [4] = "Bullet4",    [5] = "Bullet5",    [6] = "Bullet6", [7] = "Bullet7"
}

SWEP.DefaultBodygroups = "000000000"

SWEP.AttachmentElements = {
    ["ur_1911_slide_compact"] = {
        VMBodygroups = {
            {ind = 0, bg = 1},
            {ind = 1, bg = 1}
        },
        AttPosMods = {
            [4] = {
                vpos = Vector(0, -3.58, .22),
                vang = Angle(0, 90, 0),
            }
        },
        NameChange = "AMAD",
        TrueNameChange = "Colt Officer's ACP",
    },

    ["ur_1911_slide_m45"] = {
        VMBodygroups = {
            {ind = 1, bg = 2},
            {ind = 4, bg = 1},
            {ind = 5, bg = 1},
        },
        --VMSkin = 1,
        NameChange = "AMASIN",
        TrueNameChange = "M45",
        Override_IronSightStruct = {
            Pos = Vector(-2.3, 10, 1.4),
            Ang = Angle(0.275, 0.07, 5.5),
        },
    },

    ["ur_1911_slide_m45_custom"] = {
        VMBodygroups = {
            {ind = 1, bg = 3},
            {ind = 4, bg = 1},
            {ind = 5, bg = 1},
        },
        --VMSkin = 1,
        NameChange = "AMASIN",
        TrueNameChange = "M45",
        Override_IronSightStruct = {
            Pos = Vector(-2.3, 10, 1.4),
            Ang = Angle(0.275, 0.07, 5.5),
        },
    },

    ["ur_1911_mag_ext"] = {
        VMBodygroups = {
            {ind = 3, bg = 1}
        }
    },

    ["ur_1911_grip_snake"] = {
        VMBodygroups = {
            {ind = 6, bg = 1}
        }
    },
    ["ur_1911_grip_pachmayr"] = {
        VMBodygroups = {
            {ind = 6, bg = 2}
        }
    },

    ["ur_1911_skin_silver"] = {
        VMSkin = 1
    },
    ["ur_1911_skin_tan"] = {
        VMSkin = 2
    },
    ["ur_1911_skin_custom"] = {
        VMSkin = 3
    },

    ["ur_1911_cal_9mm"] = {
        NameChange = "AMAS-9",
        TrueNameChange = "SR1911",
    },
    ["ur_1911_cal_10auto"] = {
        NameChange = "AMAS Elite",
        TrueNameChange = "Delta Elite",
    },

    ["optic_rail"] = {
        VMBodygroups = {
            {ind = 7, bg = 1}
        }
    },
    ["tac_rail"] = {
        VMBodygroups = {
            {ind = 8, bg = 1}
        }
    },
}

SWEP.Hook_ModifyBodygroups = function(wep, data)
    -- local vm = data.vm
    -- if !IsValid(vm) then return end

    -- local att_skin = wep.Attachments[14].Installed
    -- local att_slide = wep.Attachments[2].Installed

    -- if att_slide == "ur_1911_slide_m45" and att_skin == "ur_1911_skin_custom" then
    --     vm:SetBodygroup(1, 3)
    -- end
end

-- SWEP.Hook_NameChange = function(wep,name)
--     if GetConVar("arccw_truenames"):GetBool() then
--         local atts = wep.Attachments
--         local cal = string.Replace(atts[3].Installed or "45acp", "ur_1911_cal_", "")

--         if cal == "10auto" then return GetConVar("arccw_truenames"):GetBool() and "Delta Elite" or ""
--         elseif cal == "9mm" then return GetConVar("arccw_truenames"):GetBool() and "SR1911" or ""
--         end

--         return "M1911"
--     else
--         return "AMAS"
--     end
-- end

-- Animations --

local ca = CHAN_AUTO

SWEP.Animations = {
    ["idle"] = {
        Source = "idle",
        Time = 10 / 30,
    },
    ["idle_empty"] = {
        Source = "idle_empty",
        Time = 10 / 30,
    },
    ["ready"] = {
        Source = "fix",
        Time = 1.6,
        MinProgress = 1.2,
        LHIK = true,
        LHIKIn = 0.3,
        LHIKOut = 0,
        ShellEjectAt = false,
        ProcDraw = true,
        SoundTable = {
            { s = rottle, t = 0 / 60, c = ca },
            {s = path .. "draw.ogg", t = 0},
            { s = path .. "mech.ogg",t = 28 / 60}, -- Temporary
            { s = path .. "slidedrop.ogg",t = 35 / 60},
        },
    },
    ["draw"] = {
        Source = "draw",
        Time = .75,
        MinProgress = .4,
        --ProcDraw = true,
        SoundTable = {
            {s = rottle, t = 0},
            {s = path .. "draw.ogg", t = 0}, -- Not Temporary
            {s = rutle, t = 0.1},
            --{s = common .. "raise.ogg", t = 0.05},
        },
    },
    ["draw_empty"] = {
        Source = "draw_empty",
        Time = .75,
        MinProgress = .4,
        --ProcDraw = true,
        SoundTable = {
            {s = rottle, t = 0},
            {s = path .. "draw.ogg", t = 0}, -- Not Temporary
            {s = rutle, t = 0.1},
            --{s = common .. "raise.ogg", t = 0.05},
        },
    },
    ["draw_jam"] = {
        Source = "draw_jam",
        Time = .75,
        MinProgress = .4,
        SoundTable = {
            {s = rottle, t = 0},
            {s = path .. "draw.ogg", t = 0}, -- Not Temporary
            {s = rutle, t = 0.1},
            --{s = common .. "raise.ogg", t = 0.05},
        },
    },
    ["holster"] = {
        Source = "holster",
        Time = .75,
        SoundTable = {
            {s = rutle, t = 0.05},
            {s = path .. "holster.ogg", t = 0.2}, -- Not Temporary
        },
    },
    ["holster_empty"] = {
        Source = "holster_empty",
        Time = .75,
        SoundTable = {
            {s = rutle, t = 0.05},
            {s = path .. "holster.ogg", t = 0.2}, -- Not Temporary
        },
    },
    ["holster_jam"] = {
        Source = "holster_jam",
        Time = 18 / 30,
        SoundTable = {
            {s = rutle, t = 0.05},
            {s = path .. "holster.ogg", t = 0.2}, -- Not Temporary
        },
    },

    ["fire"] = {
        Source = "fire",
        Time = 30 / 30,
        ShellEjectAt = 0,
        SoundTable = {{ s = {path .. "mech-01.ogg", path .. "mech-02.ogg", path .. "mech-03.ogg", path .. "mech-04.ogg", path .. "mech-05.ogg", path .. "mech-06.ogg"}, t = 0 }},
    },
    ["fire_empty"] = {
        Source = "fire_empty",
        Time = 24 / 30,
        ShellEjectAt = 0,
        SoundTable = {
            {s = rottle, t = 0},
            { s = path .. "mech_last.ogg", t = 0 },
        },
    },
    ["fire_jammed"] = {
        Source = "fire_jam",
        Time = 30 / 30,
        MinProgress = 0.5,
        ShellEjectAt = false,
        SoundTable = {
            --{ s = {path .. "mech-01.ogg", path .. "mech-02.ogg", path .. "mech-03.ogg", path .. "mech-04.ogg", path .. "mech-05.ogg", path .. "mech-06.ogg"}, t = 0 }
        },
    },

    -- 7-R Reloads --

    ["reload_10"] = {
        Source = "reload_ext",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_PISTOL,
        MinProgress = 1.3525,
        Time = 65 / 30,
        LastClip1OutTime = 0.9,
        LHIK = true,
        LHIKIn = 0.2,
        LHIKEaseIn = 0.2,
        LHIKEaseOut = 0.2,
        LHIKOut = 0.62,
        SoundTable = {
            { s = rottle, t = 0 / 60, c = ca },
            { s = common .. "magpouch_pull_small.ogg", t = 0 / 60, c = ca },
            { s = common .. "magrelease.ogg", t = 17 / 60, c = ca },
            { s = path .. "magout.ogg", t = 26 / 60, c = ca },
            { s = rottle, t = 10 / 60, c = ca },
            { s = rottle, t = 55 / 60, c = ca },
            { s = common ..  "magpouch_replace_small.ogg", t = 80 / 60, c = ca },
            { s = path .. "magin.ogg", t = 50 / 60, c = ca },
        },
    },
    ["reload_empty_10"] = {
        Source = "reload_empty_ext",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_PISTOL,
        MinProgress = 1.75,
        Time = 75 / 30,
        LastClip1OutTime = 0.76,
        LHIK = true,
        LHIKIn = 0.1,
        LHIKEaseIn = 0.1,
        LHIKEaseOut = 0.55,
        LHIKOut = 0.7,
        SoundTable = {
            { s = rottle, t = 0 / 60, c = ca },
            { s = common .. "magrelease.ogg", t = 7 / 60, c = ca },
            { s = path .. "magout.ogg", t = 16 / 60, c = ca },
            { s = rottle, t = 10 / 60, c = ca },
            { s = common .. "magpouch_pull_small.ogg", t = 29 / 60, c = ca },
            { s = common .. "pistol_magdrop.ogg", t = 40 / 60, c = ca },
            { s = rottle, t = 55 / 60, c = ca },
            { s = path .. "magin.ogg", t = 64 / 60, c = ca },
            { s = rottle, t = 90 / 60, c = ca },
            { s = path .. "slidedrop.ogg", t = 94 / 60, c = ca },
        },
    },

    ["reload"] = {
        Source = "reload",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_PISTOL,
        MinProgress = 1.3525,
        Time = 65 / 30,
        LastClip1OutTime = 0.9,
        LHIK = true,
        LHIKIn = 0.2,
        LHIKEaseIn = 0.2,
        LHIKEaseOut = 0.2,
        LHIKOut = 0.62,
        SoundTable = {
            { s = rottle,                                   t = 0 / 60, c = ca },
            { s = common .. "magpouch_pull_small.ogg",      t = 5 / 60, c = ca },
            { s = rottle,                                   t = 10 / 60, c = ca },
            { s = common .. "magrelease.ogg",               t = 17 / 60, c = ca },
            { s = path .. "magout.ogg",                     t = 26 / 60, c = ca },
            { s = path .. "magin.ogg",                      t = 45 / 60, c = ca },
            { s = rottle,                                   t = 55 / 60, c = ca },
            { s = common ..  "magpouch_replace_small.ogg",  t = 80 / 60, c = ca },
            { s = path .. "grab.ogg",                       t = 110 / 60, c = ca },
        },
    },
    ["reload_empty"] = {
        Source = "reload_empty",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_PISTOL,
        MinProgress = 1.75,
        Time = 75 / 30,
        LastClip1OutTime = 0.76,
        LHIK = true,
        LHIKIn = 0.1,
        LHIKEaseIn = 0.1,
        LHIKEaseOut = 0.55,
        LHIKOut = 0.7,
        SoundTable = {
            { s = rottle, t = 0 / 60, c = ca },
            { s = common .. "magrelease.ogg", t = 7 / 60, c = ca },
            { s = path .. "magout.ogg", t = 16 / 60, c = ca },
            { s = rottle, t = 10 / 60, c = ca },
            { s = common .. "magpouch_pull_small.ogg", t = 29 / 60, c = ca },
            { s = common .. "pistol_magdrop.ogg", t = 40 / 60, c = ca },
            { s = rottle, t = 55 / 60, c = ca },
            { s = path .. "magin.ogg", t = 64 / 60, c = ca },
            { s = rottle, t = 90 / 60, c = ca },
            { s = path .. "slidedrop.ogg", t = 94 / 60, c = ca },
            { s = path .. "grab.ogg", t = 125 / 60, c = ca },
        },
    },

    -- Jam Animations --

    ["fix"] = {
        Source = "fix",
        --Time = 40 / 30,
        LHIK = true,
        LHIKIn = 0.3,
        LHIKOut = 0,
        ShellEjectAt = 30 / 60,
        SoundTable = {
            { s = rottle, t = 0 / 60, c = ca },
            { s = path .. "mech.ogg",t = 28 / 60}, -- Temporary
            { s = path .. "slidedrop.ogg",t = 35 / 60},
        },
    },

    ["fix_empty"] = {
        Source = "fix_empty",
        --Time = 40 / 30,
        LHIK = true,
        LHIKIn = 0.3,
        LHIKOut = 0,
        ShellEjectAt = 30 / 60,
        SoundTable = {
            { s = rottle, t = 0 / 60, c = ca },
            { s = path .. "mech.ogg",t = 28 / 60},
        },
    },

    ["idle_jammed"] = {
        Source = "idle_jam",
        -- time = 35 / 60,
        LHIK = true,
        LHIKIn = 0.3,
        LHIKOut = 0,
       -- SoundTable = {
        -- },
    },

    -- -- Inspecc --

    ["enter_inspect"] = {
        Source = "enter_inspect",
        time = 35 / 60,
        LHIK = true,
        LHIKIn = 0.3,
        LHIKOut = 0,
        SoundTable = {
            {s = rottle, t = 0},
            {s = common .. "movement-pistol-04.ogg", t = 0},
        },
    },
    ["idle_inspect"] = {
        Source = "idle_inspect",
        time = 72 / 60,
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 0,
    },
    ["exit_inspect"] = {
        Source = "exit_inspect",
        time = 66 / 60,
        LHIK = true,
        LHIKIn = 0,
        LHIKEaseOut = 0.3,
        LHIKOut = 0.84,
        SoundTable = {
            {s = rottle, t = 0.05},
            {s = common .. "movement-pistol-03.ogg", t = 0.1},
            {s = common .. "movement-pistol-01.ogg", t = 1},
            {s = rottle, t = 1},
        },
    },

    ["enter_inspect_empty"] = {
        Source = "enter_inspect_empty",
        time = 35 / 60,
        LHIK = true,
        LHIKIn = 0.1,
        LHIKOut = 0,
        SoundTable = {
            {s = rottle, t = 0},
            {s = common .. "movement-pistol-04.ogg", t = 0},
        },
    },
    ["idle_inspect_empty"] = {
        Source = "idle_inspect_empty",
        time = 72 / 60,
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 0,
    },
    ["exit_inspect_empty"] = {
        Source = "exit_inspect_empty",
        time = 66 / 60,
        LHIK = true,
        LHIKIn = 0,
        LHIKEaseOut = 0.3,
        LHIKOut = 0.84,
        SoundTable = {
            {s = rottle, t = 0.05},
            {s = common .. "movement-pistol-03.ogg", t = 0.1},
            {s = common .. "movement-pistol-01.ogg", t = 1},
            {s = rottle, t = 1},
        },
    },
    ["enter_inspect_jammed"] = {
        Source = "enter_inspect_jam",
        time = 35 / 60,
        LHIK = true,
        LHIKIn = 0.1,
        LHIKOut = 0,
        SoundTable = {
            {s = rottle, t = 0},
            {s = common .. "movement-pistol-04.ogg", t = 0},
        },
    },
    ["idle_inspect_jammed"] = {
        Source = "idle_inspect_jam",
        time = 72 / 60,
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 0,
    },
    ["exit_inspect_jammed"] = {
        Source = "exit_inspect_jam",
        time = 66 / 60,
        LHIK = true,
        LHIKIn = 0,
        LHIKEaseOut = 0.3,
        LHIKOut = 0.84,
        SoundTable = {
            {s = rottle, t = 0.05},
            {s = common .. "movement-pistol-03.ogg", t = 0.1},
            {s = common .. "movement-pistol-01.ogg", t = 1},
            {s = rottle, t = 1},
        },
    },
}

-- ADS animation blending, thanks fesiug -- 

SWEP.Hook_Think = ArcCW.UC.ADSReload


-- Attachments --

SWEP.Attachments = {
    {
        PrintName = "Optic",
        Slot = {"optic_lp"},
        DefaultAttName = "Iron Sights",
        Bone = "vm_pivot",
        Offset = {
            vpos = Vector(-0.01, -2.3, 1.6),
            vang = Angle(90, 0, -90),
        },
        InstalledEles = {"optic_rail"},
    },
    {
        PrintName = "Slide",
        Slot = {"ur_m1911_slide"},
        DefaultAttIcon = Material("entities/att/ur_1911/slide_std.png","mips smooth"),
        DefaultAttName = "5\" Government Slide",
    },
    {
        PrintName = "Caliber",
        Slot = {"ur_m1911_caliber"},
        DefaultAttIcon = Material("entities/att/uc_bullets/45acp.png","mips smooth"),
        DefaultAttName = ".45 ACP",
        Bone = "vm_pivot",
        Offset = {
            vpos = Vector(3.07, -3.8, -27),
            vang = Angle(90, 0, -90),
        },
        DefaultFlags = {"cal_subsonic"},
    },
    {
        PrintName = "Muzzle",
        DefaultAttName = "Standard Muzzle",
        Slot = {"muzzle"},
        Bone = "vm_barrel",
        Offset = {
            vpos = Vector(0.04, -4.7, .22),
            vang = Angle(0, 90, 0),
        },
        InstalledEles = {"nofh"},
        ExcludeFlags = {"barrel_annihilator"},
        VMScale = Vector(.8, .8, .8)
    },
    {
        PrintName = "Tactical",
        Slot = {"tac_pistol"},
        Bone = "vm_pivot",
        Offset = {
            vpos = Vector(0, 0, 4),
            vang = Angle(90, 0, -90),
        },
        InstalledEles = {"tac_rail"},
    },
    {
        PrintName = "Magazine",
        Slot = {"ur_m1911_mag"},
        DefaultAttIcon = Material("entities/att/ur_1911/mag7.png","mips smooth"),
        DefaultAttName = "7-Round Mag",
    },
    {
        PrintName = "Stock",
        Slot = {"uc_stock", "go_stock_pistol_bt"},
        VMScale = Vector(1, 1, 1),
        Bone = "vm_pivot",
        Offset = {
            vpos = Vector(0, 3, -3),
            vang = Angle(90, 0, -90),
        },
    },
    {
        PrintName = "Grip",
        DefaultAttName = "Factory Grip",
        DefaultAttIcon = Material("entities/att/ur_1911/grip.png","mips smooth"),
        Slot = "ur_m1911_grip"
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
        Slot = {"charm", "fml_charm"},
        FreeSlot = true,
        Bone = "vm_pivot",
        Offset = {
            vpos = Vector(0.35, -0.5, 3),
            vang = Angle(90, 0, -90),
        },
        VMScale = Vector(.75,.75,.75),
    },
    {
        PrintName = "Finish",
        Slot = {"ur_m1911_skin"},
        DefaultAttName = "Grey",
        DefaultAttIcon = Material("entities/att/ur_1911/skin.png","mips smooth"),
        FreeSlot = true,
    },
}
