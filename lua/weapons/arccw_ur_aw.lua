SWEP.Base = "arccw_base"
SWEP.Spawnable = true -- this obviously has to be set to true
SWEP.Category = "ArcCW - Urban Coalition" -- edit this if you like
SWEP.AdminOnly = false

SWEP.PrintName = "awoop" -- make this something russian and cool
SWEP.TrueName = "awoop"

if GetConVar("arccw_truenames"):GetBool() then
    SWEP.PrintName = SWEP.TrueName
end

local descStart = "One of the first assault rifles, prized around the world to this day for its cheap cost, ease of maintenance, and infallible reliability under harsh conditions. Consequently, a fifth of all small arms in existence can be traced to this design.\n\n"
local desc_762 = "The default pattern is well-rounded and hard-hitting, but recoils harder than other weapons of its class."
local desc_545 = "With a heavier frame than other service rifles, the AK-74 platform is accurate and easy to control."
local desc_74u = "This PDW variant sacrifices range for a compact profile and a high rate of fire."
local desc_9mm = "Well-rounded submachine gun that shares common parts with AK rifles. For its widespread use by a variety of security divisions, it can be described as a Russian counterpart to the MP5.\n\nThe moniker \"Vityaz\" translates to \"knight.\""
local desc_12g = "Magazine-fed semi automatic shotgun, based on the Kalashnikov pattern. Its low accuracy is compensated for by a much faster reload time than tube-fed designs."

SWEP.Trivia_Class = "Assault Rifle"
SWEP.Trivia_Desc = descStart..desc_762
SWEP.Trivia_Manufacturer = "Izhmash"
SWEP.Trivia_Calibre = "7.62x39mm"
SWEP.Trivia_Mechanism = "Gas-Operated Rotating Bolt"
SWEP.Trivia_Country = "Soviet Union"
SWEP.Trivia_Year = 1947

SWEP.Slot = 2
SWEP.CamAttachment = 3

SWEP.UseHands = true

SWEP.ViewModel = "models/weapons/arccw/c_ur_aw.mdl"
SWEP.WorldModel = "models/weapons/arccw/c_ur_aw.mdl"
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
SWEP.Primary.ClipSize = 5
SWEP.ExtendedClipSize = 10
SWEP.ReducedClipSize = 5

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

SWEP.Delay = 60 / 80
SWEP.Num = 1
SWEP.Firemodes = {
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

-- SWEP.Malfunction = true
SWEP.MalfunctionMean = 200
--SWEP.MeleeTime = 1.5

-- Speed multipliers --

SWEP.SpeedMult = 0.9
SWEP.SightedSpeedMult = 0.75
SWEP.SightTime = 0.5
SWEP.ShootSpeedMult = 0.75

local path = ")^weapons/arccw_ur/ak/"
local path1 = ")^weapons/arccw_ur/mp5/"
local common = ")^/arccw_uc/common/"
local rottle = {common .. "cloth_1.ogg", common .. "cloth_2.ogg", common .. "cloth_3.ogg", common .. "cloth_4.ogg", common .. "cloth_6.ogg", common .. "rattle.ogg"}
local ratel = {common .. "rattle1.ogg", common .. "rattle2.ogg", common .. "rattle3.ogg"}
SWEP.FirstShootSound = path .. "fire_first.ogg"
SWEP.ShootSound = path .. "fire_auto_1.ogg", path .. "fire_auto_2.ogg", path .. "fire_auto_3.ogg"
SWEP.DistantShootSound = path .. "fire_dist.ogg"
SWEP.ShootSoundSilenced = path .. "fire_sup_1.ogg", path .. "fire_sup_2.ogg", path .. "fire_sup_3.ogg" -- Temporary
SWEP.DistantShootSoundSilenced = common .. "sup_tail.ogg"
SWEP.ShootDrySound = path .. "dryfire.ogg"
--SWEP.ShootPitchVariation = 0

SWEP.MuzzleEffect = "muzzleflash_ak47"
SWEP.ShellModel = "models/weapons/arccw/uc_shells/556x45.mdl"
SWEP.ShellPitch = 90
SWEP.ShellScale = 1.3
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

SWEP.SprintPos = Vector(0, 0, 0)
SWEP.SprintAng = Angle(0, 0, 0)

SWEP.CrouchPos = Vector(-4, 0, -1)
SWEP.CrouchAng = Angle(0, 0, -10)

SWEP.HolsterPos = Vector(-1, -1, 1.2)
SWEP.HolsterAng = Angle(-15, 8, -10)

SWEP.BarrelOffsetSighted = Vector(0, 0, 0)
SWEP.BarrelOffsetHip = Vector(0, 0, 0)

SWEP.CustomizePos = Vector(8, 0, 1)
SWEP.CustomizeAng = Angle(5, 30, 30)

SWEP.BarrelLength = 24

SWEP.AttachmentElements = {
    -- ["barrel_105"] = {
    --     VMBodygroups = {
    --         {ind = 1, bg = 3},
    --         {ind = 7, bg = 2},
    --         {ind = 8, bg = 2}
    --     },
    --     AttPosMods = {[3] = {
    --         vpos = Vector(0, 20.6, 2.65),
    --         vang = Angle(0, 270, 0),
    --     }},
    --     Override_IronSightStruct = {
    --         Pos = Vector(-2.6, 0, 0.45),
    --         Ang = Angle(0.55, 0.265, 5.53),
    --         Magnification = 1,
    --     }
    -- },
}

SWEP.Hook_ModifyBodygroups = function(wep, data)
    -- local akOptics = {["uc_optic_pso1"] = true, ["uc_optic_kobra"] = true} -- Will need to update this list if more AK optics get added
    -- local railHgs = {["default"] = true, ["akm"] = true, ["t56"] = true, ["rpk"] = true, ["vepr"] = true}
    -- local bipodHgs = {["rpk"] = true, ["rpk74m"] = true}
    -- local polRailHgs = {["74m"] = true, ["rpk74m"] = true, ["105"] = true}

    -- local optic = wep.Attachments[1].Installed
    -- local hg = string.Replace(wep.Attachments[2].Installed or "default","ur_ak_barrel_","")
    -- local ub = wep.Attachments[6].Installed
    -- local upper = wep.Attachments[10].Installed
    -- local alpha = (upper == "ur_ak_cover_alpha" or upper == "ur_ak_cover_ak12" or upper == "ur_ak_cover_truniun_rail")
    -- local taclaser = (wep.Attachments[15].Installed == "ur_ak_charm_tl")

    -- local vm = data.vm
    -- if !IsValid(vm) then return end

    -- if taclaser and !akOptics[optic] then
    --     vm:SetBodygroup(12,2)
    -- else
    --     if optic and !alpha and !akOptics[optic] then
    --         vm:SetBodygroup(12,1)
    --     else
    --         vm:SetBodygroup(12,0)
    --     end
    -- end

    -- if ub and ub ~= "ur_ak_barrel_dong" then
    --     if railHgs[hg] then
    --         vm:SetBodygroup(1,13)
    --     elseif polRailHgs[hg] then
    --         vm:SetBodygroup(1,4)
    --     end
    -- end

    -- if bipodHgs[hg] then
    --     vm:SetBodygroup(7, (wep:GetInBipod() and (wep.LastAnimKey ~= "enter_bipod" or wep.LastAnimFinishTime < CurTime())) and 7 or 1)
    -- end
end

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
        Slot = {"optic","sniper_optic","ur_ak_optic"},
        Bone = "tag_weapon",
        Offset = {
            vpos = Vector(0, 2, 4.92),
            vang = Angle(0, -90, 0),
        },
        CorrectivePos = Vector(0, 0, -0.0),
        CorrectiveAng = Angle(-1.9, 180.15, 0),
        VMScale = Vector(1, 1, 1),
        SlideAmount = {
            vmin = Vector(0, 2-1, 4.55),
            vmax = Vector(0, 2+0.5, 4.55),
        },
       RequireFlags = {"cover_rail"},
       HideIfBlocked = true,
        InstalledEles = {"optic_rail"},
    },
    -- {
    --     PrintName = "Barrel",
    --     DefaultAttName = "16\" Standard Barrel",
    --     DefaultAttIcon = Material("entities/att/ur_ak/barrel/stock_barrel.png", "mips smooth"),
    --     Slot = "ur_ak_barrel",
    -- },c
    {
        PrintName = "Muzzle",
        DefaultAttName = "Standard Muzzle",
        Slot = {"muzzle"},
        Bone = "tag_weapon",
        VMScale = Vector(1.2, 1.2, 1.2),
        WMScale = VMScale,
        Offset = {
            vpos = Vector(0, 24.6, 2.7),
            vang = Angle(0, 270, 0),
        },
        ExcludeFlags = {"ur_ak_nomuzzle"}
    },
    -- {
    --     PrintName = "Receiver",
    --     DefaultAttName = "7.62x39mm Reciever",
    --     DefaultAttIcon = Material("entities/att/ur_ak/recievers/762.png", "mips smooth"),
    --     Slot = {"ur_ak_cal"},
    --     Bone = "tag_weapon",
    --     Offset = {
    --         vpos = Vector(2.8, -4.2, -11.5),
    --         vang = Angle(90, 0, -90),
    --     },
    -- },
    -- {
    --     PrintName = "Magazine",
    --     Slot = {"ur_ak_mag"},
    --     DefaultAttName = "30-Round Mag",
    --     DefaultAttIcon = Material("entities/att/ur_ak/magazines/762_30.png", "mips smooth"),
    -- },
    {
        PrintName = "Underbarrel",
        Slot = {"foregrip","ubgl","ur_ak_ub"},
        Bone = "tag_weapon",
        Offset = {
            vpos = Vector(0,12, 1.9),
            vang = Angle(90, -90, -90),
        },
        VMScale = Vector(0.9, 0.9, 0.9),
        SlideAmount = {
            vmin = Vector(0,10.5,1.9),
            vmax = Vector(0,13.5,1.9)
        },
        InstalledEles = {"rail_fg"},
        ExcludeFlags = {"ak_noubs"},
    },
    {
        PrintName = "Tactical",
        Slot = {"tac"},
        Bone = "tag_weapon",
        Offset = {
            vpos = Vector(-1, 10.5, 2.8),
            vang = Angle(-90, 270, 0),
        },
        GivesFlags = {"tac"},
        --InstalledEles = {"ud_m16_clamp_fullsize"}
    },
    -- {
    --     PrintName = "Grip Type",
    --     Slot = {"ur_ak_grip"},
    --     DefaultAttName = "Type 3 Grip",
    --     DefaultAttIcon = Material("entities/att/ur_ak/grip_3.png", "mips smooth"),
    --     ExcludeFlags = {"stock_vepr"},
    -- },
    -- {
    --     PrintName = "Stock",
    --     Slot = {"ur_ak_stock"},
    --     DefaultAttName = "Type 3 Stock",
    --     DefaultAttIcon = Material("entities/att/ur_ak/stock/3.png", "mips smooth"),
    -- },
    -- {
    --     PrintName = "Dust Cover",
    --     DefaultAttName = "Smooth Dust Cover",
    --     DefaultAttIcon = Material("entities/att/ur_ak/dustcover_stock.png", "mips smooth"),
    --     Slot = {"ur_ak_cover"},
    --     FreeSlot = true,
    -- },
    {
        PrintName = "Ammo Type",
        DefaultAttName = "\"FMJ\" Full Metal Jacket",
        Slot = "uc_ammo",
        ExcludeFlags = {"cal_12g"},
        HideIfBlocked = true
    },
    -- {
    --     PrintName = "Ammo Type",
    --     DefaultAttName = "\"BUCK\" #00 Buckshot",
    --     Slot = "ud_ammo_shotgun",
    --     RequireFlags = {"cal_12g"},
    --     HideIfBlocked = true
    -- }, -- Will un-comment as soon as HideIfBlocked is fixed for slots
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
    -- {
    --     PrintName = "Charm",
    --     Slot = {"charm", "fml_charm", "ur_ak_charm"},
    --     FreeSlot = true,
    --     Bone = "tag_weapon",
    --     Offset = {
    --         vpos = Vector(0.6, 2, 2.25),
    --         vang = Angle(90, -90, -90),
    --     },
    -- },
}

-- function SWEP:Hook_TranslateAnimation(anim)
    -- if anim == "fire_iron" then
    --     if self:GetBuff_Override("NoStock") then return "fire" end
    -- elseif anim == "fire_iron_empty" then
    --     if self:GetBuff_Override("NoStock") then return "fire_empty" end
    -- end
-- end

-- SWEP.Hook_NameChange = function(wep,name)
    -- if GetConVar("arccw_truenames"):GetBool() then
    --     local foldStocks = {["underfolder"] = true,["aks"] = true}
    --     local akCals = {["762"] = true,["545"] = true}
    --     local shortBarrs = {["krinkov"] = true,["vityaz"] = true}

    --     local start = "AK"
    --     local mid = ""
    --     local post = "M"

    --     local atts = wep.Attachments
    --     local barr = string.Replace(atts[2].Installed or "default", "ur_ak_barrel_", "")
    --     local cal = string.Replace(atts[4].Installed or "762", "ur_ak_cal_", "")
    --     local stock = string.Replace(atts[9].Installed or "default", "ur_ak_stock_", "")

    --     wep.Trivia_Desc = descStart .. desc_762
    --     wep.Trivia_Mechanism = "Gas-Operated Rotating Bolt"

    --     if atts[14].Installed == "uc_fg_civvy" then
    --         start = "Vepr"
    --         if cal == "12g" then
    --             post = "-12"
    --             wep.Trivia_Desc = desc_12g
    --         elseif cal == "545_ak12" or cal == "545" then
    --             post = " 5.45"
    --             wep.Trivia_Desc = descStart .. desc_545
    --         elseif cal == "762" then
    --             post = " 7.62"
    --         elseif cal == "9mm" then
    --             start = "Saiga"
    --             post = "-9"
    --             wep.Trivia_Desc = desc_9mm
    --             wep.Trivia_Mechanism = "Blowback"
    --         else
    --             post = " ." .. cal
    --         end
    --         return start .. post
    --     end

    --     if cal == "9mm" then
    --         start = "PP"
    --         post = "-19 Vityaz"
    --         wep.Trivia_Desc = desc_9mm
    --         wep.Trivia_Mechanism = "Blowback"
    --     elseif cal == "12g" then
    --         start = "Saiga"
    --         if shortBarrs[barr] then
    --             post = "-12K"
    --         else
    --             post = "-12"
    --         end
    --         wep.Trivia_Desc = desc_12g
    --     elseif cal == "366" then
    --         start = "Vepr "
    --         post = ".366"
    --     elseif cal == "308" then
    --         post = "-308"
    --     elseif cal == "545_ak12" then
    --         if string.EndsWith(barr,"105") or shortBarrs[barr] then
    --             post = "-12K"
    --         else
    --             post = "-12"
    --         end
    --         wep.Trivia_Desc = descStart .. desc_545
    --     elseif barr == "rpk" or barr == "rpk74m" then
    --         start = "RPK"
    --     elseif cal == "762" then
    --         if barr == "t56" then
    --             start = "Type "
    --             post = "56"
    --         elseif barr == "74m" then
    --             post = "-103"
    --         end
    --     end

    --     if cal == "545" then
    --         if barr == "74m" or barr == "rpk74m" then
    --             post = "-74M"
    --         else
    --             post = "-74"
    --         end
    --         wep.Trivia_Desc = descStart .. desc_545
    --     end

    --     if foldStocks[stock] and akCals[cal] and !string.StartWith(barr,"105") then
    --         if cal == "762" then
    --             if barr == "t56" then
    --                 post = "56-1"
    --             else
    --                 post = "MS"
    --             end
    --         else
    --             mid = "S"
    --         end
    --     end

    --     if akCals[cal] then
    --         if shortBarrs[barr] then
    --             post = post .. "U" -- I know I said the AK-47U doesn't exist, but we have fucking Glock 44 Autos so I warmed up to it
    --         wep.Trivia_Desc = descStart .. desc_74u
    --         elseif string.EndsWith(barr,"105") then
    --             if cal == "545" then
    --                 post = "-105"
    --             elseif cal == "762" then
    --                 post = "-104"
    --             elseif cal == "556" then
    --                 post = "-102"
    --             end
    --         end
    --     end

    --     return start .. mid .. post
    -- else
    --     return wep.FakeName
    -- end
-- end

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
        Time = 1,
        -- ShellEjectAt = 0,
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
    ["cycle"] = {
        Source = "cycle",
        -- Time = 20 / 30,
        ShellEjectAt = 0.5,
        MinProgress = 12 / 30,
        SoundTable = {
            {s = {common .. "cloth_2.ogg", common .. "cloth_3.ogg", common .. "cloth_4.ogg", common .. "cloth_6.ogg", common .. "rattle.ogg"}, t = 0},
            {s = path .. "rack_1.ogg",  t = 0},
            {s = path .. "eject.ogg",  t = 0.075},
            {s = path .. "rack_2.ogg",  t = 0.2},
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

    ["enter_inspect"] = false,
    ["idle_inspect"] = false,
    ["exit_inspect"] = false,
}

SWEP.Hook_Think = function(wep)
    -- local vm = wep:GetOwner():GetViewModel()
    -- vm:SetPoseParameter( "sights", Lerp(wep:GetSightDelta(), 1, 0) )
end