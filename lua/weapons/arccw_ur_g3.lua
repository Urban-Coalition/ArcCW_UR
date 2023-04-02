SWEP.Base = "arccw_base"
SWEP.Spawnable = true -- this obviously has to be set to true
SWEP.Category = "ArcCW - Urban Coalition" -- edit this if you like
SWEP.UC_CategoryPack = "2Urban Renewal"
SWEP.AdminOnly = false

SWEP.PrintName = "AG58"
SWEP.TrueName = "G3A3"

SWEP.Trivia_Class = "Battle Rifle"
SWEP.Trivia_Desc = [[Heckler & Koch's earliest major weapon design, conceived in collaboration with Spanish research group CETME. As a pioneer of the roller-delay system, its success within the Bundeswehr inspired HK to derive subsequent designs from its layout, including the MP5 submachine gun.

Well known for its excellent accuracy and range, but its powerful cartridge makes sustained fire difficult.]]
SWEP.Trivia_Manufacturer = "Crowdley & Nelson"
SWEP.Trivia_Calibre = "7.62x51mm NATO"
SWEP.Trivia_Mechanism = "Roller-Delayed Blowback"
SWEP.Trivia_Country = "Germany"
SWEP.Trivia_Year = 1958

if GetConVar("arccw_truenames"):GetBool() then
    SWEP.PrintName = SWEP.TrueName
    SWEP.Trivia_Manufacturer = "Heckler & Koch"
end

SWEP.Slot = 2
SWEP.CamAttachment = 3

SWEP.UseHands = true

SWEP.ViewModel = "models/weapons/arccw/c_ur_g3.mdl"
SWEP.WorldModel = "models/weapons/arccw/c_ur_g3.mdl"
SWEP.ViewModelFOV = 70

SWEP.DefaultBodygroups = "000000000000"

-- Damage --

SWEP.Damage = 65
SWEP.DamageMin = 35
SWEP.RangeMin = 50
SWEP.Range = 400
SWEP.Penetration = 20
SWEP.DamageType = DMG_BULLET
SWEP.ShootEntity = nil
SWEP.MuzzleVelocity = 715
SWEP.PhysBulletMuzzleVelocity = 715

SWEP.BodyDamageMults = ArcCW.UC.BodyDamageMults

-- Mag size --

SWEP.ChamberSize = 1
SWEP.Primary.ClipSize = 20

-- Recoil --

SWEP.Recoil = 1.4
SWEP.RecoilSide = 0.6

SWEP.RecoilRise = 0.6
SWEP.RecoilPunch = 1
SWEP.VisualRecoilMult = 1
SWEP.MaxRecoilBlowback = 1
SWEP.MaxRecoilPunch = 1
SWEP.RecoilPunchBack = 2

SWEP.Sway = 0.4

-- Firerate / Firemodes --

SWEP.Delay = 60 / 520
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

SWEP.AccuracyMOA = 2
SWEP.HipDispersion = 900
SWEP.MoveDispersion = 200
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
SWEP.SightTime = 0.35
SWEP.ShootSpeedMult = 0.75

local path = ")weapons/arccw_ur/g3/"
local path1 = ")weapons/arccw_ur/mp5/"
local common = ")/arccw_uc/common/"
local rottle = {common .. "cloth_1.ogg", common .. "cloth_2.ogg", common .. "cloth_3.ogg", common .. "cloth_4.ogg", common .. "cloth_6.ogg", common .. "rattle.ogg"}
local ratel = {common .. "rattle1.ogg", common .. "rattle2.ogg", common .. "rattle3.ogg"}
--SWEP.FirstShootSound = path .. "fire_first.ogg"

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

local tail = ")/arccw_uc/common/308/"

SWEP.DistantShootSoundOutdoors = {
    tail .. "fire-dist-308-rif-ext-01.ogg",
    tail .. "fire-dist-308-rif-ext-02.ogg",
    tail .. "fire-dist-308-rif-ext-03.ogg",
    tail .. "fire-dist-308-rif-ext-04.ogg",
    tail .. "fire-dist-308-rif-ext-05.ogg",
    tail .. "fire-dist-308-rif-ext-06.ogg"
}
SWEP.DistantShootSoundIndoors = {
    tail .. "fire-dist-308-rif-int-01.ogg",
    tail .. "fire-dist-308-rif-int-02.ogg",
    tail .. "fire-dist-308-rif-int-03.ogg",
    tail .. "fire-dist-308-rif-int-04.ogg",
    tail .. "fire-dist-308-rif-int-05.ogg",
    tail .. "fire-dist-308-rif-int-06.ogg"
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
    common .. "sup_tail.ogg"
}
SWEP.DistantShootSoundOutdoorsVolume = 1
SWEP.DistantShootSoundIndoorsVolume = 1
SWEP.Hook_AddShootSound = ArcCW.UC.InnyOuty

SWEP.MuzzleEffect = "muzzleflash_6"
SWEP.ShellEffect = "arccw_uc_shelleffect"
SWEP.ShellModel = "models/weapons/arccw/uc_shells/556x45.mdl"
SWEP.ShellScale = 1.145
SWEP.ShellPitch = 90
SWEP.ShellScale = 1
SWEP.ShellRotateAngle = Angle(0, 0, 0)
SWEP.UC_ShellColor = Color(0.7*255, 0.2*255, 0.2*255)

SWEP.MuzzleEffectAttachment = 1 -- which attachment to put the muzzle on
SWEP.CaseEffectAttachment = 2 -- which attachment to put the case effect on

SWEP.BulletBones = {
    --[1] = "tag_mag2",
}

SWEP.IronSightStruct = {
    Pos = Vector(-2.3, -1, 0.9),
    Ang = Angle(0, 0.02, 0),
    Magnification = 1.1,
    ViewModelFOV = 65,
    SwitchToSound = "", -- sound that plays when switching to this sight
    CrosshairInSights = false
}
SWEP.LaserOffsetAngle = Angle(0, 0, 0)
SWEP.LaserIronsAngle = Angle(0, 0, 0)

SWEP.HoldtypeHolstered = "passive"
SWEP.HoldtypeActive = "ar2"
SWEP.HoldtypeSights = "rpg"

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2

SWEP.ActivePos = Vector(0.3, 1, 0.8)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.SprintPos = Vector(0.5, 1, 0.5)
SWEP.SprintAng = Angle(-8.5, 15, -10)

SWEP.CrouchPos = Vector(-0.7, 0.6, 0)
SWEP.CrouchAng = Angle(0, 0, -14)

SWEP.HolsterPos = Vector(-1, -1, 1.2)
SWEP.HolsterAng = Angle(-15, 8, -10)

SWEP.BarrelOffsetSighted = Vector(0, 0, 0)
SWEP.BarrelOffsetHip = Vector(0, 0, 0)

-- SWEP.CustomizePos = Vector(10.5, 4, 1)
-- SWEP.CustomizeAng = Angle(8, 30, 15)
SWEP.CustomizePos = Vector(0.3, 1, 0.8)
SWEP.CustomizeAng = Angle(0, 0, 0)

SWEP.BarrelLength = 24

SWEP.AttachmentElements = {
    ["ur_g3_skin_wood"] = { VMSkin = 1 },
    ["ur_g3_skin_olive"] = { VMSkin = 2 },
    ["ur_g3_skin_tan"] = { VMSkin = 3 },
    ["ur_g3_skin_custom"] = { VMSkin = 4 },

    ["stock_g3_collapsible"] = {
        VMBodygroups = {
            {ind = 5, bg = 2},
        }
    },
    ["stock_g3_collapsed"] = {
        VMBodygroups = {
            {ind = 5, bg = 3},
        }
    },
    ["ur_g3_stock_psg"] = {
        VMBodygroups = {
            {ind = 5, bg = 4},
        }
    },
    ["ur_g3_stock_sg"] = {
        VMBodygroups = {
            {ind = 5, bg = 1},
        }
    },
    ["ur_g3_stock_rucar"] = {
        VMBodygroups = {
            {ind = 5, bg = 5},
        }
    },

    ["ur_g3_rec_hk33"] = {
        VMBodygroups = {
            {ind = 0, bg = 1},
            {ind = 3, bg = 1},
            {ind = 4, bg = 4},
        },
    },
    ["ur_g3_rec_psg"] = {
        VMBodygroups = {
            -- {ind = 1, bg = 1},
            {ind = 3, bg = 2},
        },
        NameChange = "PMR-2",
        TrueNameChange = "PSG1",
    },

    ["ur_g3_mag_10"] = {
        VMBodygroups = {
            {ind = 4, bg = 1},
        }
    },
    ["ur_g3_mag_50"] = {
        VMBodygroups = {
            {ind = 4, bg = 2},
        }
    },
    ["ur_g3_mag_20_556"] = {
        VMBodygroups = {
            {ind = 4, bg = 3},
        }
    },
    ["ur_g3_mag_40_556"] = {
        VMBodygroups = {
            {ind = 4, bg = 5},
        }
    },

    ["ur_g3_barrel_12"] = {
        VMBodygroups = {
            {ind = 2, bg = 1},
        },
        AttPosMods = {
            [5] = {
                vpos = Vector(0, 0.06, 17.7),
                vang = Angle(90, 0, -90),
            },
            [7] = {
                vpos = Vector(-0.94, 0.2, 14),
                vang = Angle(90, 0, 180),
            },
        }
    },
    ["ur_g3_barrel_15"] = {
        VMBodygroups = {
            {ind = 2, bg = 4},
        },
        AttPosMods = {
            [5] = {
                vpos = Vector(0, 0.06, 20),
                vang = Angle(90, 0, -90),
            },
            [7] = {
                vpos = Vector(-0.94, 0.2, 14),
                vang = Angle(90, 0, 180),
            },
        }
    },
    ["ur_g3_barrel_8"] = {
        VMBodygroups = {
            {ind = 2, bg = 2},
        },
        AttPosMods = {
            [5] = {
                vpos = Vector(0, 0.06, 13.7),
                vang = Angle(90, 0, -90),
            },
            [7] = {
                vpos = Vector(-0.94, 0.2, 11),
                vang = Angle(90, 0, 180),
            },
        }
    },
    ["ur_g3_barrel_26"] = {
        VMBodygroups = {
            {ind = 2, bg = 3},
        },
        AttPosMods = {
            [5] = {
                vpos = Vector(0, 0.06, 29.7),
                vang = Angle(90, 0, -90),
            },
            [7] = {
                vpos = Vector(-0.94, 0.2, 17),
                vang = Angle(90, 0, 180),
            },
        }
    },

    ["ur_g3_hg_slim"] = {
        AttPosMods = {
            [6] = {
                vpos = Vector(0, 0.66, 9),
                vang = Angle(90, 0, -90),
            },
        }
    },
    ["ur_g3_hg_pica"] = {
        AttPosMods = {
            [6] = {
                vpos = Vector(0, 0.75, 9.2),
                vang = Angle(90, 0, -90),
            },
        }
    },
}

local hgbg = {
    ["ur_g3_hg_slim"] = 1,
    ["ur_g3_hg_pica"] = 2,
    ["ur_mp5_ub_mlok"] = 3,
    ["ur_mp5_ub_surefire"] = 4,
}
local muzzlebg = {
    ["ur_g3_barrel_8"] = 2,
    ["ur_g3_barrel_12"] = 1,
    ["ur_g3_barrel_15"] = 4,
    ["ur_g3_barrel_26"] = 3,
    ["default"] = 0,
}
local opticbg = {
    ["ur_g3_optic_psg1"] = 2,
    ["ur_g3_optic_sg1"] = 3,
}
local ubmountbg = {
    ["ur_g3_hg_slim"] = 2,
    ["ur_g3_hg_pica"] = 0,
}

SWEP.Hook_ModifyBodygroups = function(wep,data)
    local vm = data.vm
    if !IsValid(vm) then return end

    local atts = wep.Attachments
    local barrel = atts[2].Installed or "default"
    local hg = atts[4].Installed
    local muzzle = atts[5].Installed
    local ub = atts[6].Installed or atts[15].Installed
    local optic = atts[1].Installed
    local charm = atts[14].Installed
    local bayobipod = atts[17].Installed

    local hgind = hgbg[hg] or 0

    if barrel == "ur_g3_barrel_12" or barrel == "ur_g3_barrel_15" then
        vm:SetBodygroup(6, hgind + 3)

        if ub == "ur_g3_ub_bayonet" then
            vm:SetBodygroup(7, 2)
        elseif ub == "ur_g3_ub_bipod" then
            vm:SetBodygroup(7, 4)
        end
    elseif barrel == "ur_g3_barrel_8" then
        vm:SetBodygroup(6, hgind + 6)
    elseif barrel == "ur_g3_barrel_26" then
        vm:SetBodygroup(6, 11)
    else
        vm:SetBodygroup(6, hgind)
    end

    if (barrel == "default" or barrel == "ur_g3_barrel_12" or barrel == "ur_g3_barrel_15" or barrel == "ur_g3_barrel_8") and ub == "uc_ubgl_hk79" then
        vm:SetBodygroup(6, 11)
        atts[15].Offset.vpos = Vector(0, -0.7, 7.3)
    else
        atts[15].Offset.vpos = Vector(0, 0.1, 6.9)
    end

    if barrel == "ur_g3_barrel_26" then
        vm:SetBodygroup(1, 1)
    end

    vm:SetBodygroup(9, !muzzle and muzzlebg[barrel] or 3)

    vm:SetBodygroup(10, (optic or charm == "ur_mp5_optic_mount") and (opticbg[optic] and 0 or 1) or 0)

    vm:SetBodygroup(8, ub and (ubmountbg[hg] or 1) or 0)

    local todo = 0
    local short = barrel == "ur_g3_barrel_12" or barrel == "ur_g3_barrel_15"
    if bayobipod == "ur_g3_bayobipod_bayonet" then
        todo = short and 2 or 1
    elseif bayobipod == "ur_g3_bayobipod_bipod" then
        todo = short and 4 or 3
    end
    vm:SetBodygroup(7, todo)
end

SWEP.Hook_NameChange = function(wep)
    local atts = wep.Attachments
    local barr = string.Replace(atts[2].Installed or "default","ur_g3_barrel_","")
    local rec = string.Replace(atts[3].Installed or "default","ur_g3_rec_","")
    local stock = string.Replace(atts[8].Installed or "default","ur_g3_stock_","")
    local trueNames = GetConVar("arccw_truenames"):GetBool()


    if rec == "hk33" then
        if trueNames then
            local bLookup = {
                ["8"] = "HK53",
                ["12"] = "HK33KA3",
            }

            if bLookup[barr] then
                return bLookup[barr]
            elseif atts[1].Installed == "ur_g3_optic_sg1" then
                return "HK33SG/1"
            else
                return (stock == "collapsible" and "HK33A3") or "HK33A2"
            end
        else
            local bLookup = {
                ["8"] = "CN109",
                ["12"] = "CN66K",
            }

            if bLookup[barr] then
                return bLookup[barr]
            elseif atts[1].Installed == "ur_g3_optic_sg1" then
                return "CN66-SSR"
            else
                return "CN66"
            end
        end
    elseif rec == "default" then -- not "else" here to allow the base's PSG1 namechange to happen
        if trueNames then
            if atts[13].Installed == "uc_fg_civvy" then return "HK91" end

            local bLookup = {
                ["8"] = "HK51",
                ["12"] = "G3KA4",
            }

            if bLookup[barr] then
                return bLookup[barr]
            elseif atts[1].Installed == "ur_g3_optic_sg1" then
                return "G3SG/1"
            else
                return (stock == "collapsible" and "G3A4") or wep.TrueName
            end
        else
            local bLookup = {
                ["8"] = "CN102",
                ["12"] = "AG58K",
            }
            if bLookup[barr] then
                return bLookup[barr]
            elseif atts[1].Installed == "ur_g3_optic_sg1" then
                return "AG-SSR"
            else
                return "AG58"
            end
        end
    end
end

SWEP.O_Hook_UC_UseClassicHK79Mount = function(wep, data)
    local atts = wep.Attachments
    local barrel = atts[2].Installed or "default"
    local ub = atts[6].Installed or atts[15].Installed

    if ub == "uc_ubgl_hk79" and (barrel == "default" or barrel == "ur_g3_barrel_12" or barrel == "ur_g3_barrel_15" or barrel == "ur_g3_barrel_8") then
        data.current = true
    end
end

SWEP.ExtraSightDist = 2
SWEP.GuaranteeLaser = false

SWEP.WorldModelOffset = {
    pos = Vector(-5, 3, -5),
    ang = Angle(-12, 0, 180)
}

SWEP.MirrorVMWM = true


SWEP.Attachments = {
    {
        PrintName = "Optic",
        Slot = {"ur_g3_optic", "optic"},
        Bone = "body",
        Offset = {
            vpos = Vector(0, -1.6, -0.55),
            vang = Angle(90, 0, -90),
        },
        InstalledEles = {"mount_optic"},
        CorrectivePos = Vector(0.018, 0, -0.0),
        CorrectiveAng = Angle(0, 0.3, 0.45),
    },
    {
        PrintName = "Barrel",
        Slot = "ur_g3_barrel",
        DefaultAttName = "18\" Standard Barrel",
        DefaultAttIcon = Material("entities/att/ur_g3/barrel_std.png", "smooth mips"),
        DefaultFlags = {"g3_not8"}
    },
    {
        PrintName = "Reciever",
        Slot = "ur_g3_rec",
        DefaultAttName = "Standard Reciever",
        DefaultAttIcon = Material("entities/att/ur_g3/rec_std.png", "smooth mips"),
    },
    {
        PrintName = "Handguard",
        Slot = "ur_g3_handguard",
        Bone = "body",
        Offset = {
            vpos = Vector(0, 1.5, 10),
            vang = Angle(90, 0, -90),
        },
        DefaultAttName = "Standard Handguard",
        DefaultAttIcon = Material("entities/att/ur_g3/hg_std.png", "smooth mips"),
        ExcludeFlags = {"hk79_pro","g3_nohg"},
    },
    {
        PrintName = "Muzzle",
        Slot = "muzzle",
        Bone = "body",
        Offset = {
            vpos = Vector(0, 0.06, 22.5),
            vang = Angle(90, 0, -90),
        },
        MergeSlots = {17},
    },
    {
        PrintName = "Underbarrel",
        Slot = "foregrip",
        Bone = "body",
        Offset = {
            vpos = Vector(0, 1.17, 8.6),
            vang = Angle(90, 0, -90),
        },
        InstalledEles = {"mount_underbarrel"},
        ExcludeFlags = {"g3_noub"},
        MergeSlots = {15},
    },
    {
        PrintName = "Tactical",
        Slot = "tac",
        Bone = "body",
        Offset = {
            vpos = Vector(-0.8, 0, 17),
            vang = Angle(90, 0, 180),
        },
        InstalledEles = {"mount_tactical"},
    },
    {
        PrintName = "Stock",
        Slot = "ur_g3_stock",
        DefaultAttName = "Factory Stock",
        DefaultAttIcon = Material("entities/att/ur_g3/stock_std.png", "smooth mips"),
    },
    {
        PrintName = "Magazine",
        Slot = "ur_g3_mag",
        DefaultAttName = "20-Round Mag",
        DefaultAttIcon = Material("entities/att/ur_g3/mag20.png", "smooth mips"),
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
        Slot = "uc_fg",
        DefaultAttName = "Standard Internals"
    },
    {
        PrintName = "Charm",
        Slot = {"charm", "fml_charm", "mp5_charm"},
        FreeSlot = true,
        Bone = "body",
        Offset = {
            vpos = Vector(0.5, 1.3, 3),
            vang = Angle(90, 0, -90),
        },
    },
    {
        PrintName = "M203 slot",
        Slot = "uc_ubgl",
        Bone = "body",
        Offset = {
            vpos = Vector(0, 0.1, 6.9), -- this is also changed by ModifyBodygroups
            vang = Angle(90, 0, -90),
        },
        Hidden = true,
        InstalledEles = {"mount_underbarrel"},
    },
    {
        PrintName = "Furniture",
        Slot = "ur_g3_skin",
        DefaultAttName = "Gray",
        DefaultAttIcon = Material("entities/att/ur_g3/skin_gray.png", "smooth mips"),
    },
    {
        PrintName = "UR G3 bayobipod slot",
        Slot = "ur_g3_bayobipod",
        ExcludeFlags = {"g3_hk51hg"},
		Hidden = true,
    },
}

SWEP.Animations = {
    ["idle"] = {
        Source = "idle"
    },
    ["draw"] = {
        Source = "draw",
        LHIK = false,
        LHIKIn = 0,
        LHIKOut = 0.5,
        SoundTable = {
            {s = ratel, t = 0},
            {s = common .. "raise.ogg", t = 0.2},
            {s = common .. "shoulder.ogg",    t = 0.2},
        },
    },
    ["holster"] = {
        Source = "holster",
        LHIK = false,
        LHIKIn = 0,
        LHIKOut = 0.5,
        SoundTable = {
            {s = ratel, t = 0},
           -- {s = common .. "raise.ogg", t = 0.2},
            -- {s = common .. "shoulder.ogg",    t = 0.2},
        },
    },
    ["ready"] = {
        Source = "ready",
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 0.6,
        LHIKEaseOut = 0.25,
        SoundTable = {
            {s = ratel, t = 0},
            {s = path .. "chback.ogg",    t = 0.2},
            {s = path .. "chamber.ogg",    t = 0.3},
            {s = common .. "shoulder.ogg",    t = .6},
        },
    },

    ["fire"] = {
        Source = {"fire_01","fire_02","fire_03"},
        ShellEjectAt = 0,
        SoundTable = {{ s = {path .. "mech-01.ogg", path .. "mech-02.ogg", path .. "mech-03.ogg", path .. "mech-04.ogg", path .. "mech-05.ogg", path .. "mech-06.ogg"}, t = 0, v = 0.25 }},
    },
    ["fire_iron"] = {
        Source = {"fire_01","fire_02","fire_03"},
        ShellEjectAt = 0,
        SoundTable = {
            {s = common .. "common_mech_light.ogg", t = 0},
            { s = {path .. "mech-01.ogg", path .. "mech-02.ogg", path .. "mech-03.ogg", path .. "mech-04.ogg", path .. "mech-05.ogg", path .. "mech-06.ogg"}, t = 0 }
        },
    },

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
            {s = ratel, t = 3/30},
            {s = common .. "magpouch_gear.ogg", t = 9/30},
            {s = path .. "magout.ogg", 	 t = 11/30},
            {s = ratel, t = 0.5},
            {s = rottle,  t = 0.75},
            {s = path .. "struggle.ogg", t = 36/30},
            {s = path .. "magin.ogg", t = 42/30},
            {s = ratel, t = 1.1},
            {s = rottle,  t = 1.15},
            {s = common .. "grab.ogg", t = 52/30},
            {s = common .. "shoulder.ogg", t = 54/30},
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
        LastClip1OutTime = 50/30,
        SoundTable = {
            {s = rottle,  t = 0.0},
            {s = path .. "chback.ogg", t = 5/30, v = 1.95},
            {s = path .. "chlock.ogg", t = 13/30, v = 1.95},
            {s = ratel,  t = 23/30},
            {s = rottle,  t = 24/30},
            {s = common .. "magpouch_gear.ogg", t = 25/30},
            {s = path .. "magrel.ogg", t = 27/30},
            {s = path .. "magout.ogg", t = 30/30},
            {s = rottle,  t = 49/30},
            {s = rottle,  t = 55/30},
            {s = {common .. "rifle_magdrop_1.ogg",common .. "rifle_magdrop_2.ogg",common .. "rifle_magdrop_3.ogg",common .. "rifle_magdrop_4.ogg",common .. "rifle_magdrop.ogg"}, t = 51/30, v = 0.25},
            {s = path .. "struggle.ogg", t = 57/30},
            {s = path .. "magin.ogg", t = 62/30},
            {s = rottle,  t = 75/30},
            {s = path .. "chslap.ogg", t = 80/30},
            {s = ratel,  t = 81/30},
            {s = common .. "grab.ogg", t = 87/30},
            {s = common .. "shoulder.ogg", t = 88/30},
        },
    },
    ["reload_empty_scope"] = {
        Source = "reload_empty_scope",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        LHIK = true,
        LHIKIn = 0.3,
        LHIKOut = 0.5,
        LHIKEaseOut = 0.25,
        MinProgress = 2.1,
        LastClip1OutTime = 50/30,
        SoundTable = {
            {s = rottle,  t = 0.0},
            {s = path .. "chback.ogg", t = 6/30, v = 1.95},
            {s = path .. "chlock.ogg", t = 13/30, v = 1.95},
            {s = ratel,  t = 23/30},
            {s = rottle,  t = 24/30},
            {s = common .. "magpouch.ogg", t = 26/30},
            {s = path .. "magrel.ogg", t = 27/30},
            {s = path .. "magout.ogg", t = 30/30},
            {s = rottle,  t = 49/30},
            {s = rottle,  t = 55/30},
            {s = {common .. "rifle_magdrop_1.ogg",common .. "rifle_magdrop_2.ogg",common .. "rifle_magdrop_3.ogg",common .. "rifle_magdrop_4.ogg",common .. "rifle_magdrop.ogg"}, t = 51/30, v = 0.25},
            {s = path .. "struggle.ogg", t = 57/30},
            {s = path .. "magin.ogg", t = 62/30},
            {s = rottle,  t = 75/30},
            {s = path .. "chlock.ogg", t = 75/30, v = 1.95},
            {s = path .. "chamber.ogg", t = 80/30},
            {s = ratel,  t = 81/30},
            {s = common .. "grab.ogg", t = 92/30},
            {s = common .. "shoulder.ogg", t = 93/30},
        },
    },
   ["reload_30rnd"] = {
       Source = "reload_30rnd",
       TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
       LHIK = true,
       LHIKIn = 0.3,
       LHIKOut = 0.65,
       LHIKEaseOut = 0.25,
       MinProgress = 1.3,
       SoundTable = {
            {s = rottle,  t = 0.0},
            {s = ratel, t = 3/30},
            {s = path .. "magout.ogg", 	 t = 11/30},
            {s = common .. "magpouch.ogg", t = 26/30},
            {s = ratel, t = 0.5},
            {s = rottle,  t = 0.75},
            {s = path .. "struggle.ogg", t = 39/30},
            {s = path .. "magin.ogg", t = 44/30},
            {s = ratel, t = 1.1},
            {s = rottle,  t = 1.15},
            {s = common .. "grab.ogg", t = 56/30},
            {s = common .. "shoulder.ogg", t = 61/30},
       },
   },
    ["reload_empty_30rnd"] = {
        Source = "reload_empty_30rnd",
        RareSource = "reload_empty_30rnd_rare",
        RareSourceChance = 100,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        LHIK = true,
        LHIKIn = 0.3,
        LHIKOut = 0.5,
        LHIKEaseOut = 0.25,
        MinProgress = 2.1,
        LastClip1OutTime = 50/30,
        SoundTable = {
            {s = rottle,  t = 0.0},
            {s = path .. "chback.ogg", t = 6/30, v = 1.95},
            {s = path .. "chlock.ogg", t = 13/30, v = 1.95},
            {s = ratel,  t = 22/30},
            {s = rottle,  t = 23/30},
            {s = path .. "magrel.ogg", t = 27/30},
            {s = path .. "magout.ogg", t = 30/30},
            {s = common .. "magpouch.ogg", t = 47/30},
            {s = rottle,  t = 49/30},
            {s = rottle,  t = 55/30},
            {s = {common .. "rifle_magdrop_1.ogg",common .. "rifle_magdrop_2.ogg",common .. "rifle_magdrop_3.ogg",common .. "rifle_magdrop_4.ogg",common .. "rifle_magdrop.ogg"}, t = 51/30, v = 0.25},
            {s = path .. "struggle.ogg", t = 57/30},
            {s = path .. "magin.ogg", t = 62/30},
            {s = rottle,  t = 75/30},
            {s = path .. "chslap.ogg", t = 80/30},
            {s = ratel,  t = 81/30},
            {s = common .. "grab.ogg", t = 92/30},
            {s = common .. "shoulder.ogg", t = 93/30},
        },
    },
    ["reload_empty_30rnd_scope"] = {
        Source = "reload_empty_scope_30rnd",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        LHIK = true,
        LHIKIn = 0.3,
        LHIKOut = 0.5,
        LHIKEaseOut = 0.25,
        MinProgress = 2.1,
        LastClip1OutTime = 50/30,
        SoundTable = {
            {s = rottle,  t = 0.0},
            {s = path .. "chback.ogg", t = 6/30, v = 1.95},
            {s = path .. "chlock.ogg", t = 13/30, v = 1.95},
            {s = ratel,  t = 22/30},
            {s = rottle,  t = 23/30},
            {s = path .. "magrel.ogg", t = 27/30},
            {s = path .. "magout.ogg", t = 30/30},
            {s = common .. "magpouch.ogg", t = 47/30},
            {s = rottle,  t = 49/30},
            {s = rottle,  t = 55/30},
            {s = {common .. "rifle_magdrop_1.ogg",common .. "rifle_magdrop_2.ogg",common .. "rifle_magdrop_3.ogg",common .. "rifle_magdrop_4.ogg",common .. "rifle_magdrop.ogg"}, t = 51/30, v = 0.25},
            {s = path .. "struggle.ogg", t = 57/30},
            {s = path .. "magin.ogg", t = 62/30},
            {s = rottle,  t = 75/30},
            {s = path .. "chlock.ogg", t = 75/30, v = 1.95},
            {s = path .. "chamber.ogg", t = 80/30},
            {s = ratel,  t = 81/30},
            {s = common .. "grab.ogg", t = 92/30},
            {s = common .. "shoulder.ogg", t = 93/30},
        },
    },
   ["reload_10rnd"] = {
       Source = "reload_10rnd",
       TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
       LHIK = true,
       LHIKIn = 0.3,
       LHIKOut = 0.65,
       LHIKEaseOut = 0.25,
       MinProgress = 1.3,
       SoundTable = {
            {s = rottle,  t = 0.0},
            {s = ratel, t = 3/30},
            {s = path .. "magout.ogg", 	 t = 10/30},
            {s = common .. "magpouch.ogg", t = 26/30},
            {s = ratel, t = 0.5},
            {s = rottle,  t = 0.75},
            {s = path .. "struggle.ogg", t = 36/30},
            {s = path .. "magin.ogg", t = 42/30},
            {s = ratel, t = 1.1},
            {s = rottle,  t = 1.15},
            {s = common .. "grab.ogg", t = 52/30},
            {s = common .. "shoulder.ogg", t = 56/30},
       },
   },
    ["reload_empty_10rnd"] = {
        Source = "reload_empty_10rnd",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        LHIK = true,
        LHIKIn = 0.3,
        LHIKOut = 0.5,
        LHIKEaseOut = 0.25,
        MinProgress = 2.1,
        LastClip1OutTime = 50/30,
        SoundTable = {
            {s = rottle,  t = 0.0},
            {s = path .. "chback.ogg", t = 6/30, v = 1.95},
            {s = path .. "chlock.ogg", t = 13/30, v = 1.95},
            {s = ratel,  t = 22/30},
            {s = rottle,  t = 23/30},
            {s = path .. "magrel.ogg", t = 27/30},
            {s = path .. "magout.ogg", t = 30/30},
            {s = common .. "magpouch.ogg", t = 47/30},
            {s = rottle,  t = 49/30},
            {s = rottle,  t = 55/30},
            {s = {common .. "rifle_magdrop_1.ogg",common .. "rifle_magdrop_2.ogg",common .. "rifle_magdrop_3.ogg",common .. "rifle_magdrop_4.ogg",common .. "rifle_magdrop.ogg"}, t = 51/30, v = 0.25},
            {s = path .. "struggle.ogg", t = 57/30},
            {s = path .. "magin.ogg", t = 62/30},
            {s = rottle,  t = 75/30},
            {s = path .. "chslap.ogg", t = 80/30},
            {s = ratel,  t = 81/30},
            {s = common .. "grab.ogg", t = 92/30},
            {s = common .. "shoulder.ogg", t = 93/30},
        },
    },
    ["reload_empty_10rnd_scope"] = {
        Source = "reload_empty_scope_10rnd",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        LHIK = true,
        LHIKIn = 0.3,
        LHIKOut = 0.5,
        LHIKEaseOut = 0.25,
        MinProgress = 2.1,
        LastClip1OutTime = 50/30,
        SoundTable = {
            {s = rottle,  t = 0.0},
            {s = path .. "chback.ogg", t = 6/30, v = 1.95},
            {s = path .. "chlock.ogg", t = 13/30, v = 1.95},
            {s = ratel,  t = 22/30},
            {s = rottle,  t = 23/30},
            {s = path .. "magrel.ogg", t = 27/30},
            {s = path .. "magout.ogg", t = 30/30},
            {s = common .. "magpouch.ogg", t = 47/30},
            {s = rottle,  t = 49/30},
            {s = rottle,  t = 55/30},
            {s = {common .. "rifle_magdrop_1.ogg",common .. "rifle_magdrop_2.ogg",common .. "rifle_magdrop_3.ogg",common .. "rifle_magdrop_4.ogg",common .. "rifle_magdrop.ogg"}, t = 51/30, v = 0.25},
            {s = path .. "struggle.ogg", t = 57/30},
            {s = path .. "magin.ogg", t = 62/30},
            {s = rottle,  t = 74/30},
            {s = path .. "chlock.ogg", t = 75/30, v = 1.95},
            {s = path .. "chamber.ogg", t = 80/30},
            {s = ratel,  t = 81/30},
            {s = common .. "grab.ogg", t = 92/30},
            {s = common .. "shoulder.ogg", t = 93/30},
        },
    },
   ["reload_50rnd"] = {
       Source = "reload_50rnd",
       TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
       LHIK = true,
       LHIKIn = 0.3,
       LHIKOut = 0.65,
       LHIKEaseOut = 0.25,
       MinProgress = 1.3,
       SoundTable = {
            {s = rottle,  t = 0.0},
            {s = ratel, t = 3/30},
            {s = path .. "magout.ogg", 	 t = 11/30},
            {s = common .. "magpouch.ogg", t = 26/30},
            {s = ratel, t = 0.5},
            {s = rottle,  t = 0.75},
            {s = path .. "struggle.ogg", t = 42/30},
            {s = path .. "magin.ogg", t = 48/30},
            {s = ratel, t = 1.1+5/30},
            {s = rottle,  t = 1.15+5/30},
            {s = common .. "grab.ogg", t = 58/30},
            {s = common .. "shoulder.ogg", t = 62/30},
       },
   },
    ["reload_empty_50rnd"] = {
        Source = "reload_empty_50rnd",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        LHIK = true,
        LHIKIn = 0.3,
        LHIKOut = 0.5,
        LHIKEaseOut = 0.25,
        MinProgress = 2.1,
        LastClip1OutTime = 50/30,
        SoundTable = {
            {s = rottle,  t = 0.0},
            {s = path .. "chback.ogg", t = 6/30, v = 1.95},
            {s = path .. "chlock.ogg", t = 13/30, v = 1.95},
            {s = ratel,  t = 22/30},
            {s = rottle,  t = 23/30},
            {s = path .. "magrel.ogg", t = 27/30},
            {s = path .. "magout.ogg", t = 30/30},
            {s = common .. "magpouch.ogg", t = 47/30},
            {s = rottle,  t = 49/30},
            {s = rottle,  t = 55/30},
            {s = {common .. "rifle_magdrop_1.ogg",common .. "rifle_magdrop_2.ogg",common .. "rifle_magdrop_3.ogg",common .. "rifle_magdrop_4.ogg",common .. "rifle_magdrop.ogg"}, t = 51/30, v = 0.25},
            {s = path .. "struggle.ogg", t = 62/30},
            {s = path .. "magin.ogg", t = 67/30},
            {s = rottle,  t = 80/30},
            {s = path .. "chslap.ogg", t = 85/30},
            {s = ratel,  t = 86/30},
            {s = common .. "grab.ogg", t = 97/30},
            {s = common .. "shoulder.ogg", t = 98/30},
        },
    },
    ["reload_empty_50rnd_scope"] = {
        Source = "reload_empty_scope_50rnd",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        LHIK = true,
        LHIKIn = 0.3,
        LHIKOut = 0.5,
        LHIKEaseOut = 0.25,
        MinProgress = 2.1,
        LastClip1OutTime = 50/30,
        SoundTable = {
            {s = rottle,  t = 0.0},
            {s = path .. "chback.ogg", t = 6/30, v = 1.95},
            {s = path .. "chlock.ogg", t = 13/30, v = 1.95},
            {s = ratel,  t = 22/30},
            {s = rottle,  t = 23/30},
            {s = path .. "magrel.ogg", t = 27/30},
            {s = path .. "magout.ogg", t = 30/30},
            {s = common .. "magpouch.ogg", t = 47/30},
            {s = rottle,  t = 49/30},
            {s = rottle,  t = 55/30},
            {s = {common .. "rifle_magdrop_1.ogg",common .. "rifle_magdrop_2.ogg",common .. "rifle_magdrop_3.ogg",common .. "rifle_magdrop_4.ogg",common .. "rifle_magdrop.ogg"}, t = 51/30, v = 0.25},
            {s = path .. "struggle.ogg", t = 62/30},
            {s = path .. "magin.ogg", t = 67/30},
            {s = rottle,  t = 80/30},
            {s = path .. "chlock.ogg", t = 75/30, v = 1.95},
            {s = path .. "chamber.ogg", t = 85/30},
            {s = ratel,  t = 86/30},
            {s = common .. "grab.ogg", t = 97/30},
            {s = common .. "shoulder.ogg", t = 98/30},
        },
    },
    ["unjam"] = {
        Source = "jamfix",
        ShellEjectAt = 0.5,
        SoundTable = {
            {s = common .. "cloth_4.ogg",  t = 0.1},
            {s = path .. "chback.ogg",    t = 0.3},
            {s = path .. "chamber.ogg",    t = 0.6},
            {s = common .. "grab.ogg", t = 0.9},
            {s = common .. "shoulder.ogg", t = 0.95},
        },
        LHIK = true,
        LHIKIn = 0.2,
        LHIKEaseOut = 0.3,
        LHIKOut = 0.6,
    },

    ["enter_inspect"] = {
        Source = "inspect_enter",
        -- time = 35 / 60,
        LHIK = false,
        LHIKIn = 0,
        LHIKOut = 2.5,
        SoundTable = {
            {s = rottle, t = 0},
            {s = common .. "movement-rifle-02.ogg", t = 0.1},
        },
    },
    ["idle_inspect"] = {
        Source = "inspect_loop",
        -- time = 72 / 60,
        LHIK = false,
        LHIKIn = 0,
        LHIKOut = 999, -- maybe im dumb
    },
    ["exit_inspect"] = {
        Source = "inspect_exit",
        -- time = 66 / 60,
        LHIK = false,
        LHIKIn = 0,
        LHIKOut = 999, -- maybe im dumb
        SoundTable = {
            {s = common .. "movement-rifle-04.ogg", t = 0.2},
            {s = rottle, t = 0.25},
            {s = rottle, t = 1.2},
            {s = common .. "movement-rifle-03.ogg", t = 1.25},
        },
    },
}

-- SWEP.Hook_Think = ArcCW.UC.ADSReload

SWEP.Hook_Think = function(wep)
    local vm = wep:GetOwner():GetViewModel()

    vm:SetPoseParameter("short", wep.Attachments[2].Installed == "ur_g3_barrel_8" and 1 or 0)

    ArcCW.UC.ADSReload(wep)
end

SWEP.Hook_SelectReloadAnimation = function(wep, anim) -- not in atts cause _scope wont work
    local seq = anim

    if wep.Attachments[9].Installed == "ur_g3_mag_50" then
        seq = seq .. "_50rnd"
    elseif wep.Attachments[9].Installed == "ur_g3_mag_10" then
        seq = seq .. "_10rnd"
    elseif wep.Attachments[9].Installed == "ur_g3_mag_40_556" or wep.Attachments[3].Installed == "ur_g3_rec_hk33" and !wep.Attachments[9].Installed then
        seq = seq .. "_30rnd"
    end
    if anim == "reload_empty" and wep.Attachments[1].Installed then
        seq = seq .. "_scope"
    end

    return seq
end