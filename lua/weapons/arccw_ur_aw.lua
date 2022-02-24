SWEP.Base = "arccw_base"
SWEP.Spawnable = true -- this obviously has to be set to true
SWEP.Category = "ArcCW - Urban Coalition" -- edit this if you like
SWEP.AdminOnly = false

SWEP.PrintName = "AWP"

if !GetConVar("arccw_truenames"):GetBool() then
    SWEP.PrintName = "Apex Precision"
end

SWEP.Trivia_Class = "Sniper Rifle"
SWEP.Trivia_Desc = "The Arctic Warfare, a heavy, purpose-designed rifle for extreme-range combat under extreme climates. Few targets can stand up to its power, but its long bolt pull and reload time are an encumbrance outside of its preferred environment.\n\nOne shot. One kill. You know the routine."
SWEP.Trivia_Manufacturer = "Accuracy International"
SWEP.Trivia_Calibre = "7.62x51mm NATO"
SWEP.Trivia_Mechanism = "Bolt Action"
SWEP.Trivia_Country = "United Kingdom"
SWEP.Trivia_Year = 1982

SWEP.Slot = 3
SWEP.CamAttachment = 3

SWEP.UseHands = true

SWEP.ViewModel = "models/weapons/arccw/c_ur_aw.mdl"
SWEP.WorldModel = "models/weapons/arccw/c_ur_aw.mdl"
SWEP.ViewModelFOV = 70

SWEP.DefaultBodygroups = "000000000000"

-- Damage --

SWEP.Damage = 44 -- 3 shot close range kill
SWEP.DamageMin = 85 -- 2 shot long range kill
SWEP.RangeMin = 5
SWEP.Range = 50 -- 2 shot at ~11m
SWEP.Penetration = 18
SWEP.DamageType = DMG_BULLET
SWEP.ShootEntity = nil
SWEP.MuzzleVelocity = 850
SWEP.PhysBulletMuzzleVelocity = 850

SWEP.BodyDamageMults = ArcCW.UC.BodyDamageMults

-- Mag size --

SWEP.ChamberSize = 1
SWEP.Primary.ClipSize = 5
SWEP.ExtendedClipSize = 10
SWEP.ReducedClipSize = 5

-- Recoil --

SWEP.Recoil = 1.75
SWEP.RecoilSide = 0.75

SWEP.RecoilRise = 0.6
SWEP.RecoilPunch = 1
SWEP.VisualRecoilMult = 1
SWEP.MaxRecoilBlowback = 1
SWEP.MaxRecoilPunch = 1
SWEP.RecoilPunchBack = 2

SWEP.Sway = 0.25

-- Firerate / Firemodes --

SWEP.Delay = 60 / 80
SWEP.Num = 1
SWEP.Firemodes = {
    {
        PrintName = "fcg.bolt",
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

SWEP.NPCWeaponType = "weapon_crossbow"
SWEP.NPCWeight = 60

-- Accuracy --

SWEP.AccuracyMOA = .5
SWEP.HipDispersion = 1250
SWEP.MoveDispersion = 500
SWEP.JumpDispersion = 1000

SWEP.Primary.Ammo = "ar2"
SWEP.MagID = "awp"

SWEP.HeatCapacity = 75
SWEP.HeatDissipation = 15
SWEP.HeatDelayTime = 3

-- SWEP.Malfunction = true
SWEP.MalfunctionMean = 200
--SWEP.MeleeTime = 1.5

-- Speed multipliers --

SWEP.SpeedMult = 0.8
SWEP.SightedSpeedMult = 0.625
SWEP.SightTime = 0.525
SWEP.ShootSpeedMult = 0.625

local path = ")^weapons/arccw_ur/ak/"
local path1 = ")^weapons/arccw_ur/mp5/"
local common = ")^/arccw_uc/common/"
local rottle = {common .. "cloth_1.ogg", common .. "cloth_2.ogg", common .. "cloth_3.ogg", common .. "cloth_4.ogg", common .. "cloth_6.ogg", common .. "rattle.ogg"}
local ratel = {common .. "rattle1.ogg", common .. "rattle2.ogg", common .. "rattle3.ogg"}
SWEP.ShootSound = ")^weapons/arccw_ur/sw586/fire_357.ogg" -- Temporary, .338 needs a fire sound too <3
SWEP.DistantShootSound = path .. "fire_dist.ogg"
SWEP.ShootSoundSilenced = path .. "fire_sup_1.ogg", path .. "fire_sup_2.ogg", path .. "fire_sup_3.ogg" -- Temporary
SWEP.DistantShootSoundSilenced = common .. "sup_tail.ogg"
SWEP.ShootDrySound = path .. "dryfire.ogg"
--SWEP.ShootPitchVariation = 0

SWEP.MuzzleEffect = "muzzleflash_ak47"
SWEP.ShellModel = "models/weapons/arccw/uc_shells/556x45.mdl"
SWEP.ShellPitch = 90
SWEP.ShellScale = 1.145
SWEP.ShellRotateAngle = Angle(0, 0, 0)

SWEP.ManualAction = true
SWEP.NoLastCycle = true

SWEP.MuzzleEffectAttachment = 1 -- which attachment to put the muzzle on
SWEP.CaseEffectAttachment = 2 -- which attachment to put the case effect on

SWEP.IronSightStruct = {
    Pos = Vector(-3.372, 0, 0.639),
    Ang = Angle(0, 0, 2),
    Magnification = 1.1,
    SwitchToSound = "", -- sound that plays when switching to this sight
    CrosshairInSights = false
}
SWEP.LaserOffsetAngle = Angle(0, 0, 0)
SWEP.LaserIronsAngle = Angle(0, 1.5, 0)

SWEP.HoldtypeHolstered = "passive"
SWEP.HoldtypeActive = "ar2"
SWEP.HoldtypeSights = "rpg"

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2

SWEP.ActivePos = Vector(0, 0, 0)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.SprintPos = Vector(-1, -1, 1.2)
SWEP.SprintAng = Angle(-15, 8, -10)

SWEP.CrouchPos = Vector(-4, 0, -1)
SWEP.CrouchAng = Angle(0, 0, -10)

SWEP.HolsterPos = Vector(-1, -1, 1.2)
SWEP.HolsterAng = Angle(-15, 8, -10)

SWEP.BarrelOffsetSighted = Vector(0, 0, 0)
SWEP.BarrelOffsetHip = Vector(0, 0, 0)

SWEP.CustomizePos = Vector(8, 0, 1)
SWEP.CustomizeAng = Angle(5, 30, 30)

SWEP.BarrelLength = 32

SWEP.AttachmentElements = {
    ["barrel_long"] = {
        VMBodygroups = {{ind = 2, bg = 1}},
        AttPosMods = {[3] = {
            vpos = Vector(0, 40, 1.75),
            vang = Angle(0, 270, 0),
        }}
    },
    ["barrel_short"] = {
        VMBodygroups = {{ind = 2, bg = 2}},
        AttPosMods = {[3] = {
            vpos = Vector(0, 28, 1.75),
            vang = Angle(0, 270, 0),
        }}
    },
    ["barrel_sd"] = {
        VMBodygroups = {{ind = 2, bg = 3}}
    },
    
    ["mag_338"] = {
        VMBodygroups = {{ind = 3, bg = 2}}
    },
    ["mag_ext"] = {
        VMBodygroups = {{ind = 3, bg = 1}}
    },

    ["rail_bottom"] = {
        VMBodygroups = {{ind = 6, bg = 1}}
    },
    ["rail_top"] = {
        VMBodygroups = {{ind = 7, bg = 1}}
    },
    ["sights_compact"] = {
        VMBodygroups = {{ind = 8, bg = 2}},
        Override_IronsightStruct = {
            Pos = Vector(-3.372, 0, 0.639),
            Ang = Angle(0, 0, 2),
        }
    },
    ["sights_flipped"] = {
        VMBodygroups = {{ind = 8, bg = 1}}
    },

    ["skin_black"] = {
        VMSkin = 1
    },
    ["skin_tan"] = {
        VMSkin = 2
    },

    ["stock_at"] = {
        VMBodygroups = {{ind = 4, bg = 1}}
    }
}

SWEP.ExtraSightDist = 10
SWEP.GuaranteeLaser = true

SWEP.WorldModelOffset = {
    pos = Vector(-7, 4, -4.5),
    ang = Angle(-10, 0, 180)
}

SWEP.MirrorVMWM = true

SWEP.Attachments = {
    {
        PrintName = "Optic",
        DefaultAttName = "Iron Sights",
        Slot = {"optic","optic_lp"},
        Bone = "tag_weapon",
        Offset = {
            vpos = Vector(0, 6, 2.6),
            vang = Angle(0, -90, 0),
        },
        CorrectivePos = Vector(0, 0, 0),
        CorrectiveAng = Angle(0, 180, 0),
        VMScale = Vector(1, 1, 1),
        SlideAmount = {
            vmin = Vector(0, 5.5, 2.6),
            vmax = Vector(0, 7, 2.6),
        },
        InstalledEles = {"sights_flipped"}
    },
    {
        PrintName = "Barrel",
        DefaultAttName = "24\" Police Barrel",
        DefaultAttIcon = Material("entities/att/ur_ak/barrel/stock_barrel.png", "mips smooth"),
        Slot = "ur_aw_barrel",
    },
    {
        PrintName = "Muzzle",
        DefaultAttName = "Standard Muzzle",
        Slot = {"muzzle","ur_aw_muzzle"},
        Bone = "tag_weapon",
        --Installed = "ur_aw_muzzle_brake",
        VMScale = Vector(1.5, 1.5, 1.5),
        WMScale = VMScale,
        Offset = {
            vpos = Vector(0, 35.2, 1.675),
            vang = Angle(0, 270, 0),
        },
        ExcludeFlags = {"barrel_sd"}
    },
    {
        PrintName = "Caliber",
        DefaultAttName = "7.62x51mm NATO",
        DefaultAttIcon = Material("entities/att/ur_ak/recievers/762.png", "mips smooth"),
        Slot = {"ur_aw_cal"},
        Bone = "tag_weapon",
        Offset = {
            vpos = Vector(2.8, -4.2, -11.5),
            vang = Angle(90, 0, -90),
        },
    },
    {
        PrintName = "Magazine",
        Slot = {"ur_aw_mag"},
        DefaultAttName = "5-Round Mag",
        DefaultAttIcon = Material("entities/att/ur_ak/magazines/762_30.png", "mips smooth"),
    },
    {
        PrintName = "Underbarrel",
        Slot = {"foregrip"},
        Bone = "tag_weapon",
        Offset = {
            vpos = Vector(0,16, -.6),
            vang = Angle(90, -90, -90),
        },
        VMScale = Vector(1, 1, 1),
        InstalledEles = {"rail_bottom"},
    },
    {
        PrintName = "Tactical",
        Slot = {"tac"},
        Bone = "tag_weapon",
        Offset = {
            vpos = Vector(1.1, 17, 1.1),
            vang = Angle(90, 270, 0),
        },
        GivesFlags = {"tac"},
        InstalledEles = {"rail_top"}
    },
    {
        PrintName = "Stock",
        Slot = {"ur_aw_stock"},
        DefaultAttName = "Factory Stock",
        DefaultAttIcon = Material("entities/att/ur_ak/stock/3.png", "mips smooth"),
    },
    {
        PrintName = "Ammo Type",
        DefaultAttName = "\"FMJ\" Full Metal Jacket",
        Slot = "uc_ammo",
        HideIfBlocked = true
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
        Bone = "tag_weapon",
        Offset = {
            vpos = Vector(.85, 8.6, -.1),
            vang = Angle(90, -90, -90),
        },
    },
    {
        PrintName = "Finish",
        Slot = {"ur_aw_skin"},
        FreeSlot = true,
        DefaultAttName = "Olive Drab"
    }
}


function SWEP:Hook_TranslateAnimation(anim)

end

SWEP.Hook_NameChange = function(wep,name)
    local atts = wep.Attachments
    local barr = string.Replace(atts[2].Installed or "default", "ur_aw_barrel_", "")
    local cal = string.Replace(atts[4].Installed or "default", "ur_aw_cal_", "")
    local stock = string.Replace(atts[8].Installed or "default", "ur_aw_stock_", "")

    if GetConVar("arccw_truenames"):GetBool() then
        if cal == "338" then
            return "AWM"
        elseif barr == "sd" then
            return "AWS"
        elseif stock == "at" then
            return "AT"
        end
    else
        if cal == "338" then
            return "Apex Magnum"
        elseif barr == "sd" then
            return "Apex Spectre"
        elseif stock == "at" then
            return "Apex Tactical"
        end
    end
end

SWEP.Hook_ModifyBodygroups = function(wep, data)
    local vm = data.vm
    local atts = wep.Attachments
    local cal = string.Replace(atts[4].Installed or "default", "ur_aw_cal_", "")
    local pistolGrip = table.HasValue(wep:GetWeaponFlags(),"pistolgrip")

    if cal == "338" then
        if pistolGrip then
            vm:SetBodygroup(1,3)
        else
            vm:SetBodygroup(1,1)
        end
    elseif pistolGrip then
        vm:SetBodygroup(1,2)
    else
        vm:SetBodygroup(1,0)
    end
end

SWEP.Animations = {
    ["idle"] = {
        Source = "idle"
    },
    ["draw"] = {
        Source = "draw",
        LHIK = false,
        LHIKIn = 0,
        LHIKOut = 0.5,
    },
    -- ["ready"] = {
    --     Source = "ready",
    --     LHIK = true,
    --     LHIKIn = 0,
    --     LHIKOut = 0.6,
    --     LHIKEaseOut = 0.25,
    --     SoundTable = {
    --         {s = path .. "chback.ogg",    t = 0.2},
    --         {s = path .. "chamber.ogg",    t = 0.3},
    --     }
    -- },
    ["fire"] = {
        Source = {"fire"},
        Time = 22/30,
        -- ShellEjectAt = 0,
        MinProgress = 0.2,
        SoundTable = {
            {s = path .. "mech.ogg", t = 0}, -- Temporary
        },
    },
    -- ["fire_iron"] = {
    --     Source = "ak47_fire_iron",
    --     Time = 0.5,
    --     ShellEjectAt = 0,
    -- },
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
            {s = common .. "magpouch.ogg", t = 0.1},
            {s = ratel, t = 0.25},
            {s = path .. "magout.ogg", 	 t = 0.45},
            {s = ratel, t = 0.5},
            {s = rottle,  t = 0.75},
            {s = path .. "magin.ogg",    t = 0.95+0.5},
            {s = ratel, t = 1.1+0.5},
            {s = rottle,  t = 1.15+0.5},
            {s = path .. "scrape.ogg",    t = 1.35+0.5},
            {s = common .. "magpouchin.ogg", t = 1.35+0.5},
            {s = common .. "shoulder.ogg", t = 2.05+0.5},
            {s = common .. "grab.ogg", t = 2.1+0.5},
        },
    },
    ["reload_10"] = {
        Source = "reload_exte",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        LHIK = true,
        LHIKIn = 0.3,
        LHIKOut = 0.65,
        LHIKEaseOut = 0.25,
        MinProgress = 1.3,
        SoundTable = {
            {s = rottle,  t = 0.0},
            {s = common .. "magpouch.ogg", t = 0.1},
            {s = ratel, t = 0.25},
            {s = path .. "magout.ogg", 	 t = 0.45},
            {s = ratel, t = 0.5},
            {s = rottle,  t = 0.75},
            {s = path .. "magin.ogg",    t = 0.95+0.5},
            {s = ratel, t = 1.1+0.5},
            {s = rottle,  t = 1.15+0.5},
            {s = path .. "scrape.ogg",    t = 1.35+0.5},
            {s = common .. "magpouchin.ogg", t = 1.35+0.5},
            {s = common .. "shoulder.ogg", t = 2.05+0.5},
            {s = common .. "grab.ogg", t = 2.1+0.5},
        },
    },
    ["reload_338"] = {
        Source = "reload_magnum",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        LHIK = true,
        LHIKIn = 0.3,
        LHIKOut = 0.65,
        LHIKEaseOut = 0.25,
        MinProgress = 1.3,
        SoundTable = {
            {s = rottle,  t = 0.0},
            {s = common .. "magpouch.ogg", t = 0.1},
            {s = ratel, t = 0.25},
            {s = path .. "magout.ogg", 	 t = 0.45},
            {s = ratel, t = 0.5},
            {s = rottle,  t = 0.75},
            {s = path .. "magin.ogg",    t = 0.95+0.5},
            {s = ratel, t = 1.1+0.5},
            {s = rottle,  t = 1.15+0.5},
            {s = path .. "scrape.ogg",    t = 1.35+0.5},
            {s = common .. "magpouchin.ogg", t = 1.35+0.5},
            {s = common .. "shoulder.ogg", t = 2.05+0.5},
            {s = common .. "grab.ogg", t = 2.1+0.5},
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
        SoundTable = {
            {s = rottle,  t = 0.0},
            {s = common .. "magpouch.ogg", t = 0.1},
            {s = ratel, t = 0.25},
            {s = path .. "magout.ogg", 	 t = 0.45},
            {s = path .. "bonk.ogg", 	 t = 0.5+0.5},
            {s = ratel, t = 0.5},
            {s = rottle,  t = 0.75},
            {s = path .. "magin.ogg",    t = 0.97+0.5},
            {s = ratel, t = 1.1+0.5},
            {s = common .. "rifle_magdrop.ogg", t = 1.15+0.5},
            {s = rottle,  t = 1.15+0.5},
            {s = path .. "chback.ogg",    t = 1.9+0.75},
            {s = path .. "chamber.ogg",    t = 2.0+0.85},
            {s = common .. "grab.ogg", t = 2.4+0.8},
            {s = common .. "shoulder.ogg", t = 2.5+0.8},
        },
    },
    ["reload_empty_10"] = {
        Source = "reload_empty_exte",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        LHIK = true,
        LHIKIn = 0.3,
        LHIKOut = 0.5,
        LHIKEaseOut = 0.25,
        MinProgress = 2.1,
        SoundTable = {
            {s = rottle,  t = 0.0},
            {s = common .. "magpouch.ogg", t = 0.1},
            {s = ratel, t = 0.25},
            {s = path .. "magout.ogg", 	 t = 0.45},
            {s = path .. "bonk.ogg", 	 t = 0.5+0.5},
            {s = ratel, t = 0.5},
            {s = rottle,  t = 0.75},
            {s = path .. "magin.ogg",    t = 0.97+0.5},
            {s = ratel, t = 1.1+0.5},
            {s = common .. "rifle_magdrop.ogg", t = 1.15+0.5},
            {s = rottle,  t = 1.15+0.5},
            {s = path .. "chback.ogg",    t = 1.9+0.75},
            {s = path .. "chamber.ogg",    t = 2.0+0.85},
            {s = common .. "grab.ogg", t = 2.4+0.8},
            {s = common .. "shoulder.ogg", t = 2.5+0.8},
        },
    },
    ["reload_empty_338"] = {
        Source = "reload_empty_magnum",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        LHIK = true,
        LHIKIn = 0.3,
        LHIKOut = 0.5,
        LHIKEaseOut = 0.25,
        MinProgress = 2.1,
        SoundTable = {
            {s = rottle,  t = 0.0},
            {s = common .. "magpouch.ogg", t = 0.1},
            {s = ratel, t = 0.25},
            {s = path .. "magout.ogg", 	 t = 0.45},
            {s = path .. "bonk.ogg", 	 t = 0.5+0.5},
            {s = ratel, t = 0.5},
            {s = rottle,  t = 0.75},
            {s = path .. "magin.ogg",    t = 0.97+0.5},
            {s = ratel, t = 1.1+0.5},
            {s = common .. "rifle_magdrop.ogg", t = 1.15+0.5},
            {s = rottle,  t = 1.15+0.5},
            {s = path .. "chback.ogg",    t = 1.9+0.75},
            {s = path .. "chamber.ogg",    t = 2.0+0.85},
            {s = common .. "grab.ogg", t = 2.4+0.8},
            {s = common .. "shoulder.ogg", t = 2.5+0.8},
        },
    },
    ["cycle"] = {
        Source = "cycle",
         Time = 1.47,
        ShellEjectAt = 0.5,
        MinProgress = 1.3,
        SoundTable = {
            {s = {common .. "cloth_2.ogg", common .. "cloth_3.ogg", common .. "cloth_4.ogg", common .. "cloth_6.ogg", common .. "rattle.ogg"}, t = 0},
            {s = path .. "rack_1.ogg",  t = 0},
            -- {s = path .. "chback.ogg",    t = .4},
            {s = path .. "eject.ogg", t = .4},
            -- {s = path .. "chamber.ogg",    t = .65},
            {s = path .. "rack_2.ogg",  t = 0.2},
        },
    },

    ["enter_inspect"] = false,
    ["idle_inspect"] = false,
    ["exit_inspect"] = false,
}

SWEP.Hook_Think = function(wep)
    -- local vm = wep:GetOwner():GetViewModel()
    -- vm:SetPoseParameter( "sights", Lerp(wep:GetSightDelta(), 1, 0) )
end