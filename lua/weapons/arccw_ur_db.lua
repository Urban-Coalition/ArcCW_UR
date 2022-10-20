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
SWEP.ShellScale = 1
SWEP.UC_ShellColor = Color(0.7*255, 0.2*255, 0.2*255)

SWEP.MuzzleEffectAttachment = 1
SWEP.CaseEffectAttachment = 2
SWEP.CamAttachment = 3

-- Fake name --

SWEP.PrintName = "Volga SuperShotgun" -- it's marketed to Americans

-- True name --

SWEP.TrueName = "IZh-43"

-- Trivia --

SWEP.Trivia_Class = "Shotgun"
SWEP.Trivia_Desc = [[The design of double-barreled shotguns is so ubiquitous that they are usually referred to by weapon class instead of model name. These traditional shotguns are very popular in both rural and urban communities around the world for their simplicity.

Both barrels can be fired back-to-back in quick, deadly succession, but they must be reloaded frequently. Switch to the "2-BST" firemode to pull both triggers at once.]]
SWEP.Trivia_Manufacturer = "Sikov Machining Plant"
SWEP.Trivia_Calibre = "12 Gauge"
SWEP.Trivia_Mechanism = "Break Action"
SWEP.Trivia_Country = "Soviet Union"
SWEP.Trivia_Year = 1986

-- Weapon slot --

SWEP.Slot = 3

-- Weapon's manufacturer real name --

if GetConVar("arccw_truenames"):GetBool() then
    SWEP.PrintName = SWEP.TrueName
    SWEP.Trivia_Manufacturer = "Izhevsk Mechanical Plant"
end

-- Viewmodel / Worldmodel / FOV --

-- SWEP.ViewModel = "models/weapons/arccw/c_ur_spas12.mdl"
-- SWEP.WorldModel = "models/weapons/arccw/c_ur_spas12.mdl"
SWEP.ViewModelFOV = 60
SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_SHOTGUN

SWEP.MirrorVMWM = true
SWEP.WorldModelOffset = {
    pos        =    Vector(-5.8, 5, -5),
    ang        =    Angle(-10, 0, 180),
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
SWEP.MuzzleVelocity = 200

SWEP.HullSize = 0.25

SWEP.BodyDamageMults = ArcCW.UC.BodyDamageMults_Shotgun

-- Mag size --

SWEP.ChamberSize = 0
SWEP.Primary.ClipSize = 2
SWEP.RejectMagSizeChange = true -- Signals to attachments that mag size shouldn't be changeable; needs to be implemented attachment-side with att.Compatible

-- Recoil --

SWEP.Recoil = 2.75
SWEP.RecoilSide = 2

SWEP.RecoilRise = 0.24
SWEP.VisualRecoilMult = 1
SWEP.MaxRecoilBlowback = 1
SWEP.MaxRecoilPunch = 1

SWEP.Sway = 0.5

-- Firerate / Firemodes --

SWEP.Delay = 60 / 350
SWEP.Firemodes = {
    {
        Mode = 1,
    },
    {
        Mode = 1,
        PrintName = "ur.spas12.dbl",
        Mult_AccuracyMOA = 1.15,
        Mult_HipDispersion = 0.8,
        Mult_Num = 2,
        Override_AmmoPerShot = 2,
        Mult_Damage = 2,
        Mult_DamageMin = 2,
        Mult_Recoil = 1.5,

        -- Mode = -2,
        -- Mult_RPM = 3,
        -- RunawayBurst = true,

        CustomBars = "--___",
    },
    {
        PrintName = "fcg.safe2",
        Mode = 0,
    }
}

SWEP.UC_CanManualAction = true

SWEP.ShootVol = 160
SWEP.ShootPitch = 100

SWEP.ProceduralRegularFire = false
SWEP.ProceduralIronFire = false

SWEP.ReloadInSights = true

-- NPC --

SWEP.NPCWeaponType = "weapon_shotgun"
SWEP.NPCWeight = 210

-- Accuracy --

SWEP.AccuracyMOA = 28
SWEP.HipDispersion = 400
SWEP.MoveDispersion = 125
SWEP.JumpDispersion = 1000

SWEP.Primary.Ammo = "buckshot"

-- Speed multipliers --

SWEP.SpeedMult = 0.91
SWEP.SightedSpeedMult = 0.75
SWEP.SightTime = 0.475
SWEP.ShootSpeedMult = 0.75

-- Length --

SWEP.BarrelLength = 49
SWEP.ExtraSightDist = 2

-- Ironsights / Customization / Poses --

SWEP.HoldtypeHolstered = "passive"
SWEP.HoldtypeActive = "ar2"
SWEP.HoldtypeSights = "rpg"

SWEP.IronSightStruct = {
     Pos = Vector(-3.75, -4, 1.2),
     Ang = Angle(.345, .03, 1.5),
     Magnification = 1.05,
     SwitchToSound = "",
}

SWEP.SprintPos = Vector(-0.5, -4, -3)
SWEP.SprintAng = Angle(3.5, 7, -20)

SWEP.HolsterPos = Vector(2.5, -1, -3)
SWEP.HolsterAng = Angle(-3.5, 20, -20)

SWEP.ActivePos = Vector(0, -1, 0)
SWEP.ActiveAng = Angle(1, 1, -1)

SWEP.CrouchPos = Vector(-4, -2, 0)
SWEP.CrouchAng = Angle(0, 0, -30)

SWEP.CustomizePos = Vector(0, 0, 0)
SWEP.CustomizeAng = Angle(0, 0, 0)

SWEP.BarrelOffsetSighted = Vector(0, 0, -1)
SWEP.BarrelOffsetHip = Vector(3, 0, -4.5)

-- Firing sounds --

local path1 = ")^weapons/arccw_ud/870/"
local path = ")^weapons/arccw_ur/dbs/"
local common = ")^/arccw_uc/common/"
SWEP.ShootSoundSilenced = path .. "fire_supp.ogg"
--[[SWEP.DistantShootSound = {path .. "fire-dist-01.ogg", path .. "fire-dist-02.ogg", path .. "fire-dist-03.ogg", path .. "fire-dist-04.ogg", path .. "fire-dist-05.ogg"}
SWEP.DistantShootSoundSilenced = common .. "sup_tail.ogg"]]
SWEP.ShootDrySound = common .. "manual_trigger.ogg"

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
    path .. "fire-dist-06.ogg",
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
SWEP.DistantShootSoundIndoorsVolume = 1
SWEP.Hook_AddShootSound = function(wep,data)
    ArcCW.UC.InnyOuty(wep)

    if wep:GetCurrentFiremode().Override_AmmoPerShot == 2 then
        timer.Simple(.025,function()
            if IsValid(wep) then
                wep:EmitSound(wep.ShootSound[math.random(1,#wep.ShootSound)], data.volume * .5,data.pitch,1,CHAN_WEAPON - 1)
            end
        end)
    end
end

-- Animations --

SWEP.Hook_Think = ArcCW.UC.ADSReload

local ratel = {common .. "rattle1.ogg", common .. "rattle2.ogg", common .. "rattle3.ogg"}
local rottle = {common .. "cloth_2.ogg", common .. "cloth_3.ogg", common .. "cloth_4.ogg", common .. "cloth_6.ogg", common .. "rattle.ogg"}

SWEP.Animations = {
    ["idle"] = {
        Source = "idle",
    },
    ["draw"] = {
        Source = "draw",
        --Time = 20 / 30,
        SoundTable = ArcCW.UC.DrawSounds,
    },
    ["draw_empty"] = {
        Source = "draw", -- draw_empty
        --Time = 20 / 30,
        SoundTable = ArcCW.UC.DrawSounds,
    },
    ["holster"] = {
        Source = "holster",
        --Time = 20 / 30,
        SoundTable = ArcCW.UC.HolsterSounds,
    },
    ["holster_empty"] = {
        Source = "holster", -- holster_empty
        --Time = 20 / 30,
        SoundTable = ArcCW.UC.HolsterSounds,
    },
    ["fire"] = {
        Source = "fire_semi",
        Time = 23 / 25,--30,
        ShellEjectAt = 0.01,
        SoundTable = {{ s = {path .. "mech-01.ogg", path .. "mech-02.ogg", path .. "mech-03.ogg", path .. "mech-04.ogg", path .. "mech-05.ogg", path .. "mech-06.ogg"}, t = 0, v = 0.25 }},
    },
    ["fire_iron"] = {
        Source = "fire_semi",
        Time = 23 / 25,--30,
        ShellEjectAt = 0.01,
        SoundTable = {{ s = {path .. "mech-01.ogg", path .. "mech-02.ogg", path .. "mech-03.ogg", path .. "mech-04.ogg", path .. "mech-05.ogg", path .. "mech-06.ogg"}, t = 0 }},
    },
    ["fire_2bst"] = {
        Source = "fire_semi",
        Time = 35 / 25,--30,
        ShellEjectAt = 0.01,
        SoundTable = {{ s = {path .. "mech-01.ogg", path .. "mech-02.ogg", path .. "mech-03.ogg", path .. "mech-04.ogg", path .. "mech-05.ogg", path .. "mech-06.ogg"}, t = 0 }},
        MinProgress = 0.4
    },
    ["fire_manual"] = { -- No bolt cycling
        Source = "fire_pump",
        Time = 23 / 25,--30,
        ShellEjectAt = false,
        SoundTable = {{ s = common .. "manual_trigger.ogg", t = 0}},
    },
    ["cycle"] = {
        Source = "cycle",
        Time = 30 / 30,
        ShellEjectAt = 0.1,
        MinProgress = .5,
        SoundTable = {
            {s = path .. "forearm_back.ogg", t = 0},
            {s = path1 .. "eject.ogg", t = 0.1},
            {s = path .. "forearm_forward.ogg", t = 0.2}, -- Not temporary
        },
    },
    ["unjam"] = {
        Source = "cycle",
        Time = 30 / 30,
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
        Time = 23 / 25,--30,
        ShellEjectAt = 0.01,
        SoundTable = {
            {s = path1 .. "eject.ogg", t = 0}, -- Not temporary
        },
    },
    ["fire_iron_empty"] = {
        Source = "fire_empty_semi", -- fire_empty
        Time = 23 / 25,--30,
        ShellEjectAt = 0.01,
        SoundTable = {
            {s = path1 .. "eject.ogg", t = 0}, -- Not temporary
        },
    },

    ["reload"] = {

    },
    ["reload_empty"] = {
        
    },

    ["enter_inspect"] = {
        Source = "inspect_enter",
        -- time = 35 / 60,
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 2.5,
        SoundTable = {
            {s = rottle, t = 0},
        },
    },
    ["idle_inspect"] = {
        Source = "inspect_loop",
        -- time = 72 / 60,
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 999,
    },
    ["exit_inspect"] = {
        Source = "inspect_exit",
        -- time = 66 / 60,
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 999,
        SoundTable = {
            {s = rottle, t = 0.25},
            {s = rottle, t = 1.25},
        },
    },
}

SWEP.BulletBones = {
    --[1] = "1014_shell1",
}

-- Bodygroups --

SWEP.AttachmentElements = {
    
}

SWEP.DefaultBodygroups = "00000000"

SWEP.Attachments = {
    {
        PrintName = "Optic",
        DefaultAttName = "Iron Sights",
        Slot = {"optic_lp", "optic"},
        Bone = "spas_parent",
        Offset = {
            vpos = Vector(0, -1, 0.4),
            vang = Angle(90, -90, -90),
        },
        CorrectiveAng = Angle(180,0,0),
        SlideAmount = {
            vmin = Vector(0, -2, 0.4),
            vmax = Vector(0, 1, 0.4)
        },
        InstalledEles = {"rail_classic"},
        DefaultEles = {"rail_none_fix"},
    },
    {
        PrintName = "Barrel",
        DefaultAttName = "28\" Factory Barrel",
        DefaultAttIcon = Material("entities/att/ur_spas/barrel_std.png", "smooth mips"),
        Slot = "ur_db_barrel",
    },
    {
        PrintName = "Muzzle",
        Slot = "choke",
    },
    -- {
    --     PrintName = "Underbarrel",
    --     Slot = {"foregrip"},
    --     Bone = "pump",
    --     MergeSlots = {13},
    --     Offset = {
    --         vpos = Vector(0, -5, .1),
    --         vang = Angle(90, -90, -90),
    --     },
    -- },
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
        Slot = {"ur_db_stock"},
        DefaultAttName = "Wooden Stock",
        DefaultAttIcon = Material("entities/att/ur_spas/stock_std.png", "smooth mips"),
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
    -- {
    --     PrintName = "M203 slot",
    --     Slot = "uc_ubgl",
    --     Bone = "pump",
    --     Offset = {
    --         vpos = Vector(0, -5, 1.25),
    --         vang = Angle(90, -90, -90),
    --     },
    --     Hidden = true,
    -- },
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