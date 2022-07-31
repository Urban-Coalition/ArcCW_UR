SWEP.Base = "arccw_base"
SWEP.Spawnable = true
SWEP.Category = "ArcCW - Urban Coalition"
SWEP.UC_CategoryPack = "2Urban Renewal"
SWEP.AdminOnly = false
SWEP.UseHands = true

-- Effects --

SWEP.MuzzleEffect = "muzzleflash_mp5"
SWEP.ShellEffect = "arccw_uc_shelleffect"
SWEP.ShellModel = "models/weapons/arccw/uc_shells/9x19.mdl"
SWEP.ShellScale = 1
--SWEP.ShellMaterial = "models/weapons/arcticcw/shell_9mm"
SWEP.ShellPitch = 100
SWEP.ShellSounds = ArcCW.PistolShellSoundsTable

SWEP.MuzzleEffectAttachment = 1
SWEP.CaseEffectAttachment = 2
-- SWEP.CamAttachment = 3 ---------------------------------------------------------------------------
-- SWEP.TracerNum = 1
-- SWEP.TracerCol = Color(25, 255, 25)
-- SWEP.TracerWidth = 2

-- Fake name --

SWEP.PrintName = "PK5-4"

-- True name --

SWEP.TrueName = "MP5A4"

-- Trivia --

SWEP.Trivia_Class = "Submachine Gun"
SWEP.Trivia_Desc = [[Versatile submachine gun known for its use by high profile police units around the world, most famously by the British SAS during the Iranian embassy siege. While not the most cutting-edge weapon, it remains a classic despite multiple newer alternatives from both HK and its competitors.

If accurate, sophisticated close-combat performance is what you're looking for, no weapon has a better track record.]]
SWEP.Trivia_Manufacturer = "Crowdley & Nelson"
SWEP.Trivia_Calibre = "9x19mm Parabellum"
SWEP.Trivia_Mechanism = "Roller-Delayed Blowback"
SWEP.Trivia_Country = "Germany"
SWEP.Trivia_Year = 1966

-- Weapon slot --

SWEP.Slot = 2

-- Weapon's manufacturer real name --

if GetConVar("arccw_truenames"):GetBool() then
    SWEP.PrintName = SWEP.TrueName
    SWEP.Trivia_Manufacturer = "Heckler & Koch"
end

-- Viewmodel / Worldmodel / FOV --

SWEP.ViewModel = "models/weapons/arccw/c_ur_mp5.mdl"
SWEP.WorldModel = "models/weapons/arccw/c_ur_mp5.mdl"
SWEP.ViewModelFOV = 70
SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2
SWEP.ProceduralIronFire = true

-- Damage --

SWEP.Damage = 30 -- 4 shot close range kill (3 on chest)
SWEP.DamageMin = 17 -- 6 shot long range kill
SWEP.RangeMin = 20
SWEP.Range = 100 -- 4 shot until ~50m

SWEP.Penetration = 3
SWEP.DamageType = DMG_BULLET
SWEP.ShootEntity = nil
SWEP.MuzzleVelocity = 400
SWEP.PhysBulletMuzzleVelocity = 400

SWEP.BodyDamageMults = ArcCW.UC.BodyDamageMults

-- Mag size --

SWEP.ChamberSize = 1
SWEP.Primary.ClipSize = 30
SWEP.ExtendedClipSize = 40
SWEP.ReducedClipSize = 15

-- Recoil --

SWEP.Recoil = 0.38
SWEP.RecoilSide = 0.25

SWEP.RecoilRise = 0.6
SWEP.RecoilPunch = 1
SWEP.VisualRecoilMult = 1
SWEP.MaxRecoilBlowback = 1
SWEP.MaxRecoilPunch = 0.6
SWEP.RecoilPunchBack = 1.5

SWEP.Sway = 0.25

-- Firerate / Firemodes --

SWEP.Delay = 60 / 800
SWEP.Num = 1
SWEP.Firemodes = {
    {
        Mode = 2,
    },
    {
        Mode = -3,
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

SWEP.NPCWeaponType = "weapon_smg1"
SWEP.NPCWeight = 60

-- Accuracy --

SWEP.AccuracyMOA = 3
SWEP.HipDispersion = 500
SWEP.MoveDispersion = 120
SWEP.JumpDispersion = 1000

SWEP.Primary.Ammo = "pistol"
SWEP.MagID = "mp5"

SWEP.HeatCapacity = 75
SWEP.HeatDissipation = 15
SWEP.HeatDelayTime = 3

SWEP.MalfunctionMean = 200

-- Speed multipliers --

SWEP.SpeedMult = 0.925
SWEP.SightedSpeedMult = 0.75
SWEP.SightTime = 0.4
SWEP.ShootSpeedMult = 0.95

-- Length --

SWEP.BarrelLength = 24
SWEP.ExtraSightDist = 5

-- Ironsights / Customization / Poses --

SWEP.HolsterPos = Vector(0.5, -2, 1)
SWEP.HolsterAng = Angle(-8.5, 8, -10)

SWEP.HoldtypeHolstered = "passive"
SWEP.HoldtypeActive = "ar2"
SWEP.HoldtypeSights = "rpg"

SWEP.IronSightStruct = {
     Pos = Vector(-3.17, -4, 0.6),
     Ang = Angle(0.5, 0, 0),
     Magnification = 1,
     SwitchToSound = "",
     ViewModelFOV = 60,
}

SWEP.ActivePos = Vector(-0.3, 1.1, 0.6)
SWEP.ActiveAng = Angle(0, 0, -1)

SWEP.SprintPos = Vector(-0.5, 3, 1.5)
SWEP.SprintAng = Angle(-12, 15, -15)

SWEP.CustomizePos = Vector(6, -2, -1.5)
SWEP.CustomizeAng = Angle(16, 28, 0)

SWEP.CrouchPos = Vector(-2, 0.5, 0)
SWEP.CrouchAng = Angle(0, 0, -14)

SWEP.BarrelOffsetHip = Vector(4, 0, -4)

SWEP.MirrorVMWM = true
SWEP.WorldModelOffset = {
    pos        =    Vector(-7, 3.75, -6.5),
    ang        =    Angle(-6, 0, 180),
    bone    =    "ValveBiped.Bip01_R_Hand",
    scale = 1
}

-- Firing sounds --
local path = ")^weapons/arccw_ur/mp5/"
local path1 = ")^weapons/arccw_ud/glock/"
local common = ")^/arccw_uc/common/"

SWEP.ShootSound = {
    path .. "fire-01.ogg",
    path .. "fire-02.ogg",
    path .. "fire-03.ogg"
}
SWEP.ShootSoundSilenced = path .. "fire_sup.ogg"
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
SWEP.DistantShootSoundIndoorsVolume = 0.6
SWEP.Hook_AddShootSound = ArcCW.UC.InnyOuty

-- Bodygroups --

SWEP.BulletBones = {
    -- [1] = "uzi_b1", [2] = "uzi_b2", [3] = "uzi_b3", [4] = "uzi_b4"
}

--[[

1 --- 	id: 0
     [	name: iron
	num: 1
	submodels:
	0 --- ironSIGHT.smd
2 --- 	id: 1
     [	name: 1
	num: 4
	submodels:
	0 --- mp5UPPER.smd
	1 --- mp5sdUPPER.smd
	2 --- mp5kUPPER.smd
	3 --- swordUPPER.smd
3 --- 	id: 2
     [	name: 2
	num: 2
	submodels:
	0 --- fourLOWER.smd
	1 --- sefLOWER.smd
4 --- 	id: 3
     [	name: 3
	num: 11
	submodels:
	0 --- fixedSTOCK.smd
	1 --- collapseSTOCK.smd
	2 --- collapseSTOCKcoll.smd
	3 --- pdwSTOCK.smd
	4 --- pdwSTOCKfold.smd
	5 --- tacticSTOCK.smd
	6 --- tacticSTOCKfold.smd
	7 --- futureSTOCK.smd
	8 --- futureSTOCKcoll.smd
	9 --- futureSTOCKfold.smd
	10 --- buttSTOCK.smd
5 --- 	id: 4
     [	name: 4
	num: 10
	submodels:
	0 --- standardHG.smd
	1 --- flashHG.smd
	2 --- flashmlokHG.smd
	3 --- slimHG.smd
	4 --- picaHG.smd
	5 --- mlokHG.smd
	6 --- kurzgripHG.smd
	7 --- kurzslimHG.smd
	8 --- kurzmlokHG.smd
	9 ---
6 --- 	id: 5
     [	name: 5
	num: 4
	submodels:
	0 --- standardMAG.smd
	1 --- smallMAG.smd
	2 --- straightMAG.smd
	3 --- drumMAG.smd
7 --- 	id: 6
     [	name: 6
	num: 2
	submodels:
	0 ---
	1 --- mp5RAIL.smd

]]

SWEP.AttachmentElements = {
    ["ur_mp5_barrel_sd"] = {
        VMBodygroups = {
            {ind = 1, bg = 1},
            {ind = 4, bg = 9},
        },
        AttPosMods = {
            [6] = {
                vpos = Vector(0, 0.9, 10),
                vang = Angle(90, 0, -90),
            },
            [5] = {
                vpos = Vector(-0.2, 1.6, 10),
                vang = Angle(90, 0, -90),
            }
        },
    },
    ["ur_mp5_barrel_kurz"] = {
        VMBodygroups = {
            {ind = 1, bg = 2},
            {ind = 4, bg = 7},
        },
        AttPosMods = {[4] = {
            vpos = Vector(-0.1, 0.3, 11.5),
            vang = Angle(90, 0, -90),
        }}
    },
    ["ur_mp5_barrel_swordfish"] = {
        VMBodygroups = {
            --{ind = 0, bg = 1},
            {ind = 1, bg = 3},
            {ind = 6, bg = 0},
        },
    },

    ["ur_mp5_rail_fg"] = {
        VMBodygroups = {{ind = 4, bg = 4}},
    },
    ["ur_mp5_ub_classic"] = {
        VMBodygroups = {{ind = 4, bg = 3}},
    },
    ["ur_mp5_ub_surefire"] = {
        VMBodygroups = {{ind = 4, bg = 1}},
    },
    ["ur_mp5_ub_surelock"] = {
        VMBodygroups = {{ind = 4, bg = 2}},
    },
    ["ur_mp5_ub_kurzgrip"] = {
        VMBodygroups = {{ind = 4, bg = 6}},
    },
    ["ur_mp5_ub_kurzmlok"] = {
        VMBodygroups = {{ind = 4, bg = 8}},
    },
    ["ur_mp5_ub_wood"] = {
        VMBodygroups = {{ind = 4, bg = 3}}, -- insert wood handguard here
    },

    ["ur_mp5_mag_15"] = {
        VMBodygroups = {{ind = 5, bg = 1}},
    },
    ["ur_mp5_mag_40"] = {
        VMBodygroups = {{ind = 5, bg = 3}},
    },
    ["ur_mp5_mag_50"] = {
        VMBodygroups = {{ind = 5, bg = 3}},
    },
    ["ur_mp5_mag_waffle"] = {
        VMBodygroups = {{ind = 5, bg = 2}},
    },

    ["ur_mp5_rail_optic"] = {
        VMBodygroups = {{ind = 6, bg = 1}},
    },

    ["ur_mp5_clamp"] = {
        VMBodygroups = {{ind = 5, bg = 1}},
    },

    ["receiver_lower"] = {
        VMBodygroups = {{ind = 2, bg = 1}},
    },
    ["receiver_lower_semi"] = {
        VMBodygroups = {{ind = 2, bg = 2}},
    },
    ["receiver_lower_0"] = {
        VMBodygroups = {{ind = 2, bg = 0}},
    },
    ["receiver_upper_0"] = {
        VMBodygroups = {{ind = 7, bg = 0}},
    },

    ["stock_a3"] = {
        VMBodygroups = {
            {ind = 3, bg = 1},
        },
    },
    ["stock_a3_folded"] = {
        VMBodygroups = {
            {ind = 3, bg = 2},
        },
    },
    ["ur_mp5_stock_remove"] = {
        VMBodygroups = {{ind = 3, bg = 10}},
    },
    ["ur_mp5_stock_wood"] = {
        -- VMBodygroups = {{ind = 0, bg = 4}},
        -- Make this part of the VMSkin
    },
    ["stock_pdw"] = {
        VMBodygroups = {{ind = 3, bg = 3}},
    },
    ["stock_pdw_folded"] = {
        VMBodygroups = {{ind = 3, bg = 4}},
    },
    ["stock_future"] = {
        VMBodygroups = {{ind = 3, bg = 7}},
    },
    ["stock_future_folded"] = {
        VMBodygroups = {{ind = 3, bg = 8}},
    },
    ["ur_mp5_precision_irons"] = {
        VMBodygroups = {
            {ind = 0, bg = 2},
            {ind = 6, bg = 0},
            },
    },
}

SWEP.Hook_ModifyBodygroups = function(wep, data)
    local atts = wep.Attachments
    local vm = data.vm

    local barr = string.Replace(atts[2].Installed or "default","ur_mp5_barrel_","")
    local hg = string.Replace(atts[5].Installed or "default","ur_mp5_ub_","")

    if hg == "mlok" then
        if barr == "kurz" then
            vm:SetBodygroup(4,8)
        else
            vm:SetBodygroup(4,5)
        end
    end

    if barr == "sword" then
        vm:SetBodygroup(0,(atts[1].Installed and 3) or 1)
    end
end

SWEP.Hook_NameChange = function(wep,name)
    local atts = wep.Attachments
    local barr = string.Replace(atts[2].Installed or "default","ur_mp5_barrel_","")
    local cal = string.Replace(atts[3].Installed or "default","ur_mp5_caliber_","")
    local stock = string.Replace(atts[8].Installed or "default","ur_mp5_stock_","")
    local fakeNames = !GetConVar("arccw_truenames"):GetBool()
    local defaultCals = {
        ["default"] = true,
        ["noburst"] = true,
        ["semi"] = true
    }

    local start = "MP5"
    local mid = "A"
    local num = "4"
    if fakeNames then
        start = "PK5"
        mid = "-"
    end

    if cal == "semi" or atts[12].Installed == "uc_fg_civvy" then
        if fakeNames then
            return "PK5-CIV"
        else
            if barr == "long" or barr == "sd" then
                start = "HK94" -- I know how prolific civies can get with their gunbuilds, so the nonsensical names will continue
            else
                return "SP5" .. ((barr == "kurz" and "K") or "")
            end
        end
    end

    if !defaultCals[cal] then
        if barr == "sd" then
            num = "SD"
        else
            num = ""
        end
        if cal == "10auto" then
            mid = "/10"
        elseif cal == "40sw" then
            mid = "/40"
        elseif cal == "22lr" then
            if barr == "sd" then
                mid = "SD"
                num = " .22 LR"
            else
                mid = " .22 LR"
            end
        end
    else
        if barr == "kurz" then
            if fakeNames then
                mid = "C"
            else
                mid = "K"
            end
            if stock == "pdw" then
                num = "-PDW"
            elseif cal == "default" then
                if fakeNames then
                    num = "-4"
                else
                    num = "A4"
                end
            else
                num = ""
            end
        else
            if barr == "sd" then
                mid = "SD"
            end

            if cal == "noburst" or cal == "semi" then
                if stock == "a3" then
                    num = "3"
                elseif stock == "none" then
                    num = "1"
                else
                    num = "2"
                end
            else
                if stock == "a3" then
                    if barr == "sd" then
                        num = "6"
                    else
                        num = "5"
                    end
                elseif stock == "none" then
                    if barr == "sd" then
                        num = "4"
                    end
                else
                    if barr == "sd" then
                        num = "5"
                    end
                end
            end
        end
    end

    return start .. mid .. num
end

-- Animations --

SWEP.Hook_Think = ArcCW.UC.ADSReload

SWEP.Animations = {
    ["idle"] = {
        Source = "idle",
    },
    ["idle_empty"] = {
        Source = "idle",
    },
    ["ready"] = {
        Source = "ready",
        LHIK = true,
        LHIKIn = 0.4,
        LHIKEaseIn = 0.4,
        LHIKEaseOut = 0.15,
        LHIKOut = 0.6,
        SoundTable = {
            {s = {common .. "cloth_2.ogg", common .. "cloth_3.ogg", common .. "cloth_4.ogg", common .. "cloth_6.ogg", common .. "rattle.ogg"}, t = 0.15},
            {s = path .. "rack1.ogg",         t = 0.15, c = ci},
            {s = path .. "rack2.ogg",         t = 0.38, c = ci},
            {s = common .. "rattle2.ogg",         t = 0.75},
        }
    },
    ["draw"] = {
        Source = "draw",
        SoundTable = ArcCW.UC.DrawSounds,
    },
    ["draw_empty"] = {
        Source = "draw_empty",
        SoundTable = ArcCW.UC.DrawSounds,
    },
    ["holster"] = {
        Source = "holster",
        --Time = 0.25,
        SoundTable = ArcCW.UC.HolsterSounds,
    },
    ["holster_empty"] = {
        Source = "holster_empty",
        --Time = 0.25,
        SoundTable = ArcCW.UC.HolsterSounds,
    },
    ["fire"] = {
        Source = "fire",
        Time = 13 / 30,
        ShellEjectAt = 0.03,
        SoundTable = {{ s = {path .. "mech-01.ogg", path .. "mech-02.ogg", path .. "mech-03.ogg", path .. "mech-04.ogg", path .. "mech-05.ogg", path .. "mech-06.ogg"}, t = 0 }},
    },
    ["fire_empty"] = {
        Source = "fire",
        Time = 13 / 30,
        ShellEjectAt = 0.03,
        SoundTable = {{ s = {path .. "mech-01.ogg", path .. "mech-02.ogg", path .. "mech-03.ogg", path .. "mech-04.ogg", path .. "mech-05.ogg", path .. "mech-06.ogg"}, t = 0 }},
    },
    ["fire_iron"] = {
        Source = "idle",
        Time = 13 / 30,
        ShellEjectAt = 0.03,
        SoundTable = {{ s = {path .. "mech-01.ogg", path .. "mech-02.ogg", path .. "mech-03.ogg", path .. "mech-04.ogg", path .. "mech-05.ogg", path .. "mech-06.ogg"}, t = 0 }},
    },
    ["fire_empty_iron"] = {
        Source = "idle",
        Time = 13 / 30,
        ShellEjectAt = 0.03,
        SoundTable = {{ s = {path .. "mech-01.ogg", path .. "mech-02.ogg", path .. "mech-03.ogg", path .. "mech-04.ogg", path .. "mech-05.ogg", path .. "mech-06.ogg"}, t = 0 }},
    },

    ["fix"] = {
        Source = "fix",
        Time = 40 / 30,
        ShellEjectAt = false,
        LHIK = true,
        LHIKIn = 0.4,
        LHIKEaseIn = 0.4,
        LHIKEaseOut = 0.15,
        LHIKOut = 0.4,
        ShellEjectAt = 0.36,
        SoundTable = {
            {s = {common .. "cloth_2.ogg", common .. "cloth_3.ogg", common .. "cloth_4.ogg", common .. "cloth_6.ogg", common .. "rattle.ogg"}, t = 0.15},
            {s = path .. "rack1.ogg",         t = 0.27, c = ci},
            {s = path .. "rack2.ogg",         t = 0.5, c = ci},
        },
    },

    -- 30 Round Reloads --

    ["reload"] = {
        Source = "reload",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_SMG1,
        -- Time = 2,
        MinProgress = 1.2,
        LastClip1OutTime = 2,
        LHIK = true,
        LHIKIn = 0.2,
        LHIKEaseIn = 0.2,
        LHIKEaseOut = 0.15,
        LHIKOut = 0.6,
        SoundTable = {
            {s = {common .. "cloth_2.ogg", common .. "cloth_3.ogg", common .. "cloth_4.ogg", common .. "cloth_6.ogg", common .. "rattle.ogg"}, t = 0},
            {s = common .. "magpouch.ogg", t = 0.05},
            {s = path .. "magout.ogg",        t = 0.4, c = ci},
            {s = {common .. "cloth_2.ogg", common .. "cloth_3.ogg", common .. "cloth_4.ogg", common .. "cloth_6.ogg", common .. "rattle.ogg"}, t = 0.25},
            {s = path .. "magin.ogg",         t = 0.63, c = ci},
            {s = common .. "magpouchin.ogg", t = 1.25},
            {s = common .. "rattle2.ogg",  t = 1.55},
            {s = common .. "shoulder.ogg",  t = 1.5},
        },
    },
    ["reload_empty"] = {
        Source = "reload_empty",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_SMG1,
        -- Time = 90 / 30,
        MinProgress = 2.2,
        LastClip1OutTime = 1.8,
        LHIK = true,
        LHIKIn = 0.3,
        LHIKEaseIn = 0.3,
        LHIKEaseOut = 0.2,
        LHIKOut = 0.55,
        SoundTable = {
            {s = {common .. "cloth_2.ogg", common .. "cloth_3.ogg", common .. "cloth_4.ogg", common .. "cloth_6.ogg", common .. "rattle.ogg"}, t = 0},
            {s = path .. "chback.ogg",         t = 0.066, c = ci},
            {s = path .. "chlock.ogg",         t = 0.2, c = ci},
            {s = common .. "magpouch.ogg", t = 0.4},
            {s = path .. "magout.ogg",        t = 0.86, c = ci},
            {s = {common .. "cloth_2.ogg", common .. "cloth_3.ogg", common .. "cloth_4.ogg", common .. "cloth_6.ogg", common .. "rattle.ogg"}, t = 0.25},
            {s = path .. "magin.ogg",         t = 1.13, c = ci},
            {s = common .. "magdrop_smg.ogg",  t = 1.5},
            {s = {common .. "cloth_2.ogg", common .. "cloth_3.ogg", common .. "cloth_4.ogg", common .. "cloth_6.ogg", common .. "rattle.ogg"}, t = 1.25},
            {s = path .. "chamber.ogg",         t = 2.1, c = ci},
            {s = common .. "rattle2.ogg",  t = 2.4},
            {s = common .. "shoulder.ogg",  t = 2.6},
        },
    },
    ["reload_kurz"] = {
        Source = "reload",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_SMG1,
        -- Time = 2,
        MinProgress = 1.2,
        LastClip1OutTime = 2,
        LHIK = true,
        LHIKIn = 0.2,
        LHIKEaseIn = 0.2,
        LHIKEaseOut = 0.15,
        LHIKOut = 0.6,
        SoundTable = {
            {s = {common .. "cloth_2.ogg", common .. "cloth_3.ogg", common .. "cloth_4.ogg", common .. "cloth_6.ogg", common .. "rattle.ogg"}, t = 0},
            {s = common .. "magpouch.ogg", t = 0.05},
            {s = path .. "magout.ogg",        t = 0.4, c = ci},
            {s = {common .. "cloth_2.ogg", common .. "cloth_3.ogg", common .. "cloth_4.ogg", common .. "cloth_6.ogg", common .. "rattle.ogg"}, t = 0.25},
            {s = path .. "magin.ogg",         t = 0.63, c = ci},
            {s = common .. "magpouchin.ogg", t = 1.25},
            {s = common .. "rattle2.ogg",  t = 1.55},
            {s = common .. "shoulder.ogg",  t = 1.5},
        },
    },
    ["reload_empty_kurz"] = {
        Source = "reload_empty_kurz",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_SMG1,
        -- Time = 90 / 30,
        MinProgress = 2.2,
        LastClip1OutTime = 1.8,
        LHIK = true,
        LHIKIn = 0.3,
        LHIKEaseIn = 0.3,
        LHIKEaseOut = 0.2,
        LHIKOut = 0.55,
        SoundTable = {
            {s = {common .. "cloth_2.ogg", common .. "cloth_3.ogg", common .. "cloth_4.ogg", common .. "cloth_6.ogg", common .. "rattle.ogg"}, t = 0},
            {s = path .. "chback.ogg",         t = 0.066, c = ci},
            {s = path .. "chlock.ogg",         t = 0.2, c = ci},
            {s = common .. "magpouch.ogg", t = 0.4},
            {s = path .. "magout.ogg",        t = 0.86, c = ci},
            {s = {common .. "cloth_2.ogg", common .. "cloth_3.ogg", common .. "cloth_4.ogg", common .. "cloth_6.ogg", common .. "rattle.ogg"}, t = 0.25},
            {s = path .. "magin.ogg",         t = 1.13, c = ci},
            {s = common .. "magdrop_smg.ogg",  t = 1.5},
            {s = {common .. "cloth_2.ogg", common .. "cloth_3.ogg", common .. "cloth_4.ogg", common .. "cloth_6.ogg", common .. "rattle.ogg"}, t = 1.25},
            {s = path .. "chamber.ogg",         t = 2.1, c = ci},
            {s = common .. "rattle2.ogg",  t = 2.4},
            {s = common .. "shoulder.ogg",  t = 2.6},
        },
    },

    -- 15 Round Reloads --

    ["reload_15"] = {
        Source = "reload",--"reload_15",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_SMG1,
        -- Time = 67 / 30,
        MinProgress = 1.2,
        LastClip1OutTime = 67 / 30,
        LHIK = true,
        LHIKIn = 0.2,
        LHIKEaseIn = 0.2,
        LHIKEaseOut = 0.15,
        LHIKOut = 0.6,
        SoundTable = {
            {s = {common .. "cloth_2.ogg", common .. "cloth_3.ogg", common .. "cloth_4.ogg", common .. "cloth_6.ogg", common .. "rattle.ogg"}, t = 0},
            {s = common .. "magpouch.ogg", t = 0.05},
            {s = path .. "magout.ogg",        t = 0.25, c = ci},
            {s = {common .. "cloth_2.ogg", common .. "cloth_3.ogg", common .. "cloth_4.ogg", common .. "cloth_6.ogg", common .. "rattle.ogg"}, t = 0.25},
            {s = path .. "magin.ogg",         t = 0.5, c = ci},
            {s = common .. "magpouchin.ogg", t = 1.25},
            {s = common .. "rattle2.ogg",  t = 1.55},
            {s = common .. "shoulder.ogg",  t = 1.5},
        },
    },
    ["reload_empty_15"] = {
        Source = "reload_empty",--"reload_empty_15",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_SMG1,
        -- Time = 90 / 30,
        MinProgress = 2.2,
        LastClip1OutTime = 1.8,
        LHIK = true,
        LHIKIn = 0.3,
        LHIKEaseIn = 0.3,
        LHIKEaseOut = 0.2,
        LHIKOut = 0.55,
        SoundTable = {
            {s = {common .. "cloth_2.ogg", common .. "cloth_3.ogg", common .. "cloth_4.ogg", common .. "cloth_6.ogg", common .. "rattle.ogg"}, t = 0},
            {s = path .. "chback.ogg",         t = 0.1, c = ci},
            {s = path .. "chlock.ogg",         t = 0.19, c = ci},
            {s = common .. "magpouch.ogg", t = 0.4},
            {s = path .. "magout.ogg",        t = .9, c = ci},
            {s = {common .. "cloth_2.ogg", common .. "cloth_3.ogg", common .. "cloth_4.ogg", common .. "cloth_6.ogg", common .. "rattle.ogg"}, t = 0.25},
            {s = path .. "magin.ogg",         t = 1.2, c = ci},
            {s = common .. "magdrop_smg.ogg",  t = 1.5},
            {s = {common .. "cloth_2.ogg", common .. "cloth_3.ogg", common .. "cloth_4.ogg", common .. "cloth_6.ogg", common .. "rattle.ogg"}, t = 1.25},
            {s = path .. "chamber.ogg",         t = 2.13, c = ci},
            {s = common .. "rattle2.ogg",  t = 2.4},
            {s = common .. "shoulder.ogg",  t = 2.6},
        },
    },
    ["reload_empty_kurz_15"] = {
        Source = "reload_empty_kurz",--"reload_empty_15",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_SMG1,
        -- Time = 90 / 30,
        MinProgress = 2.2,
        LastClip1OutTime = 1.8,
        LHIK = true,
        LHIKIn = 0.3,
        LHIKEaseIn = 0.3,
        LHIKEaseOut = 0.2,
        LHIKOut = 0.55,
        SoundTable = {
            {s = {common .. "cloth_2.ogg", common .. "cloth_3.ogg", common .. "cloth_4.ogg", common .. "cloth_6.ogg", common .. "rattle.ogg"}, t = 0},
            {s = path .. "chback.ogg",         t = 0.1, c = ci},
            {s = path .. "chlock.ogg",         t = 0.19, c = ci},
            {s = common .. "magpouch.ogg", t = 0.4},
            {s = path .. "magout.ogg",        t = .9, c = ci},
            {s = {common .. "cloth_2.ogg", common .. "cloth_3.ogg", common .. "cloth_4.ogg", common .. "cloth_6.ogg", common .. "rattle.ogg"}, t = 0.25},
            {s = path .. "magin.ogg",         t = 1.2, c = ci},
            {s = common .. "magdrop_smg.ogg",  t = 1.5},
            {s = {common .. "cloth_2.ogg", common .. "cloth_3.ogg", common .. "cloth_4.ogg", common .. "cloth_6.ogg", common .. "rattle.ogg"}, t = 1.25},
            {s = path .. "chamber.ogg",         t = 2.13, c = ci},
            {s = common .. "rattle2.ogg",  t = 2.4},
            {s = common .. "shoulder.ogg",  t = 2.6},
        },
    },

    -- 40 Round Reloads --

    ["reload_40"] = {
        Source = "reload",--"reload_40",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_SMG1,
        -- Time = 67 / 30,
        MinProgress = 1.2,
        LastClip1OutTime = 67 / 30,
        LHIK = true,
        LHIKIn = 0.4,
        LHIKEaseIn = 0.4,
        LHIKEaseOut = 0.15,
        LHIKOut = 0.6,
        SoundTable = {
            {s = {common .. "cloth_2.ogg", common .. "cloth_3.ogg", common .. "cloth_4.ogg", common .. "cloth_6.ogg", common .. "rattle.ogg"}, t = 0},
            {s = common .. "magpouch.ogg", t = 0.05},
            {s = path .. "magout.ogg",        t = 0.25, c = ci},
            {s = {common .. "cloth_2.ogg", common .. "cloth_3.ogg", common .. "cloth_4.ogg", common .. "cloth_6.ogg", common .. "rattle.ogg"}, t = 0.25},
            {s = path .. "magin.ogg",         t = 0.5, c = ci},
            {s = common .. "magpouchin.ogg", t = 1.25},
            {s = common .. "rattle2.ogg",  t = 1.55},
            {s = common .. "shoulder.ogg",  t = 1.5},
        },
    },
    ["reload_empty_40"] = {
        Source = "reload_empty",--"reload_empty_40",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_SMG1,
        -- Time = 90 / 30,
        MinProgress = 2.2,
        LastClip1OutTime = 1.8,
        LHIK = true,
        LHIKIn = 0.3,
        LHIKEaseIn = 0.3,
        LHIKEaseOut = 0.2,
        LHIKOut = 0.55,
        SoundTable = {
            {s = {common .. "cloth_2.ogg", common .. "cloth_3.ogg", common .. "cloth_4.ogg", common .. "cloth_6.ogg", common .. "rattle.ogg"}, t = 0},
            {s = path .. "chback.ogg",         t = 0.1, c = ci},
            {s = path .. "chlock.ogg",         t = 0.19, c = ci},
            {s = common .. "magpouch.ogg", t = 0.4},
            {s = path .. "magout.ogg",        t = .9, c = ci},
            {s = {common .. "cloth_2.ogg", common .. "cloth_3.ogg", common .. "cloth_4.ogg", common .. "cloth_6.ogg", common .. "rattle.ogg"}, t = 0.25},
            {s = path .. "magin.ogg",         t = 1.2, c = ci},
            {s = common .. "magdrop_smg.ogg",  t = 1.5},
            {s = {common .. "cloth_2.ogg", common .. "cloth_3.ogg", common .. "cloth_4.ogg", common .. "cloth_6.ogg", common .. "rattle.ogg"}, t = 1.25},
            {s = path .. "chamber.ogg",         t = 2.13, c = ci},
            {s = common .. "rattle2.ogg",  t = 2.4},
            {s = common .. "shoulder.ogg",  t = 2.6},
        },
    },
    ["reload_empty_kurz_40"] = {
        Source = "reload_empty_kurz",--"reload_empty_40",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_SMG1,
        -- Time = 90 / 30,
        MinProgress = 2.2,
        LastClip1OutTime = 1.8,
        LHIK = true,
        LHIKIn = 0.3,
        LHIKEaseIn = 0.3,
        LHIKEaseOut = 0.2,
        LHIKOut = 0.55,
        SoundTable = {
            {s = {common .. "cloth_2.ogg", common .. "cloth_3.ogg", common .. "cloth_4.ogg", common .. "cloth_6.ogg", common .. "rattle.ogg"}, t = 0},
            {s = path .. "chback.ogg",         t = 0.1, c = ci},
            {s = path .. "chlock.ogg",         t = 0.19, c = ci},
            {s = common .. "magpouch.ogg", t = 0.4},
            {s = path .. "magout.ogg",        t = .9, c = ci},
            {s = {common .. "cloth_2.ogg", common .. "cloth_3.ogg", common .. "cloth_4.ogg", common .. "cloth_6.ogg", common .. "rattle.ogg"}, t = 0.25},
            {s = path .. "magin.ogg",         t = 1.2, c = ci},
            {s = common .. "magdrop_smg.ogg",  t = 1.5},
            {s = {common .. "cloth_2.ogg", common .. "cloth_3.ogg", common .. "cloth_4.ogg", common .. "cloth_6.ogg", common .. "rattle.ogg"}, t = 1.25},
            {s = path .. "chamber.ogg",         t = 2.13, c = ci},
            {s = common .. "rattle2.ogg",  t = 2.4},
            {s = common .. "shoulder.ogg",  t = 2.6},
        },
    },

    -- 100 Round Reloads --

    ["reload_drum"] = {
        Source = "reload_drum",--"reload_50",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_SMG1,
        -- Time = 67 / 30,
        MinProgress = 1.6,
        LastClip1OutTime = 1,
        LHIK = true,
        LHIKIn = 0.4,
        LHIKEaseIn = 0.4,
        LHIKEaseOut = 0.15,
        LHIKOut = 0.9,
        SoundTable = {
            {s = {common .. "cloth_2.ogg", common .. "cloth_3.ogg", common .. "cloth_4.ogg", common .. "cloth_6.ogg", common .. "rattle.ogg"}, t = 0},
            {s = path .. "magout.ogg",        t = 0.25, c = ci},
            {s = {common .. "cloth_2.ogg", common .. "cloth_3.ogg", common .. "cloth_4.ogg", common .. "cloth_6.ogg", common .. "rattle.ogg"}, t = 0.25},
            {s = {common .. "cloth_2.ogg", common .. "cloth_3.ogg", common .. "cloth_4.ogg", common .. "cloth_6.ogg", common .. "rattle.ogg"}, t = 0.75},
            {s = path .. "magin.ogg",         t = 1.15, c = ci},
            {s = common .. "cloth_4.ogg",  t = 1.65},
            {s = common .. "shoulder.ogg",  t = 1.95},
        },
    },
    ["reload_empty_drum"] = {
        Source = "reload_empty_drum",--"reload_empty_50",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_SMG1,
        -- Time = 90 / 30,
        MinProgress = 2.4,
        LastClip1OutTime = 1.8,
        LHIK = true,
        LHIKIn = 0.3,
        LHIKEaseIn = 0.3,
        LHIKEaseOut = 0.2,
        LHIKOut = 1,
        SoundTable = {
            {s = {common .. "cloth_2.ogg", common .. "cloth_3.ogg", common .. "cloth_4.ogg", common .. "cloth_6.ogg", common .. "rattle.ogg"}, t = 0},
            {s = path .. "magout.ogg",        t = 0.25, c = ci},
            {s = {common .. "cloth_2.ogg", common .. "cloth_3.ogg", common .. "cloth_4.ogg", common .. "cloth_6.ogg", common .. "rattle.ogg"}, t = 0.25},
            {s = {common .. "cloth_2.ogg", common .. "cloth_3.ogg", common .. "cloth_4.ogg", common .. "cloth_6.ogg", common .. "rattle.ogg"}, t = 0.75},
            {s = common .. "magdrop.ogg",  t = 1.0},
            {s = path .. "magin.ogg",         t = 1.15, c = ci},
            {s = common .. "cloth_4.ogg",  t = 1.65},
            {s = path .. "chback.ogg",         t = 2.25, c = ci},
            {s = path .. "chforward.ogg",         t = 2.1, c = ci},
            {s = common .. "shoulder.ogg",  t = 2.7},
        },
    },
}

SWEP.AutosolveSourceSeq = "idle"

SWEP.Attachments = {
    {
        PrintName = "Optic",
        DefaultAttName = "Iron Sights",
        Slot = {"optic_lp","optic","ur_mp5_optic"}, -- ,"optic"
        Bone = "body",
        Offset = {
            vpos = Vector(-0.1, -1.6, 3),
            vang = Angle(90, 0, -90),
        },
        CorrectivePos = Vector(-0.07, 0, 0),
        CorrectiveAng = Angle(1, 0.5, -5.5),
        VMScale = Vector(.9, .9, .9),
        InstalledEles = {"ur_mp5_rail_optic"}
    },
    {
        PrintName = "Upper Receiver",
        DefaultAttName = "9\" Standard Upper",
        DefaultAttIcon = Material("entities/att/acwatt_ur_mp5_body.png", "smooth mips"),
        Slot = "ur_mp5_barrel",
        Bone = "body",
        Offset = {
            vpos = Vector(2.6, -3.7, -17.3),
            vang = Angle(90, 0, -90),
        },
    },
    {
        PrintName = "Lower Receiver",
        DefaultAttName = "Navy Lower",
        DefaultAttIcon = Material("entities/att/acwatt_ur_mp5_caliber.png", "smooth mips"),
        Slot = "ur_mp5_caliber",
        DefaultEles = {"receiver_lower_0"}
    },
    {
        PrintName = "Muzzle",
        DefaultAttName = "Standard Muzzle",
        Slot = {"muzzle"},
        Bone = "body",
        Offset = {
            vpos = Vector(0, 0.3, 14.8),
            vang = Angle(90, 0, -90),
        },
        ExcludeFlags = {"barrel_sd","barrel_sword"}
    },
    {
        PrintName = "Handguard",
        DefaultAttName = "Tropical Handguard",
        Slot = {"ur_mp5_hg"},
        Bone = "body",
        Offset = {
            vpos = Vector(0, .9, 10),
            vang = Angle(90, 0, -90),
        },
        --VMScale = Vector(.8, .8, .8),
    },
    {
        PrintName = "Underbarrel",
        Slot = {"foregrip"},
        Bone = "body",
        Offset = {
            vpos = Vector(0, .9, 10),
            vang = Angle(90, 0, -90),
        },
        --VMScale = Vector(.8, .8, .8),
        InstalledEles = {"ur_mp5_rail_fg"},
        GivesFlags = {"mp5_rail"},
        ExcludeFlags = {"mp5_badhg"},
		MergeSlots = {15},
    },
    {
        PrintName = "Tactical",
        Slot = {"tac_pistol"},
        Bone = "body",
        Offset = {
            vpos = Vector(-.61, 0.8, 12),
            vang = Angle(90, 0, 180),
        },
        VMScale = Vector(.8,.8,.8),
        --InstalledEles = {"ur_mp5_clamp"}
        GivesFlags = {"mp5_rail"},
    },
    {
        PrintName = "Stock",
        Slot = {"ur_mp5_stock"},
        DefaultAttName = "Full Stock",
        DefaultAttIcon = Material("entities/att/acwatt_ur_mp5_stock.png", "smooth mips"),
    },
    {
        PrintName = "Magazine",
        Slot = {"ur_mp5_mag"},
        DefaultAttName = "30-Round Mag",
        DefaultAttIcon = Material("entities/att/acwatt_ur_mp5_mag_32.png", "smooth mips"),
        ExcludeFlags = {"ur_mp5_cal_40sw","ur_mp5_cal_10mm"}
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
        DefaultAttName = "Standard Load",
        ExcludeFlags = {"barrel_sd"}
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
        Slot = {"charm", "fml_charm", "mp5_charm"},
        FreeSlot = true,
        Bone = "Body",
        Offset = {
            vpos = Vector(0.6, .8, 5.5),
            vang = Angle(90, 0, -90),
        },
    },
	{
		PrintName = "M203 slot",
		Slot = "uc_ubgl",
		Bone = "Body",
		Offset = {
			vpos = Vector(0, 0.2, 7.9),
			vang = Angle(90, 0, -90),
		},
		Hidden = true,
	}
}

-- SWEP.AttachmentOverrides = {
--     ["uc_grip_handstop"] = {
--         LHIK = false
--     }
-- } -- THIS SHIT DOESN'T WORK
