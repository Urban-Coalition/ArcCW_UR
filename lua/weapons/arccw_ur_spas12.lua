SWEP.Base = "arccw_base"
SWEP.Spawnable = true
SWEP.Category = "ArcCW - Urban Coalition"
SWEP.UC_CategoryPack = "2Urban Renewal"
SWEP.AdminOnly = false
SWEP.UseHands = true

-- Muzzle and shell effects --

SWEP.MuzzleEffect = "muzzleflash_shotgun"
SWEP.ShellEffect = "arccw_uc_shelleffect"
SWEP.ShellModel = "models/weapons/arccw/uc_shells/12g.mdl"
SWEP.ShellPitch = 100
SWEP.ShellSounds = ArcCW.ShotgunShellSoundsTable
SWEP.ShellScale = 0.5
SWEP.UC_ShellColor = Color(0.7 * 255, 0.2 * 255, 0.2 * 255)

SWEP.MuzzleEffectAttachment = 1
SWEP.CaseEffectAttachment = 2
SWEP.CamAttachment = 3

-- Fake name --

SWEP.PrintName = "Martello 12/70" -- Italian for "hammer"

-- True name --

SWEP.TrueName = "SPAS-12"

-- Trivia --

SWEP.Trivia_Class = "Shotgun"
SWEP.Trivia_Desc = [[Flexible combat shotgun with the ability to toggle between manual and semi-automatic action. This "dual-mode operation" allows the weapon to cycle low pressure, less-lethal rounds that lack the energy to extract themselves.
The weapon's attempts to reach the American civilian market may have been slowed by legal challenges, but it remains prominent in popular culture for its intimidating and tactical appearance.

Highly versatile, but encumbering to carry and difficult to reload. Switch to pump-action mode to tighten spread and conserve ammo.]]
SWEP.Trivia_Manufacturer = "Iscapelli Armaments"
SWEP.Trivia_Calibre = "12 Gauge"
SWEP.Trivia_Mechanism = "Hybrid"
SWEP.Trivia_Country = "Italy"
SWEP.Trivia_Year = 1979

-- Weapon slot --

SWEP.Slot = 3

-- Weapon's manufacturer real name --

if GetConVar("arccw_truenames"):GetBool() then
    SWEP.PrintName = SWEP.TrueName
    SWEP.Trivia_Manufacturer = "Luigi Franchi SpA"
end

-- Viewmodel / Worldmodel / FOV --

SWEP.ViewModel = "models/weapons/arccw/c_ur_spas12.mdl"
SWEP.WorldModel = "models/weapons/arccw/c_ur_spas12.mdl"
SWEP.ViewModelFOV = 60
SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_SHOTGUN

SWEP.MirrorVMWM = true
SWEP.WorldModelOffset = {
    pos        =    Vector(-5.8, 5, -4.5),
    ang        =    Angle(-12, 0, 180),
    bone    =    "ValveBiped.Bip01_R_Hand",
    scale = 1
}

-- Damage parameters --

SWEP.Damage = 18 -- 6 pellets to kill
SWEP.DamageMin = 10 -- 10 pellets to kill
SWEP.Range = 40
SWEP.RangeMin = 6
SWEP.Num = 8
SWEP.Penetration = 2
SWEP.DamageType = DMG_BUCKSHOT
SWEP.ShootEntity = nil
SWEP.MuzzleVelocity = 365
SWEP.PhysBulletMuzzleVelocity = 365

SWEP.HullSize = 0.25

SWEP.BodyDamageMults = ArcCW.UC.BodyDamageMults_Shotgun

-- Mag size --

SWEP.ChamberSize = 1
SWEP.Primary.ClipSize = 8
SWEP.ChamberLoadEmpty = 1

-- Recoil --

SWEP.Recoil = 2.5
SWEP.RecoilSide = 2

SWEP.RecoilRise = 0.24
SWEP.VisualRecoilMult = 1
SWEP.MaxRecoilBlowback = 1
SWEP.MaxRecoilPunch = 1

SWEP.Sway = 0.5

-- Firerate / Firemodes --

SWEP.Delay = 60 / 220
SWEP.Firemodes = {
    {
        Mode = 1,
    },
    {
        Mode = 1,
        PrintName = "fcg.pump",
        Override_ManualAction = true,
        Mult_AccuracyMOA = 0.8,
        Mult_HipDispersion = 0.8,
    },
    {
        Mode = 0
    }
}

SWEP.UC_CanManualAction = true
SWEP.ShotgunReload = true
SWEP.NoLastCycle = true

SWEP.ShootVol = 160
SWEP.ShootPitch = 100

SWEP.ProceduralRegularFire = false
SWEP.ProceduralIronFire = false

SWEP.ReloadInSights = true

-- NPC --

SWEP.NPCWeaponType = "weapon_shotgun"
SWEP.NPCWeight = 210

-- Accuracy --

SWEP.AccuracyMOA = 25
SWEP.HipDispersion = 400
SWEP.MoveDispersion = 125
SWEP.JumpDispersion = 1000

SWEP.Primary.Ammo = "buckshot"

-- Speed multipliers --

SWEP.SpeedMult = 0.88
SWEP.SightedSpeedMult = 0.5
SWEP.SightTime = 0.4
SWEP.ShootSpeedMult = 0.75

-- Length --

SWEP.BarrelLength = 46
SWEP.ExtraSightDist = 2

-- Ironsights / Customization / Poses --

SWEP.HoldtypeHolstered = "passive"
SWEP.HoldtypeActive = "ar2"
SWEP.HoldtypeSights = "rpg"

SWEP.IronSightStruct = {
     Pos = Vector(-3.835, -4, 1.55),
     Ang = Angle(0.2, 0, 1),
     Magnification = 1.05,
     SwitchToSound = "",
}

SWEP.SprintPos = Vector(-0.5, -4, -3)
SWEP.SprintAng = Angle(3.5, 7, -20)

SWEP.HolsterPos = Vector(2.5, -1, -3)
SWEP.HolsterAng = Angle(-3.5, 20, -20)

SWEP.ActivePos = Vector(0, 0.5, 1)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.CrouchPos = Vector(-4, -2, 0)
SWEP.CrouchAng = Angle(0, 0, -30)

SWEP.CustomizePos = Vector(0, 0, 0)
SWEP.CustomizeAng = Angle(0, 0, 0)

SWEP.BarrelOffsetSighted = Vector(0, 0, -1)
SWEP.BarrelOffsetHip = Vector(3, 0, -4.5)

-- Firing sounds --

local path1 = ")weapons/arccw_ud/870/"
local path = ")weapons/arccw_ur/spas12/"
local common = ")/arccw_uc/common/"
SWEP.ShootSoundSilenced = path .. "fire_supp.ogg"
--[[SWEP.DistantShootSound = {path .. "fire-dist-01.ogg", path .. "fire-dist-02.ogg", path .. "fire-dist-03.ogg", path .. "fire-dist-04.ogg", path .. "fire-dist-05.ogg"}
SWEP.DistantShootSoundSilenced = common .. "sup_tail.ogg"]]
SWEP.ShootDrySound = common .. "manual_trigger.ogg"

local tail = ")/arccw_uc/common/12ga/"

SWEP.ShootSound = {
    path .. "fire-01.ogg",
    path .. "fire-02.ogg",
    path .. "fire-03.ogg",
    path .. "fire-04.ogg",
    path .. "fire-05.ogg",
    path .. "fire-06.ogg"
}
SWEP.DistantShootSoundOutdoors = {
    path .. "fire-dist-01.ogg",
    path .. "fire-dist-02.ogg",
    path .. "fire-dist-03.ogg",
    path .. "fire-dist-04.ogg",
    path .. "fire-dist-05.ogg",
}
SWEP.DistantShootSoundIndoors = {
    tail .. "fire-dist-12ga-pasg-int-01.ogg",
    tail .. "fire-dist-12ga-pasg-int-02.ogg",
    tail .. "fire-dist-12ga-pasg-int-03.ogg",
    tail .. "fire-dist-12ga-pasg-int-04.ogg",
    tail .. "fire-dist-12ga-pasg-int-05.ogg",
    tail .. "fire-dist-12ga-pasg-int-06.ogg"
}

SWEP.ShootSoundSilenced = {
    tail .. "fire-sup-01.ogg",
    tail .. "fire-sup-02.ogg",
    tail .. "fire-sup-03.ogg",
    tail .. "fire-sup-04.ogg",
    tail .. "fire-sup-05.ogg",
    tail .. "fire-sup-06.ogg"
}
SWEP.DistantShootSoundOutdoors = {
    tail .. "fire-dist-12ga-pasg-ext-01.ogg",
    tail .. "fire-dist-12ga-pasg-ext-02.ogg",
    tail .. "fire-dist-12ga-pasg-ext-03.ogg",
    tail .. "fire-dist-12ga-pasg-ext-04.ogg",
    tail .. "fire-dist-12ga-pasg-ext-05.ogg",
    tail .. "fire-dist-12ga-pasg-ext-06.ogg"
}
SWEP.DistantShootSoundOutdoorsSilenced = {
    common .. "sup-tail-01.ogg",
    common .. "sup-tail-02.ogg",
    common .. "sup-tail-03.ogg",
    common .. "sup-tail-04.ogg",
    common .. "sup-tail-05.ogg",
    common .. "sup-tail-06.ogg",
    common .. "sup-tail-07.ogg",
    common .. "sup-tail-08.ogg",
    common .. "sup-tail-09.ogg",
    common .. "sup-tail-10.ogg"
}
SWEP.DistantShootSoundIndoorsSilenced = {
    common .. "fire-dist-int-pistol-light-01.ogg",
    common .. "fire-dist-int-pistol-light-02.ogg",
    common .. "fire-dist-int-pistol-light-03.ogg",
    common .. "fire-dist-int-pistol-light-04.ogg",
    common .. "fire-dist-int-pistol-light-05.ogg",
    common .. "fire-dist-int-pistol-light-06.ogg"
}
SWEP.DistantShootSoundOutdoorsVolume = 1
SWEP.DistantShootSoundIndoorsVolume = 1
SWEP.Hook_AddShootSound = ArcCW.UC.InnyOuty

-- Animations --

SWEP.Hook_Think = ArcCW.UC.ADSReload

SWEP.Hook_TranslateAnimation = function(wep,anim)
    if wep:GetCurrentFiremode().Override_ManualAction and anim == "idle_empty" then
        return "idle_empty_manual"
    end
end

SWEP.Hook_SelectFireAnimation = function(wep,data)
    if wep:GetCurrentFiremode().Override_AmmoPerShot == 2 then
        return "fire_2bst"
    elseif wep:GetCurrentFiremode().Override_ManualAction then
        return "fire_manual"
    end
end
SWEP.Hook_SelectReloadAnimation = function(wep,curanim)
    local pump_rng = math.Truncate(util.SharedRandom("ik hou van u", 1,100)) -- nombre aleatoire, d'un a cent

    if wep:GetCurrentFiremode().Override_ManualAction and pump_rng >= 50 and curanim == "sgreload_start_empty" then -- lol? how does else work again?
        return "sgreload_start_empty_manual"
	end
	if wep:GetCurrentFiremode().Override_ManualAction and pump_rng < 50 and curanim == "sgreload_start_empty" then
		return "sgreload_start_empty_manual_alt" 
    end
end

local ratel = {common .. "rattle1.ogg", common .. "rattle2.ogg", common .. "rattle3.ogg"}
local rottle = {common .. "cloth_2.ogg", common .. "cloth_3.ogg", common .. "cloth_4.ogg", common .. "cloth_6.ogg", common .. "rattle.ogg"}
local rutle = {common .. "movement-shotgun-01.ogg",common .. "movement-shotgun-02.ogg",common .. "movement-shotgun-03.ogg",common .. "movement-shotgun-04.ogg"}
local shellin = {path .. "shell-insert-01.ogg", path .. "shell-insert-02.ogg", path .. "shell-insert-03.ogg", path .. "shell-insert-04.ogg", path .. "shell-insert-05.ogg", path .. "shell-insert-06.ogg", path .. "shell-insert-07.ogg", path .. "shell-insert-08.ogg", path .. "shell-insert-09.ogg", path .. "shell-insert-10.ogg", path .. "shell-insert-11.ogg", path .. "shell-insert-12.ogg"}

SWEP.Animations = {
    ["idle"] = {
        Source = "idle",
    },
    ["idle_empty"] = {
        Source = "idle_empty_semi",
    },
    ["idle_empty_manual"] = {
        Source = "idle_empty",
    },
    ["draw"] = {
        Source = "draw",
        --Time = 20 / 30,
        SoundTable = ArcCW.UC.DrawSounds,
    },  
    ["ready"] = {
        Source = "deploy",
        SoundTable = {
            ArcCW.UC.DrawSounds,
            {s = path .. "forearm_back.ogg", t = 8/30},
            {s = path .. "forearm_forward.ogg", t = 15/30}, -- Not temporary
        },
    },
    ["draw_empty"] = {
        Source = "draw", -- draw_empty
        --Time = 20 / 30,
        SoundTable = ArcCW.UC.DrawSounds,
    },
    ["holster"] = {
        Source = {"holster","holster2"},
        --Time = 20 / 30,
        SoundTable = ArcCW.UC.HolsterSounds,
    },
    ["holster_empty"] = {
        Source = {"holster","holster2"}, -- holster_empty
        --Time = 20 / 30,
        SoundTable = ArcCW.UC.HolsterSounds,
    },
    ["fire"] = {
        Source = "fire_semi",
        ShellEjectAt = 0.01,
        SoundTable = {
            { s = {path .. "mech-01.ogg", path .. "mech-02.ogg", path .. "mech-03.ogg", path .. "mech-04.ogg", path .. "mech-05.ogg", path .. "mech-06.ogg"}, t = 0, v = 0.25 },
            {s = path1 .. "eject.ogg", t = 0.01},
        },
    },
    ["fire_iron"] = {
        Source = "fire_semi",
        ShellEjectAt = 0.01,
        SoundTable = {
            {s = common .. "common_mech_heavy.ogg", t = 0},
            { s = {path .. "mech-01.ogg", path .. "mech-02.ogg", path .. "mech-03.ogg", path .. "mech-04.ogg", path .. "mech-05.ogg", path .. "mech-06.ogg"}, t = 0 },
            {s = path1 .. "eject.ogg", t = 0.01},
        },
    },
    ["fire_2bst"] = {
        Source = "fire_freeman",
        LHIK = true,
        LHIKIn = 0.05,
        LHIKEaseOut = 0.175,
        LHIKOut = 0.65,
        ShellEjectAt = 0.01,
        SoundTable = {
            { s = {path .. "mech-01.ogg", path .. "mech-02.ogg", path .. "mech-03.ogg", path .. "mech-04.ogg", path .. "mech-05.ogg", path .. "mech-06.ogg"}, t = 0 },
            {s = common .. "common_mech_heavy.ogg", t = 0},
            {s = path1 .. "eject.ogg", t = 0.01},
        },
        MinProgress = 0.175
    },
    ["fire_manual"] = { -- No bolt cycling
        Source = "fire_pump",
        MinProgress = 0.1,
        ShellEjectAt = false,
        SoundTable = {
            { s = common .. "manual_trigger.ogg", t = 0},
            {s = common .. "common_mech_heavy.ogg", t = 0},
        },
    },
    ["cycle"] = {
        Source = {"cycle", "cycle2"},
        ShellEjectAt = 0.1,
        MinProgress = 0.4,
        Time = 25 / 30,
        SoundTable = {
            {s = path .. "forearm_back.ogg", t = 0},
            {s = path1 .. "eject.ogg", t = 0.1},
            {s = path .. "forearm_forward.ogg", t = 0.2}, -- Not temporary
        },
    }, 
	["cycle_2bst"] = {
        Source = {"cycle_freeman", "cycle_freeman2"},
        ShellEjectAt = 0.42,
        MinProgress = 0.8,
        --Time = 25 / 30,
        SoundTable = {
            {s = path .. "forearm_back_2bst.ogg", t = 0.3},
            {s = path1 .. "eject.ogg", t = 0.37},
            {s = path .. "forearm_forward_2bst.ogg", t = 0.5}, -- Not temporary
        },
    },
    ["unjam"] = {
        Source = "cycle",
        ShellEjectAt = 0.01,
        MinProgress = .25,
        SoundTable = {
            {s = path .. "forearm_back.ogg", t = 0},
            {s = path1 .. "eject.ogg", t = 0.1},
            {s = path .. "forearm_forward.ogg", t = 0.2}, -- Not temporary
        },
    },
    ["fire_empty"] = {
        Source = "fire_empty_semi", -- fire_empty
        ShellEjectAt = 0.01,
        SoundTable = {
            {s = path1 .. "eject.ogg", t = 0}, -- Not temporary
        },
    },
    ["fire_iron_empty"] = {
        Source = "fire_empty_semi", -- fire_empty
        ShellEjectAt = 0.01,
        SoundTable = {
            {s = path1 .. "eject.ogg", t = 0}, -- Not temporary
        },
    },
    ["sgreload_start"] = {
		Source = "sgreload_start",
		TPAnim = ACT_HL2MP_GESTURE_RELOAD_SHOTGUN,
		RestoreAmmo = 1,
		LHIK = true,
		LHIKIn = 0.2,
		LHIKEaseIn = 0.2,
		LHIKOut = 0,
		SoundTable = {
            {s = path .. "turn.ogg",  t = 0}, -- Temporary
            {s = rottle,  t = 0.1},
            {s = path .. "grab.ogg",  t = 0.15},
            {s = shellin,  t = 31/30},
            {s = {common .. "cloth_2.ogg", common .. "cloth_3.ogg", common .. "cloth_4.ogg", common .. "cloth_6.ogg", common .. "rattle.ogg"}, t = (31/30 + 0.05), v = 0.5},
        }
    },
    ["sgreload_start_fold"] = {
        Source = "sgreload_start_fold",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_SHOTGUN,
        LHIK = true,
        LHIKIn = 0.2,
        LHIKEaseIn = 0.2,
        LHIKOut = 0,
        SoundTable = {
            {s = path .. "turn.ogg",  t = 0}, -- Temporary
            {s = rottle,  t = 0.1},
            {s = path .. "grab.ogg",  t = 0.15},
        }
    },
    ["sgreload_start_empty"] = {
        Source = "sgreload_start_empty_semi",
        -- MinProgress = 1,
        LHIK = true,
        LHIKIn = 0.2,
        LHIKOut = 0,
        TPAnimStartTime = 0.5,
        ShellEjectAt = false,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_SHOTGUN,
        SoundTable = {
            {s = rottle, t = 0},
            {s = path .. "breechload.ogg",  t = .2},
            {s = path .. "breechclose.ogg",  t = 0.9}, -- Temporary
            {s = path .. "turn.ogg",  t = 1.0}, -- Temporary
            {s = rottle,  t = 1.2},
            {s = path .. "grab.ogg",  t = 1.4},
        },
        ForceEmpty = true,
    },
    ["sgreload_start_empty_fold"] = {
        Source = "sgreload_start_empty_semi_fold",
        -- MinProgress = 1,
        LHIK = true,
        LHIKIn = 0.2,
        LHIKOut = 0,
        TPAnimStartTime = 0.5,
        ShellEjectAt = false,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_SHOTGUN,
        SoundTable = {
            {s = rottle, t = 0},
            {s = path .. "breechload.ogg",  t = .2},
            {s = path .. "breechclose.ogg",  t = 0.9}, -- Temporary
            {s = path .. "turn.ogg",  t = 1.0}, -- Temporary
            {s = rottle,  t = 1.2},
            {s = path .. "grab.ogg",  t = 1.4},
        },
        ForceEmpty = true,
    },
    ["sgreload_start_empty_manual"] = {
        Source = "sgreload_start_empty",
        MinProgress = 1,
        LHIK = true,
        LHIKIn = 1.7,
        LHIKEaseIn = 0.2,
        LHIKOut = 0,
        TPAnimStartTime = 0.5,
        ShellEjectAt = 15/30,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_SHOTGUN,
        SoundTable = {
            {s = path .. "forearm_back.ogg", t = 10/30},
            {s = path1 .. "eject.ogg", t = 11/30},
            {s = path .. "breechload.ogg",  t = 15/30},
            {s = path .. "forearm_forward.ogg", t = 33/30}, -- Not temporary
            {s = rottle, t = 0.2},
            {s = path .. "turn.ogg",  t = 1.1}, -- Temporary
            {s = rottle,  t = 1.2},
            {s = path .. "grab.ogg",  t = 1.5},
        },
        ForceEmpty = true,
    },  
	["sgreload_start_empty_manual_alt"] = {
        Source = "sgreload_start_empty_alt",
        MinProgress = 1,
        LHIK = true,
        LHIKIn = 1.6,
        LHIKEaseIn = 0.2,
        LHIKOut = 0,
        TPAnimStartTime = 0.5,
        ShellEjectAt = .1,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_SHOTGUN,
        SoundTable = {
            {s = path .. "forearm_back.ogg", t = 16/30},
            {s = path1 .. "eject.ogg", t = 18/30},
            {s = path .. "breechload.ogg",  t = 15/30},
            {s = path .. "forearm_forward.ogg", t = 33/30}, -- Not temporary
            {s = rottle, t = 0.2},
            {s = path .. "turn.ogg",  t = 1.1}, -- Temporary
            {s = rottle,  t = 1.2},
            {s = path .. "grab.ogg",  t = 1.4},
        },
        ForceEmpty = true,
    },
    ["sgreload_start_empty_manual_fold"] = {
        Source = "sgreload_start_empty_fold",
        Time = 85 / 30,
        MinProgress = 1,
        LHIK = true,
        LHIKIn = 0.2,
        LHIKOut = 0,
        TPAnimStartTime = 0.5,
        ShellEjectAt = .1,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_SHOTGUN,
        SoundTable = {
            {s = path .. "forearm_back.ogg", t = 10/30},
            {s = path1 .. "eject.ogg", t = 11/30},
            {s = path .. "breechload.ogg",  t = 15/30},
            {s = path .. "forearm_forward.ogg", t = 33/30}, -- Not temporary
            {s = rottle, t = 0.2},
            {s = path .. "turn.ogg",  t = 1.1}, -- Temporary
            {s = rottle,  t = 1.2},
            {s = path .. "grab.ogg",  t = 1.5},
        },
        ForceEmpty = true,
    },
    ["sgreload_insert"] = {
        Source = "sgreload_insert",
        MinProgress = 0.24,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_SHOTGUN,
        TPAnimStartTime = 0.3,
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 0,
        SoundTable = {
            {s = shellin,  t = 0},
            {s = {common .. "cloth_2.ogg", common .. "cloth_3.ogg", common .. "cloth_4.ogg", common .. "cloth_6.ogg", common .. "rattle.ogg"}, t = 0.05, v = 0.5},
        },
    },
    ["sgreload_insert_fold"] = {
        Source = "sgreload_insert_fold",
        Time = 18 / 30,
        MinProgress = 0.24,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_SHOTGUN,
        TPAnimStartTime = 0.3,
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 0,
        SoundTable = {
            {s = shellin,  t = 0},
            {s = {common .. "cloth_2.ogg", common .. "cloth_3.ogg", common .. "cloth_4.ogg", common .. "cloth_6.ogg", common .. "rattle.ogg"}, t = 0.05},
        },
    },
    ["sgreload_finish"] = {
        Source = "sgreload_finish",
        LHIK = true,
        LHIKIn = 0,
        LHIKEaseOut = 0.3,
        LHIKOut = 0.6,
        MinProgress = 0.7,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_SHOTGUN,
        TPAnimStartTime = 0.8,
        SoundTable = {
            {s = rottle,  t = 0.2},
            {s = path .. "return.ogg",  t = 0.475}, -- Temporary
            {s = common .. "shoulder.ogg",  t = 0.55},
        },
    },
    ["sgreload_finish_fold"] = {
        Source = "sgreload_finish_fold",
        Time = 45 / 30,
        LHIK = true,
        LHIKIn = 0,
        LHIKEaseOut = 0.3,
        LHIKOut = 0.6,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_SHOTGUN,
        TPAnimStartTime = 0.8,
        SoundTable = {
            {s = rottle,  t = 0.2},
            {s = path .. "return.ogg",  t = 0.475}, -- Temporary
            {s = common .. "shoulder.ogg",  t = 0.55},
        },
    },

    ["enter_inspect"] = {
        Source = "inspect_enter",
        -- time = 35 / 60,
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 2.5,
        SoundTable = {
            {s = rottle, t = 0},
            {s = common .. "movement-shotgun-01.ogg", t = 0.1},
        },
    },
    ["idle_inspect"] = {
        Source = "inspect_loop",
        -- time = 72 / 60,
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 999, -- maybe im dumb
    },
    ["exit_inspect"] = {
        Source = "inspect_exit",
        -- time = 66 / 60,
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 999, -- maybe im dumb
        SoundTable = {
            {s = common .. "movement-shotgun-02.ogg", t = 0.3},
            {s = rottle, t = 0.18},
            {s = rottle, t = 1.0},
            {s = common .. "movement-shotgun-03.ogg", t = 1.3},
            {s = path .. "presscheck1.ogg", t = 1.6},
            {s = path .. "presscheck2.ogg", t = 2.1},
            {s = rottle, t = 2.2},
            {s = common .. "movement-shotgun-04.ogg", t = 2.25},
        },
    },
    ["enter_inspect_empty"] = { -- Animations needed!
        Source = "inspect_enter",
        -- time = 35 / 60,
        LHIK = false,
        LHIKIn = 0,
        LHIKOut = 2.5,
        SoundTable = {
            {s = rottle, t = 0},
            {s = common .. "movement-shotgun-01.ogg", t = 0.1},
        },
    },
    ["idle_inspect_empty"] = {
        Source = "inspect_loop",
        -- time = 72 / 60,
        LHIK = false,
        LHIKIn = 0,
        LHIKOut = 999, -- maybe im dumb
    },
    ["exit_inspect_empty"] = {
        Source = "inspect_exit_empty",
        -- time = 66 / 60,
        LHIK = false,
        LHIKIn = 0,
        LHIKOut = 999, -- maybe im dumb
        SoundTable = {
            {s = common .. "movement-shotgun-02.ogg", t = 0.3},
            {s = rottle, t = 0.18},
            {s = rottle, t = 1.0},
            {s = common .. "movement-shotgun-03.ogg", t = 1.3},
            {s = rottle, t = 2.2},
            {s = common .. "movement-shotgun-04.ogg", t = 2.25},
        },
    },
}

SWEP.BulletBones = {
    --[1] = "1014_shell1",
}

-- Bodygroups --

SWEP.AttachmentElements = {
    ["uc_manualonly"] = {
        Override_Firemodes = {
            {
                Mode = 1,
                PrintName = "fcg.pump",
                Override_ManualAction = true,
                Mult_AccuracyMOA = 0.8,
                Mult_HipDispersion = 0.8,
            },
            {
                Mode = 0,
            },
        },
        Override_Firemodes_Priority = 10,
    },
    ["uc_spas_slam"] = {
        RequireFlags = {"freeman", "needsmanual"},
        Override_Firemodes = {
            {
                Mode = 2,
                PrintName = "fcg.slam",
                Override_ManualAction = true,
                Mult_AccuracyMOA = 0.8,
                Mult_HipDispersion = 0.8,
            },
            {
                Mode = 0,
            },
        },
        Override_Firemodes_Priority = 15,
    },
    ["ur_spas12_barrel_short"] = {
        VMBodygroups = {{ind = 1, bg = 1}},
        AttPosMods = {[3] = {
            vpos = Vector(0, 19, 0.4),
        }}
    },

    ["ur_spas12_stock_full"] = {
        VMBodygroups = {
            {ind = 3, bg = 1},
        }
    },
    ["ur_spas12_stock_in"] = {
        VMBodygroups = {{ind = 3, bg = 2}}
    },
    ["ur_spas12_stock_none"] = {
        VMBodygroups = {{ind = 3, bg = 3}}
    },

    ["ur_spas12_tube_reduced"] = {
        VMBodygroups = {{ind = 2, bg = 1}}
    },

    ["rail_classic"] = {
        VMBodygroups = {{ind = 4, bg = 2}}
    }, 
	["rail_pump"] = {
        VMBodygroups = {{ind = 6, bg = 1}}
    },
    ["rail_modern"] = {
        VMBodygroups = {{ind = 4, bg = 1}},
        AttPosMods = {[1] = {
            SlideAmount = {
                vmin = Vector(0, -2.5, 1.8),
                vmax = Vector(0, 0, 1.8)
            },
        }}
    },
    ["rail_none_fix"] = {
        VMBodygroups = {{ind = 8, bg = 0}}
    },
}

SWEP.DefaultBodygroups = "0000010"

SWEP.Attachments = {
    {
        PrintName = "Optic",
        DefaultAttName = "Iron Sights",
        Slot = {"optic_lp", "optic"},
        Bone = "spas_parent",
        Offset = {
            vpos = Vector(0, -1, 1.6),
            vang = Angle(90, -90, -90),
        },
        CorrectiveAng = Angle(180,0,0),
        SlideAmount = {
            vmin = Vector(0, -4.5, 1.6),
            vmax = Vector(0, -1.5, 1.6)
        },
        InstalledEles = {"rail_classic"},
        DefaultEles = {"rail_none_fix"},
        ExcludeFlags = {"spas12_foldstock"}
    },
    {
        PrintName = "Barrel",
        DefaultAttName = "21.5\" Special Purpose Barrel", --16\" M4 Super 90 SBS Barrel
        DefaultAttIcon = Material("entities/att/ur_spas/barrel_std.png", "smooth mips"),
        Slot = "ur_spas12_barrel",
    },
    {
        PrintName = "Muzzle",
        DefaultAttName = "Standard Muzzle",
        Slot = {"choke", "muzzle_shotgun"},
        Bone = "spas_parent",
        Offset = {
            vpos = Vector(0, 23.5, 0.4),
            vang = Angle(90, -90, -90),
        },
        ExcludeFlags = {"nomuzzle"}
    },
	{
		PrintName = "Underbarrel",
		Slot = {"foregrip"},
		Bone = "pump",
		--MergeSlots = {13},
		Offset = {
			vpos = Vector(0, -5, -0.075),
			vang = Angle(90, -90, -90),
		},
        InstalledEles = {"rail_pump"},
	},
    {
        PrintName = "Tactical",
        Slot = {"tac_pistol"},
        Bone = "spas_parent",
        Offset = {
            vpos = Vector(0, 20, -2.3),
            vang = Angle(90, -90, -90),
        },
    },
    {
        PrintName = "Stock",
        Slot = {"ur_spas12_stock"},
        DefaultAttName = "Extended Stock",
        DefaultAttIcon = Material("entities/att/ur_spas/stock_std.png", "smooth mips"),
    },
    {
        PrintName = "Tube Type",
        Slot = {"ur_spas12_tube"},
        DefaultAttName = "8 Shell Tube",
        DefaultAttIcon = Material("entities/att/ur_spas/magbig.png", "smooth mips"),
    },
    {
        PrintName = "Ammo Type",
        DefaultAttName = "\"BUCK\" #00 Buckshot",
        DefaultAttIcon = Material("entities/att/arccw_uc_ammo_shotgun_generic.png", "mips smooth"),
        Slot = {"ud_ammo_shotgun"},
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
        Slot = {"charm", "fml_charm", "ur_spas12_charm"},
        FreeSlot = true,
        Bone = "spas_parent",
        Offset = {
            vpos = Vector(0.6, .5, -1.5),
            vang = Angle(90, -90, -90),
        },
    },
	{
		PrintName = "M203 slot",
		Slot = "uc_ubgl",
		Bone = "pump",
		Offset = {
			vpos = Vector(0, -5, 1.25),
			vang = Angle(90, -90, -90),
		},
		Hidden = true,
	},
}

local lookup_barrel = {
    default = 1,
    ur_spas12_comp = 1,
    ur_spas12_barrel_short = 0,
}

local lookup_tube = {
    default = 1,
    ur_spas12_tube_reduced = 0,
}

SWEP.Hook_ExtraFlags = function(wep, data)

    local barrel = wep.Attachments[2].Installed and lookup_barrel[wep.Attachments[2].Installed] or lookup_barrel["default"]
    local tube = wep.Attachments[7].Installed and lookup_tube[wep.Attachments[7].Installed] or lookup_tube["default"]

    if barrel < tube then
        table.insert(data, "nomuzzleblocking")
    end
end