SWEP.Base = "arccw_base"
SWEP.Spawnable = true -- this obviously has to be set to true
SWEP.Category = "ArcCW - Urban Coalition" -- edit this if you like
SWEP.AdminOnly = false

SWEP.PrintName = "автомат Калашникова 47" -- make this something russian and cool
SWEP.TrueName = "AK-47"

if GetConVar("arccw_truenames"):GetBool() then
    SWEP.PrintName = SWEP.TrueName
end

SWEP.Trivia_Class = "Assault Rifle"
SWEP.Trivia_Desc = "One of the first assault rifles, prized around the world to this day for its cheap cost, lax maintenance, and infallible reliability under harsh conditions. Consequently, a fifth of all small arms in existence can be traced to this design. The default pattern is well-rounded and hard-hitting, but recoils harder than other weapons of its class."
SWEP.Trivia_Manufacturer = "Izhmash"
SWEP.Trivia_Calibre = "7.62x39mm"
SWEP.Trivia_Mechanism = "Gas-Operated Rotating Bolt"
SWEP.Trivia_Country = "Soviet Union"
SWEP.Trivia_Year = 1947

SWEP.Slot = 2

SWEP.UseHands = true

SWEP.ViewModel = "models/weapons/arccw/c_ur_ak.mdl"
SWEP.WorldModel = "models/weapons/arccw/c_ur_ak.mdl"
SWEP.ViewModelFOV = 70

SWEP.DefaultBodygroups = "000000000000"

-- Damage --

SWEP.Damage = 47 -- 3 shot close range kill
SWEP.DamageMin = 20 -- 5 shot long range kill
SWEP.RangeMin = 40
SWEP.Range = 300 -- 3 shot until ~170m
SWEP.Penetration = 16
SWEP.DamageType = DMG_BULLET
SWEP.ShootEntity = nil
SWEP.MuzzleVelocity = 715
SWEP.PhysBulletMuzzleVelocity = 715

SWEP.BodyDamageMults = ArcCW.UC.BodyDamageMults

-- Mag size --

SWEP.ChamberSize = 1
SWEP.Primary.ClipSize = 30
SWEP.ExtendedClipSize = 40
SWEP.ReducedClipSize = 15

-- Recoil --

SWEP.Recoil = 0.75
SWEP.RecoilSide = 0.3

SWEP.RecoilRise = 0.6
SWEP.RecoilPunch = 1
SWEP.VisualRecoilMult = 1
SWEP.MaxRecoilBlowback = 1
SWEP.MaxRecoilPunch = 1
SWEP.RecoilPunchBack = 2

SWEP.Sway = 0.6

-- Firerate / Firemodes --

SWEP.Delay = 60 / 600
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

SWEP.AccuracyMOA = 5
SWEP.HipDispersion = 950
SWEP.MoveDispersion = 250
SWEP.JumpDispersion = 1000

SWEP.Primary.Ammo = "ar2"
SWEP.MagID = "ak"

SWEP.HeatCapacity = 75
SWEP.HeatDissipation = 15
SWEP.HeatDelayTime = 3

SWEP.MalfunctionMean = 200

-- Speed multipliers --

SWEP.SpeedMult = 0.9
SWEP.SightedSpeedMult = 0.75
SWEP.SightTime = 0.5
SWEP.ShootSpeedMult = 0.75

local path = ")^weapons/arccw_ur/ak/"
local common = ")^/arccw_uc/common/"
local rottle = {common .. "cloth_1.ogg", common .. "cloth_2.ogg", common .. "cloth_3.ogg", common .. "cloth_4.ogg", common .. "cloth_6.ogg", common .. "rattle.ogg"}
local ratel = {common .. "rattle1.ogg", common .. "rattle2.ogg", common .. "rattle3.ogg"}
SWEP.FirstShootSound = path .. "fire_first.ogg"
SWEP.ShootSound = path .. "fire_auto_1.ogg", path .. "fire_auto_2.ogg"
SWEP.DistantShootSound = "weapons/arccw_ur/ak/fire_dist.ogg"
SWEP.ShootPitchVariation = 0

SWEP.MuzzleEffect = "muzzleflash_ak47"
SWEP.ShellModel = "models/shells/shell_556.mdl"
SWEP.ShellPitch = 90
SWEP.ShellScale = 1.5
SWEP.ShellRotateAngle = Angle(0, 0, 0)

SWEP.MuzzleEffectAttachment = 1 -- which attachment to put the muzzle on
SWEP.CaseEffectAttachment = 2 -- which attachment to put the case effect on

SWEP.IronSightStruct = {
    Pos = Vector(-2.65, 0, 0.82),
    Ang = Angle(0.5, 0.231, 5),
    Magnification = 1.1,
    SwitchToSound = "", -- sound that plays when switching to this sight
    CrosshairInSights = false
}

SWEP.HoldtypeHolstered = "passive"
SWEP.HoldtypeActive = "ar2"
SWEP.HoldtypeSights = "rpg"

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2

SWEP.ActivePos = Vector(0, 0, 0)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.CrouchPos = Vector(-4, 0, -1)
SWEP.CrouchAng = Angle(0, 0, -10)

SWEP.HolsterPos = Vector(3, 3, 0)
SWEP.HolsterAng = Angle(-7.036, 30.016, 0)

SWEP.BarrelOffsetSighted = Vector(0, 0, 0)
SWEP.BarrelOffsetHip = Vector(0, 0, 0)

SWEP.CustomizePos = Vector(8, 0, 1)
SWEP.CustomizeAng = Angle(5, 30, 30)

SWEP.BarrelLength = 24

SWEP.AttachmentElements = {
    ["barrel_akm"] = {
        VMBodygroups = {{ind = 1, bg = 1}}
    },
    ["barrel_alpha"] = {
        VMBodygroups = {{ind = 1, bg = 7}}
    },
    ["barrel_rpk"] = {
        VMBodygroups = {{ind = 7, bg = 1}}
    },
    ["barrel_krinkov"] = {
        VMBodygroups = {
            {ind = 1, bg = 6},
            {ind = 7, bg = 5},
            {ind = 8, bg = 2},
            {ind = 4, bg = 1}
        }
    },
    ["barrel_vityaz"] = {
        VMBodygroups = {
            {ind = 1, bg = 8},
            {ind = 7, bg = 5},
            {ind = 8, bg = 2}
        }
    },
    ["barrel_t56"] = {
        VMBodygroups = {
            {ind =7, bg = 3},
            {ind = 11, bg = 2},
            {ind = 8, bg = 2}
        }
    },
    ["barrel_t56_ext"] = {
        VMBodygroups = {
            {ind = 7, bg = 3},
            {ind = 11, bg = 3},
            {ind = 8, bg = 2}
        }
    },

    ["barrel_dong"] = {
        VMBodygroups = {{ind = 1, bg = 8}} -- This will show up regardless of barrel selection because underbarrel atts are always processed after barrel atts
    },

    ["muzzle_akm"] = {
        VMBodygroups = {{ind = 8, bg = 1}}
    },
    ["muzzle_ak74"] = {
        VMBodygroups = {{ind = 8, bg = 3}}
    },
    ["muzzle_bayonet"] = {
        VMBodygroups = {{ind = 11, bg = 1}}
    },
    ["stock_alpha"] = {
        VMBodygroups = {
            {ind = 6, bg = 4},
            {ind = 3, bg = 1},
        }

    },
    ["stock_underfolder"] = {
        VMBodygroups = {{ind = 6, bg = 2}}
    },
    ["stock_underfolder_folded"] = {
        VMBodygroups = {{ind = 6, bg = 1}}
    },
    ["stock_rpk"] = {
        VMBodygroups = {{ind = 6, bg = 5}}
    },
    ["stock_akn"] = {
        VMBodygroups = {{ind = 6, bg = 8}}
    },
    ["stock_none"] = {
        VMBodygroups = {
            {ind = 6, bg = 9},
            {ind = 3, bg = 1},
        }
    },
    ["mag_762_75"] = {
        VMBodygroups = {{ind = 2, bg = 1}}
    },
    ["mag_545_30"] = {
        VMBodygroups = {{ind = 2, bg = 2}}
    },
    ["mag_545_45"] = {
        VMBodygroups = {{ind = 2, bg = 3}}
    },
    ["mag_9mm"] = {
        VMBodygroups = {{ind = 2, bg = 4}}
    },
    ["mag_12g"] = {
        VMBodygroups = {{ind = 2, bg = 5}}
    },
    ["mag_366"] = {
        VMBodygroups = {{ind = 2, bg = 6}}
    },

    ["grip_akm"] = {
        VMBodygroups = {{ind = 9, bg = 1}}
    },
    ["grip_alpha"] = {
        VMBodygroups = {{ind = 9, bg = 2}}
    },

    ["cover_ribbed"] = {
        VMBodygroups = {{ind = 10, bg = 2}}
    },
    ["cover_alpha"] = {
        VMBodygroups = {{ind = 10, bg = 1}}
    }
}

SWEP.Hook_ModifyBodygroups = function(wep,data)
end

SWEP.ExtraSightDist = 10
SWEP.GuaranteeLaser = true

SWEP.WorldModelOffset = {
    pos = Vector(-11, 6, -3),
    ang = Angle(-10, 0, 180)
}

SWEP.MirrorVMWM = true

SWEP.Attachments = {
    {
        PrintName = "Optic",
        DefaultAttName = "Iron Sights",
        InstalledEles = {"upper_flat"},
        Slot = {"optic","sniper_optic","ur_ak_optic"},
        Bone = "tag_weapon",
        Offset = {
            vpos = Vector(0, -1.75, 3),
            vang = Angle(90, 0, -90),
        },
        VMScale = Vector(1, 1, 1),
        ExtraSightDist = 8,
        SlideAmount = {
            vmin = Vector(0, -1.75, 3-2),
            vmax = Vector(0, -1.75, 3+2),
        },
    },
    {
        PrintName = "Barrel",
        DefaultAttName = "16\" Standard Barrel",
        DefaultAttIcon = Material("entities/att/acwatt_ud_m16_barrel_default.png", "smooth mips"),
        Slot = "ur_ak_barrel",
    },
    {
        PrintName = "Muzzle",
        DefaultAttName = "Standard Muzzle",
        Slot = {"muzzle","ur_ak_muzzle"},
        Bone = "tag_weapon",
        VMScale = Vector(1, 1, 1),
        WMScale = VMScale,
        Offset = {
            vpos = Vector(0, 25, 2.5),
            vang = Angle(0, 90, -90),
        },
        ExcludeFlags = {"ur_ak_nomuzzle"}
    },
    {
        PrintName = "Caliber",
        DefaultAttName = "7.62x39mm",
        DefaultAttIcon = Material("", "smooth mips"),
        Slot = {"ur_ak_cal"},
        Bone = "tag_weapon",
        Offset = {
            vpos = Vector(2.8, -4.2, -11.5),
            vang = Angle(90, 0, -90),
        },
    },
    {
        PrintName = "Underbarrel",
        Slot = {"foregrip","ubgl","ur_ak_ub"},
        Bone = "tag_weapon",
        Offset = {
            vpos = Vector(0,11,1.8),
            vang = Angle(90, -90, -90),
        },
        InstalledEles = {"rail_fg"},
        ExcludeFlags = {"ak_noubs"},
    },
    {
        PrintName = "Tactical",
        Slot = {"tac"},
        Bone = "tag_weapon",
        Offset = {
            vpos = Vector(0, 0.8, 27),
            vang = Angle(90, 0, -90),
        },
        GivesFlags = {"tac"},
        --InstalledEles = {"ud_m16_clamp_fullsize"}
    },
    {
        PrintName = "Grip Type",
        Slot = {"ur_ak_grip"},
        DefaultAttName = "Standard Grip",
        DefaultAttIcon = Material("entities/att/acwatt_ud_m16_grip_default.png", "smooth mips"),
        ExcludeFlags = {"ak_vepr"}
    },
    {
        PrintName = "Stock",
        Slot = {"ur_ak_stock"},
        DefaultAttName = "Type 3 Stock",
        DefaultAttIcon = Material("entities/att/acwatt_ud_m16_stock_default.png", "smooth mips"),
    },
    {
        PrintName = "Magazine",
        Slot = {"ur_ak_mag"},
        DefaultAttName = "30-Round Mag",
        DefaultAttIcon = Material("entities/att/acwatt_ud_m16_mag_30.png", "smooth mips"),
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
        Bone = "tag_weapon",
        Offset = {
            vpos = Vector(0.6, 2, 2.25),
            vang = Angle(90, -90, -90),
        },
    },
    {
        PrintName = "Dust Cover",
        DefaultAttName = "Standard Dust Cover",
        Slot = {"ur_ak_cover"},
        FreeSlot = true,
    }
}

function SWEP:Hook_TranslateAnimation(anim)
    if anim == "fire_iron" then
        if self:GetBuff_Override("NoStock") then return "fire" end
    elseif anim == "fire_iron_empty" then
        if self:GetBuff_Override("NoStock") then return "fire_empty" end
    end
end

SWEP.Hook_NameChange = function(wep,name)
    if GetConVar("arccw_truenames"):GetBool() then
        local foldStocks = {["underfolder"] = true,["sidefolder"] = true}
        local akCals = {["762"] = true,["545"] = true}

        local start = "AK"
        local mid = ""
        local post = "-47"

        local atts = wep.Attachments
        local barr = string.Replace(atts[2].Installed or "default", "ur_ak_barrel_", "")
        local cal = string.Replace(atts[4].Installed or "762", "ur_ak_cal_", "")
        local stock = string.Replace(atts[8].Installed or "default", "ur_ak_stock_", "")

        if cal == "9mm" then
            start = "PP"
            post = "-19 Vityaz"
        elseif cal == "12ga" then
            start = "Saiga"
            post = "-12"
        elseif barr == "rpk" or barr == "rpk_dong" then
            start = "RPK"
            post = ""
        elseif cal == "762" then
            if atts[3].Installed == "ur_ak_muzzle_akm" and (barr == "akm" or barr == "default" or barr == "dong") then
                start = "AKM"
                post = ""
            elseif barr == "t56" then
                start = "Type "
                post = "56"
            end
        end

        if cal == "545" then
            if barr == "krinkov" or barr == "vityaz" then
                post = "-74U" -- the AK-47U doesn't exist
            else
                post = "-74"
            end
        end

        if foldStocks[stock] and akCals[cal] then
            if barr == "t56" then
                post = "56-1"
            else
                mid = "S"
            end
        end

        return start..mid..post
    else
        return self.FakeName
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
    ["ready"] = {
        Source = "ready",
        LHIK = false,
        LHIKIn = 0,
        LHIKOut = 0.5,
    },
    ["fire"] = {
        Source = {"fire"},
        Time = 0.5,
        ShellEjectAt = 0,
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
        LHIK = false,
        LHIKIn = 0.3,
        LHIKOut = 0.3,
        LHIKEaseOut = 0.25,
        MinProgress = 1.3,
        SoundTable = {
            {s = rottle,  t = 0.0},
            {s = common .. "magpouch.ogg", t = 0.1},
            {s = ratel, t = 0.25},
            {s = path .. "magout.ogg", 	 t = 0.45},
            {s = ratel, t = 0.5},
            {s = rottle,  t = 0.75},
            {s = path .. "magin.ogg",    t = 0.95},
            {s = ratel, t = 1.1},
            {s = rottle,  t = 1.15},
            {s = path .. "scrape.ogg",    t = 1.35},
            {s = common .. "magpouchin.ogg", t = 1.35},
            {s = common .. "shoulder.ogg", t = 2.05},
            {s = common .. "grab.ogg", t = 2.1},
        },
    },
    ["reload_empty"] = {
        Source = "reload_empty",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        LHIK = false,
        LHIKIn = 0.3,
        LHIKOut = 0.3,
        LHIKEaseOut = 0.25,
        MinProgress = 2.1,
        SoundTable = {
            {s = rottle,  t = 0.0},
            {s = common .. "magpouch.ogg", t = 0.1},
            {s = ratel, t = 0.25},
            {s = path .. "magout.ogg", 	 t = 0.45},
            {s = path .. "bonk.ogg", 	 t = 0.5},
            {s = ratel, t = 0.5},
            {s = rottle,  t = 0.75},
            {s = path .. "magin.ogg",    t = 0.97},
            {s = ratel, t = 1.1},
            {s = common .. "rifle_magdrop.ogg", t = 1.15},
            {s = rottle,  t = 1.15},
            {s = path .. "chback.ogg",    t = 1.9},
            {s = path .. "chamber.ogg",    t = 2.0},
            {s = common .. "grab.ogg", t = 2.4},
            {s = common .. "shoulder.ogg", t = 2.5},
        },
    },
    ["reload_75"] = {
        Source = "reload_drum",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        LHIK = false,
        LHIKIn = 0.3,
        LHIKOut = 0.3,
        LHIKEaseOut = 0.25,
        MinProgress = 1.6,
        SoundTable = {}, -- zenith do your magic
    },
    ["reload_empty_75"] = {
        Source = "reload_drum_empty",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        LHIK = false,
        LHIKIn = 0.3,
        LHIKOut = 0.3,
        LHIKEaseOut = 0.25,
        MinProgress = 2.6,
        SoundTable = {}, -- zenith do your magic
    },
    ["reload_9mm"] = {
        Source = "reload_9mm",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        LHIK = false,
        LHIKIn = 0.3,
        LHIKOut = 0.3,
        LHIKEaseOut = 0.25,
        MinProgress = 1.3,
        SoundTable = {
            {s = rottle,  t = 0.0},
            {s = common .. "magpouch.ogg", t = 0.1},
            {s = ratel, t = 0.25},
            {s = path .. "magout.ogg", 	 t = 0.45},
            {s = ratel, t = 0.5},
            {s = rottle,  t = 0.75},
            {s = path .. "magin.ogg",    t = 0.95},
            {s = ratel, t = 1.1},
            {s = rottle,  t = 1.15},
            {s = path .. "scrape.ogg",    t = 1.35},
            {s = common .. "magpouchin.ogg", t = 1.35},
            {s = common .. "shoulder.ogg", t = 2.05},
            {s = common .. "grab.ogg", t = 2.1},
        },
    },
    ["reload_empty_9mm"] = {
        Source = "reload_9mm_empty",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        LHIK = false,
        LHIKIn = 0.3,
        LHIKOut = 0.3,
        LHIKEaseOut = 0.25,
        MinProgress = 2.1,
        SoundTable = {
            {s = rottle,  t = 0.0},
            {s = common .. "magpouch.ogg", t = 0.1},
            {s = ratel, t = 0.25},
            {s = path .. "magout.ogg", 	 t = 0.45},
            {s = path .. "bonk.ogg", 	 t = 0.5},
            {s = ratel, t = 0.5},
            {s = rottle,  t = 0.75},
            {s = path .. "magin.ogg",    t = 0.97},
            {s = ratel, t = 1.1},
            {s = common .. "rifle_magdrop.ogg", t = 1.15},
            {s = rottle,  t = 1.15},
            {s = path .. "chback.ogg",    t = 1.9},
            {s = path .. "chamber.ogg",    t = 2.0},
            {s = common .. "grab.ogg", t = 2.4},
            {s = common .. "shoulder.ogg", t = 2.5},
        },
    },
    ["enter_inspect"] = false,
    ["idle_inspect"] = false,
    ["exit_inspect"] = false,
}

SWEP.Hook_Think = function(wep)
    local vm = wep:GetOwner():GetViewModel()
    vm:SetPoseParameter( "sights", Lerp(wep:GetSightDelta(), 1, 0) )
end
