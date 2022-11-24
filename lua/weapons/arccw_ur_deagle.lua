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
--SWEP.ShellMaterial = "models/weapons/arcticcw/shell_9mm"
SWEP.ShellPitch = 90
SWEP.UC_ShellColor = Color(0.7*255, 0.2*255, 0.2*255)

SWEP.MuzzleEffectAttachment = 1
SWEP.CaseEffectAttachment = 2
SWEP.TracerNum = 1
SWEP.TracerWidth = 1
SWEP.ShootPitch = 100

-- Fake name --

SWEP.PrintName = "Predator .50"

-- True name --

SWEP.TrueName = "Desert Eagle"

-- Trivia --

SWEP.Trivia_Class = "Pistol"
SWEP.Trivia_Desc = "Unorthodox pistol in both weight and design, marketed as an alternative to high-caliber revolvers. Its huge rounds, unrivaled in power for a handgun cartridge, can easily blast a human skull apart.\nDespite being one of the most famous weapons in action culture, it rarely sees practical use because of its massive, bulky frame and pointlessly large caliber.\n\nWe both know that won't stop you."
SWEP.Trivia_Manufacturer = "ISM"
SWEP.Trivia_Calibre = ".50 Action Express"
SWEP.Trivia_Mechanism = "Gas-Operated Rotating Bolt"
SWEP.Trivia_Country = "Israel"
SWEP.Trivia_Year = 1983

-- Weapon slot --

SWEP.Slot = 1

-- Weapon's manufacturer real name --

if GetConVar("arccw_truenames"):GetBool() then
    SWEP.PrintName = SWEP.TrueName
    SWEP.Trivia_Manufacturer = "Magnum Research"
end

-- Viewmodel / Worldmodel / FOV --

SWEP.ViewModel = "models/weapons/arccw/c_ud_deagle.mdl"
SWEP.WorldModel = "models/weapons/arccw/c_ud_deagle.mdl"
SWEP.ViewModelFOV = 60
SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_REVOLVER

-- Damage parameters --

SWEP.Damage = 80 -- 2 shot close range kill
SWEP.DamageMin = 12 -- 9 shot long range kill (big bullet falls off quickly)
SWEP.RangeMin = 10
SWEP.Range = 120 -- 2 shot until ~50m
SWEP.Penetration = 9
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

SWEP.ChamberSize = 1
SWEP.Primary.ClipSize = 7
SWEP.ExtendedClipSize = 14
SWEP.ReducedClipSize = 5

-- Recoil --

SWEP.Recoil = 3.95
SWEP.RecoilSide = 1

SWEP.RecoilRise = 0.5
SWEP.VisualRecoilMult = 1.5
SWEP.MaxRecoilBlowback = 2
SWEP.MaxRecoilPunch = 6

SWEP.Sway = 1.1

-- Firerate / Firemodes --

SWEP.Delay = 60 / 200
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

SWEP.NPCWeaponType = "weapon_357"
SWEP.NPCWeight = 70

-- Accuracy --

SWEP.AccuracyMOA = 5
SWEP.HipDispersion = 600
SWEP.MoveDispersion = 200
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
SWEP.ExtraSightDist = 10

-- Ironsights / Customization / Poses --

SWEP.HolsterPos = Vector(0.3, 3, 1)
SWEP.HolsterAng = Angle(-5, 15, -20)

SWEP.HoldtypeHolstered = "normal"
SWEP.HoldtypeActive = "revolver"
SWEP.HoldtypeSights = "revolver"

SWEP.IronSightStruct = {
     Pos = Vector(-2.529, 3, 1.305),
     Ang = Angle(0, 0, 0),
     Magnification = 1,
     SwitchToSound = "",
     ViewModelFOV = 55,
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
local rutle = {common .. "movement-smg-03.ogg",common .. "movement-smg-04.ogg"}

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
    [1] = "Bullet1",    [2] = "Bullet2",    [3] = "Bullet3", [4] = "Bullet4",    [5] = "Bullet5",    [6] = "Bullet6", [7] = "Bullet7"
}

SWEP.DefaultBodygroups = "000000000"

SWEP.AttachmentElements = {
    ["ur_deagle_barrel_modern"] = {
        VMBodygroups = {{ind = 1, bg = 1}},
    },
    ["ur_deagle_barrel_compact"] = {
        VMBodygroups = {{ind = 1, bg = 5}},
        AttPosMods = {
            [4] = {
                vpos = Vector(0, 0, .15),
                vang = Angle(90, 0, -90),
            },
        }
    },
    ["ur_deagle_barrel_compen"] = {
        VMBodygroups = {{ind = 1, bg = 4}},
    },
    ["ur_deagle_barrel_ext"] = {
        VMBodygroups = {{ind = 1, bg = 2}},
        AttPosMods = {
            [4] = {
                vpos = Vector(0, 0, 1.95),
                vang = Angle(90, 0, -90),
            },
        },
    },
    ["ur_deagle_barrel_marksman"] = {
        VMBodygroups = {{ind = 1, bg = 3}},

        AttPosMods = {
            [4] = {
                vpos = Vector(0, -0.05, 5.1),
                vang = Angle(90, 0, -90),
            },
        },
    },
    ["ur_deagle_barrel_annihilator"] = {
        VMBodygroups = {{ind = 1, bg = 6}},
        AttPosMods = {
            [4] = {
                vpos = Vector(0, -0.05, 1.25),
                vang = Angle(90, 0, -90),
            },
        },
    },

    ["ur_deagle_mag_ext"] = {
        VMBodygroups = {{ind = 2, bg = 1}}
    },

    ["ur_deagle_grip_wooden"] = {
        VMBodygroups = {{ind = 4, bg = 1}}
    },
    ["ur_deagle_grip_rubber"] = {
        VMBodygroups = {{ind = 4, bg = 2}}
    },

    ["tac_rail"] = {
        VMBodygroups = {{ind = 5, bg = 1}}
    },
    ["ur_deagle_caliber_44"] = {
        VMBodygroups = {{ind = 6, bg = 1}}
    },
    ["ur_deagle_caliber_357"] = {
        VMBodygroups = {{ind = 6, bg = 2}}
    },
    ["ur_deagle_caliber_410"] = {
        VMBodygroups = {{ind = 6, bg = 3}}
    },

    ["ur_deagle_skin_black"] = {
        VMSkin = 1,
    },
    ["ur_deagle_skin_gold"] = {
        VMSkin = 2,
    },
    ["ur_deagle_skin_chrome"] = {
        VMSkin = 3,
    },
    ["ur_deagle_skin_modern"] = {
        VMBodygroups = {{ind = 0, bg = 1}},
        VMSkin = 3,
    },
}

SWEP.Hook_ModifyBodygroups = function(wep,data)
    local vm = data.vm
    if !IsValid(vm) then return end
    local optic = wep.Attachments[1].Installed
    local tritium = (optic == "ur_deagle_tritium")
    local barrel = wep.Attachments[2].Installed or 0

    if tritium then
        -- Setup for when we introduce new barrel options
        if barrel == "ur_deagle_barrel_marksman" then
            vm:SetBodygroup(3,3)
        elseif barrel == "ur_deagle_barrel_ext" then
            vm:SetBodygroup(3,2)
        elseif barrel == "ur_deagle_barrel_compact" then
            vm:SetBodygroup(3,4)
        elseif barrel == "ur_deagle_barrel_annihilator" then
            vm:SetBodygroup(3,5)
        else
            vm:SetBodygroup(3,1)
        end
    -- elseif optic and barrel == 0 then
    --     vm:SetBodygroup(1,1)
    end

    if barrel == "ur_deagle_barrel_annihilator" then
        if vm:GetBodygroup(5) == 1 then
            vm:SetBodygroup(5,2)
        end
    end
end

SWEP.Hook_NameChange = function(wep, name)
    if wep.Attachments[2].Installed == "ur_deagle_barrel_annihilator" then
        return "Annihilator"
    elseif !GetConVar("arccw_truenames"):GetBool() then
        local add = ".50"
        local cal = wep.Attachments[3].Installed

        if cal == "ur_deagle_caliber_357" then
            add = ".357"
        elseif cal == "ur_deagle_caliber_44" then
            add = ".44"
        elseif cal == "ur_deagle_caliber_410" then
            add = ".410"
        end

        return "Predator " .. add
    else
        return "Desert Eagle"
    end
end

-- Animations --

SWEP.Animations = {
    ["idle_empty"] = {
        Source = "idle_empty",
        Time = 120 / 60,
    },
    ["idle_jammed"] = {  -- pistol-like malfucntions not implemented yet in arccw
        Source = "idle_jammed",
        Time = 120 / 60,
    },
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
            { s = path .. "slidepull.ogg", t = 12 / 60, c = ca },
            { s = path .. "chamber.ogg", t = 20 / 60, c = ca },
        },
    },
    ["draw"] = {
        Source = "draw",
        ProcDraw = true,
        SoundTable = {
            --{s = path .. "draw.ogg", t = 0}, -- Not Temporary
            {s = common .. "raise.ogg", t = 0.05},
        },
    },
    ["holster"] = {
        Source = "holster",
        ProcHolster = true,
        SoundTable = {
            {s = rottle, t = 0},
            --{s = path .. "holster.ogg", t = 0.2}, -- Not Temporary
        },
    },

    ["fire"] = {
        Source = {"fire_01", "fire_02", "fire_03"},
        Time = 0.9,
        ShellEjectAt = 0.05,
        SoundTable = {{ s = {path .. "mech-01.ogg", path .. "mech-02.ogg", path .. "mech-03.ogg", path .. "mech-04.ogg", path .. "mech-05.ogg", path .. "mech-06.ogg"}, t = 0, v = 0.25 }},
    },
    ["fire_iron"] = {
        Source = {"fire_01", "fire_02", "fire_03"},
        Time = 0.9,
        ShellEjectAt = 0.05,
        SoundTable = {{ s = {path .. "mech-01.ogg", path .. "mech-02.ogg", path .. "mech-03.ogg", path .. "mech-04.ogg", path .. "mech-05.ogg", path .. "mech-06.ogg"}, t = 0 }},
    },
    ["fire_jammed"] = {
        Source = "fire_jammed",
        SoundTable = {{ s = {path .. "mech-01.ogg", path .. "mech-02.ogg", path .. "mech-03.ogg", path .. "mech-04.ogg", path .. "mech-05.ogg", path .. "mech-06.ogg"}, t = 0 }},
    },
    ["fire_empty"] = {
        Source = "fire_empty",
        Time = 0.9,
        ShellEjectAt = 0.05,
        SoundTable = {{ s = path .. "mech_last.ogg", t = 0 }},
    },
    ["fire_iron_empty"] = {
        Source = "fire_empty",
        Time = 0.9,
        ShellEjectAt = 0.05,
        SoundTable = {{ s = path .. "mech_last.ogg", t = 0 }},
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

    -- 10-R Reloads --

    ["reload_10"] = {
        Source = "reload_exte",
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
            { s = common .. "magpouch.ogg", t = 30 / 60, c = ca },
            { s = rottle, t = 55 / 60, c = ca },
            { s = path .. "magin_miss.ogg", t = 64 / 60, c = ca },
            { s = path .. "magin_old.ogg", t = 71 / 60, c = ca },
        },
    },
    ["reload_empty_10"] = {
        Source = "reload_empty_exte",
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
            { s = common .. "magpouch.ogg", t = 26 / 60, c = ca },
            { s = common .. "pistol_magdrop.ogg", t = 40 / 60, c = ca },
            { s = rottle, t = 55 / 60, c = ca },
            { s = path .. "magin_miss.ogg", t = 60 / 60, c = ca },
            { s = path .. "magin_old.ogg", t = 66 / 60, c = ca },
            { s = path .. "chamber.ogg", t = 94 / 60, c = ca },
            { s = rottle, t = 75 / 60, c = ca },
        },
    },

    ["unjam"] = {
        Source = "unjam",
        Time = 0.9,
        -- ShellEjectAt = 0.65,
        SoundTable = {
            {s = rottle, t = 0},
            {s = path .. "unjam.ogg", t = .4}
        },
        LHIK = true,
        LHIKIn = .2,
        LHIKOut = .2,
        LHIKEaseOut = .75,
    },
    -- Inspecc --
                                    -- disabled due to suck balls
    ["enter_inspect"] = {
        Source = "enter_inspect",
        time = 35 / 60,
        LHIK = true,
        LHIKIn = 0.3,
        LHIKOut = 0,
        SoundTable = {
            {s = rottle, t = 0},
            {s = rutle, t = 0.1},
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
            { s = rottle, t = 0 / 60, c = ca },
            { s = common .. "magrelease.ogg", t = 7 / 60, c = ca },
            { s = path .. "magout.ogg", t = 8 / 60, c = ca },
            { s = rottle, t = 100 / 60, c = ca },
            { s = path .. "magin_miss.ogg", t = 106 / 60, c = ca },
            { s = path .. "magin_old.ogg", t = 114 / 60, c = ca },
            { s = path .. "rack1.ogg", t = 155 / 60, c = ca },
            { s = rottle, t = 160 / 60, c = ca },
            { s = path .. "rack2.ogg", t = 178 / 60, c = ca },
            { s = rottle, t = 180 / 60, c = ca },
        },
    },

    ["enter_inspect_empty"] = {
        Source = "enter_inspect_empty",
        time = 35 / 60,
        LHIK = true,
        LHIKIn = 0.1,
        LHIKOut = 0,
        SoundTable = {
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
            { s = rottle, t = 0 / 60, c = ca },
            { s = common .. "magrelease.ogg", t = 7 / 60, c = ca },
            { s = path .. "magout.ogg", t = 8 / 60, c = ca },
            { s = rottle, t = 100 / 60, c = ca },
            { s = path .. "magin_miss.ogg", t = 106 / 60, c = ca },
            { s = path .. "magin_old.ogg", t = 114 / 60, c = ca },
            { s = rottle, t = 160 / 60, c = ca },
        },
    },

    ["enter_inspect_jammed"] = {
        Source = "enter_inspect_jammed",
        time = 35 / 60,
        LHIK = true,
        LHIKIn = 0.1,
        LHIKOut = 0,
        SoundTable = {
        },
    },
    ["idle_inspect_jammed"] = {
        Source = "idle_inspect_jammed",
        time = 72 / 60,
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 0,
    },
    ["exit_inspect_jammed"] = {
        Source = "exit_inspect_jammed",
        time = 66 / 60,
        LHIK = true,
        LHIKIn = 0,
        LHIKEaseOut = 0.3,
        LHIKOut = 0.84,
        SoundTable = {
            { s = rottle, t = 0 / 60, c = ca },
            { s = common .. "magrelease.ogg", t = 7 / 60, c = ca },
            { s = path .. "magout.ogg", t = 8 / 60, c = ca },
            { s = rottle, t = 100 / 60, c = ca },
            { s = path .. "magin_miss.ogg", t = 106 / 60, c = ca },
            { s = path .. "magin_old.ogg", t = 114 / 60, c = ca },
            { s = rottle, t = 160 / 60, c = ca },
        },
    },
}

-- ADS animation blending, thanks fesiug --

SWEP.Hook_Think = ArcCW.UC.ADSReload


-- Attachments --

SWEP.CamAttachment = 3

SWEP.Attachments = {
    {
        PrintName = "Optic",
        Slot = {"optic_lp","ur_deagle_tritium","optic"},
        DefaultAttName = "Iron Sights",
        Bone = "Body",
        Offset = {
            vpos = Vector(0, -5.3, 7),
            vang = Angle(90, 0, -90),
        },
    },
    {
        PrintName = "Barrel",
        Slot = {"ur_deagle_barrel"},
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
        Slot = {"ur_deagle_caliber"},
        DefaultAttIcon = Material("entities/att/uc_bullets/50ae.png","mips smooth"),
        DefaultAttName = ".50 Action Express",
        Bone = "Body",
        Offset = {
            vpos = Vector(3.07, -3.8, -27),
            vang = Angle(90, 0, -90),
        },
    },
    -- {
    --     PrintName = "Muzzle",
    --     DefaultAttName = "Standard Muzzle",
    --     Slot = {"muzzle"},
    --     Bone = "Barrel",
    --     Offset = {
    --         vpos = Vector(0, 0, 0.75),
    --         vang = Angle(90, 0, -90),
    --     },
    --     InstalledEles = {"nofh"},
    --     ExcludeFlags = {"barrel_annihilator"},
    -- },
    {
        PrintName = "Tactical",
        InstalledEles = {"tac_rail"},
        Slot = {"tac_pistol"},
        Bone = "Body",
        Offset = {
            vpos = Vector(0, -3.5, 7),
            vang = Angle(90, 0, -90),
        },
        MergeSlots = {14},
    },
    {
        PrintName = "Magazine",
        Slot = {"ur_deagle_mag"},
        DefaultAttIcon = Material("entities/att/acwatt_ur_deagle_mag_7.png","mips smooth"),
        DefaultAttName = "7-Round Mag",
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
        Slot = "ur_deagle_grip"
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
            vpos = Vector(0.65, -4.1, 7.5),
            vang = Angle(90, 0, -90),
        },
        VMScale = Vector(.75,.75,.75),
    },
    {
        PrintName = "Finish",
        Slot = {"ur_deagle_skin"},
        DefaultAttName = "Stainless Steel",
        DefaultAttIcon = Material("entities/att/acwatt_ur_deagle_finish_default.png","mips smooth"),
        FreeSlot = true,
    },
    {
        PrintName = "M203 slot",
        Slot = "uc_ubgl",
        Bone = "Body",
        Offset = {
            vpos = Vector(0, -4.8, 6.5),
            vang = Angle(90, 0, -90),
        },
        Hidden = true,
    }
}