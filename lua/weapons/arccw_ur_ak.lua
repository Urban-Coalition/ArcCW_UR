SWEP.Base = "arccw_base"
SWEP.Spawnable = true -- this obviously has to be set to true
SWEP.Category = "ArcCW - Urban Coalition" -- edit this if you like
SWEP.AdminOnly = false

SWEP.PrintName = "AKM"
SWEP.Trivia_Class = "Assault Rifle"
SWEP.Trivia_Desc = "One of the first assault rifles, prized around the world to this day for its cheap cost, lax maintenance, and infallible reliability under harsh conditions. Consequently, a fifth of all small arms in existence can be traced to this design. The default pattern is well-rounded, but recoils harder than other weapons of its class."
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

SWEP.Damage = 47 -- 2 shot close range kill
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
SWEP.HipDispersion = 850
SWEP.MoveDispersion = 250
SWEP.JumpDispersion = 1000

SWEP.Primary.Ammo = "ar2"
SWEP.MagID = "akm"

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

SWEP.MeleeSwingSound = "arccw_go/m249/m249_draw.wav"
SWEP.MeleeMissSound = "weapons/iceaxe/iceaxe_swing1.wav"
SWEP.MeleeHitSound = "arccw_go/knife/knife_hitwall1.wav"
SWEP.MeleeHitNPCSound = "physics/body/body_medium_break2.wav"

SWEP.MuzzleEffect = "muzzleflash_ak47"
SWEP.ShellModel = "models/shells/shell_556.mdl"
SWEP.ShellPitch = 90
SWEP.ShellScale = 1.5
SWEP.ShellRotateAngle = Angle(0, 180, 0)

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
    ["sidemount"] = {
        VMBodygroups = {{ind = 1, bg = 1}},
    },
    ["ubrms"] = {
        VMBodygroups = {{ind = 7, bg = 1}},
    },
    ["no_fh"] = {
        VMBodygroups = {{ind = 6, bg = 0}},
    },
    ["go_ak_barrel_short"] = {
        VMBodygroups = {
            {ind = 3, bg = 1},
            {ind = 6, bg = 1},
        },
        AttPosMods = {
            [5] = {
                vpos = Vector(0, -3.4, 15.5),
            }
        },
        -- Override_IronSightStruct = false
        Override_IronSightStruct = {
            Pos = Vector(-5.03, -10, 1.25),
            Ang = Angle(-0.9, 0.075, -2.412),
            Magnification = 1.1,
            CrosshairInSights = false
        }
    },
    ["go_ak_barrel_long"] = {
        VMBodygroups = {
            {ind = 3, bg = 2},
        },
        AttPosMods = {
            [5] = {
                vpos = Vector(0, -3.4, 32),
            }
        },
        -- Override_IronSightStruct = {
        --     Pos = Vector(-5.03, -10, 1.1),
        --     Ang = Angle(0.16, 0.125, -2.412),
        --     Magnification = 1.1,
        --     CrosshairInSights = false
        -- }
    },
    ["go_ak_barrel_tac"] = {
        VMBodygroups = {
            {ind = 3, bg = 3},
            {ind = 7, bg = 0}
        },
        AttPosMods = {
            [2] = {
                vpos = Vector(0, -2.25, 13),
            }
        }
    },
    ["go_ak_grip_poly"] = {
        VMBodygroups = {
            {ind = 4, bg = 1},
        },
    },
    ["go_stock_none"] = {
        VMBodygroups = {
            {ind = 5, bg = 1},
        },
    },
    ["go_stock"] = {
        VMBodygroups = {
            {ind = 5, bg = 1},
        },
        VMElements = {
            {
                Model = "models/weapons/arccw_go/atts/stock_buftube.mdl",
                Bone = "v_weapon.ak47_Parent",
                Offset = {
                    pos = Vector(0, -2.75, -1.5),
                    ang = Angle(90, 0, -90),
                },
            }
        },
    },
    ["go_ak_stock_skeleton"] = {
        VMBodygroups = {
            {ind = 5, bg = 2},
        },
    },
    ["go_ak_stock_basilisk"] = {
        VMBodygroups = {
            {ind = 5, bg = 3},
        },
    },
    ["go_ak_stock_contractor"] = {
        VMBodygroups = {
            {ind = 5, bg = 4},
        },
    },
    ["go_ak_stock_heavy"] = {
        VMBodygroups = {
            {ind = 5, bg = 5},
        },
    },
    ["go_ak_mag_30"] = {
        VMBodygroups = {
            {ind = 2, bg = 1},
        },
    },
    ["go_ak_mag_30_545"] = {
        NameChange = "AK-74",
        VMBodygroups = {
            {ind = 2, bg = 2},
        },
    },
    ["go_ak_mag_10"] = {
        VMBodygroups = {
            {ind = 2, bg = 3},
        },
    },
    ["go_ak_mag_10_steel"] = {
        VMBodygroups = {
            {ind = 2, bg = 4},
        },
    },
    ["go_ak_mag_40"] = {
        VMBodygroups = {
            {ind = 2, bg = 5},
        },
    },
    ["go_ak_mag_40_steel"] = {
        VMBodygroups = {
            {ind = 2, bg = 6},
        },
    },
    ["go_ak_mag_45_545"] = {
        NameChange = "AK-74",
        VMBodygroups = {
            {ind = 2, bg = 7},
        },
    },
    ["go_ak_mag_60_545"] = {
        NameChange = "AK-74",
        VMBodygroups = {
            {ind = 2, bg = 8},
        },
    },
    ["go_ak_mag_15_545"] = {
        NameChange = "AK-74",
        VMBodygroups = {
            {ind = 2, bg = 9},
        },
    },
}

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
        Slot = {"optic_lp", "optic"},
        Bone = "v_weapon.ak47_Parent",
        DefaultAttName = "Iron Sights",
        Offset = {
            vpos = Vector(0.15, -5.3, 3),
            vang = Angle(90, 0, -90),
        },
        InstalledEles = {"sidemount"},
        CorrectiveAng = Angle(-1.25, 0, 0)
    },
    {
        PrintName = "Underbarrel",
        Slot = {"foregrip", "ubgl"},
        Bone = "tag_weapon",
        Offset = {
            vpos = Vector(0, 10, 1.5),
            vang = Angle(0, -90, 0),
        },
        -- InstalledEles = {"ubrms"},
    },
    {
        PrintName = "Tactical",
        Slot = "tac",
        Bone = "v_weapon.ak47_Parent",
        Offset = {
            vpos = Vector(1.24, -4, 3),
            vang = Angle(90, 0, 0),
        },
        InstalledEles = {"sidemount"},
    },
    {
        PrintName = "Barrel",
        Slot = "go_ak47_barrel",
        DefaultAttName = "415mm Standard Barrel"
    },
    {
        PrintName = "Muzzle",
        DefaultAttName = "Standard Muzzle",
        Slot = "muzzle",
        Bone = "v_weapon.ak47_Parent",
        Offset = {
            vpos = Vector(0, -3.4, 25),
            vang = Angle(90, 0, -90),
        },
        InstalledEles = {"no_fh"}
    },
    {
        PrintName = "Magazine",
        Slot = {"go_ammo_ak47", "go_ammo_ak74"},
        DefaultAttName = "30-Round 7.62mm Steel"
    },
    {
        PrintName = "Stock",
        Slot = {"go_ak47_stock", "go_stock_none", "go_stock", "go_ak47_stock_heavy"},
        DefaultAttName = "Standard Stock",
        Bone = "v_weapon.ak47_Parent",
        Offset = {
            vpos = Vector(0, -2.75, -1.5),
            vang = Angle(90, 0, -90),
        },
    },
    {
        PrintName = "Ammo Type",
        Slot = "go_ammo",
        DefaultAttName = "Standard Ammo"
    },
    {
        PrintName = "Perk",
        Slot = "go_perk"
    },
    {
        PrintName = "Charm",
        Slot = "charm",
        FreeSlot = true,
        Bone = "v_weapon.ak47_Parent", -- relevant bone any attachments will be mostly referring to
        Offset = {
            vpos = Vector(0.6, -2.75, 6), -- offset that the attachment will be relative to the bone
            vang = Angle(90, 0, -90),
        },
    },
}

function SWEP:Hook_TranslateAnimation(anim)
    if anim == "fire_iron" then
        if self:GetBuff_Override("NoStock") then return "fire" end
    elseif anim == "fire_iron_empty" then
        if self:GetBuff_Override("NoStock") then return "fire_empty" end
    end
end

function SWEP:Hook_NameChange(name)
    local eles = self:GetActiveElements()

    local prefix = "AK"
    local s = ""
    local model = "M"
    local stock = ""

    for i, k in pairs(eles or {}) do
        if k == "go_ak_mag_15_545" then
            model = "-74"
        elseif k == "go_ak_mag_30_545" then
            model = "-74"
        elseif k == "go_ak_mag_45_545" then
            model = "-74"
        elseif k == "go_ak_mag_60_545" then
            model = "-74"
        elseif k == "go_ak_barrel_long" then
            prefix = "RPK"
            if model == "M" then
                model = ""
            end
        elseif k == "go_ak_barrel_short" then
            stock = "U"
        elseif k == "go_ak_stock_skeleton" then
            s = "S"
        elseif k == "go_ak_stock_heavy" then
            prefix = "RPK"
            if model == "M" then
                model = ""
            end
        end
    end

    if model == "M" then
        return prefix .. model .. s .. stock
    else
        return prefix .. s .. model .. stock
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
        SoundTable = {
            {s = rottle,  t = 0.0},
            {s = common .. "magpouch.ogg", t = 0.1},
            {s = ratel, t = 0.25},
            {s = path .. "magout.ogg", 	 t = 0.45},
            {s = ratel, t = 0.5},
            {s = rottle,  t = 0.75},
            {s = path .. "magin.ogg",    t = 0.97},
            {s = ratel, t = 1.1},
            {s = common .. "rifle_magdrop.ogg", t = 1.15},
            {s = rottle,  t = 1.15},
            {s = path .. "chback.ogg",    t = 1.9},
            {s = path .. "chamber.ogg",    t = 2.0},
            {s = common .. "shoulder.ogg", t = 3.0},
            {s = common .. "grab.ogg", t = 3.1},
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