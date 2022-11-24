SWEP.Base = "arccw_base"
SWEP.Spawnable = true -- this obviously has to be set to true
SWEP.Category = "ArcCW - Urban Coalition" -- edit this if you like
SWEP.UC_CategoryPack = "2Urban Renewal"
SWEP.AdminOnly = false

SWEP.PrintName = "AVR-59" -- make this something russian and cool
SWEP.TrueName = "AKM"

if GetConVar("arccw_truenames"):GetBool() then
    SWEP.PrintName = SWEP.TrueName
end

local descStart = "One of the first assault rifles, wielded around the world to this day for its cheap price, ease of maintenance, and infallible reliability. Consequently, it has become the most popular rifle to ever enter service. One fifth of all small arms in existence can be traced to this design.\n\n"
local desc_762 = "The default pattern is well-rounded and hard-hitting, but recoils harder than other weapons of its class."
local desc_545 = "With a heavier frame than other service rifles, the AK-74 platform is accurate and easy to control."
local desc_74u = "This PDW variant sacrifices range and control to fit the power of a rifle into a very compact form."
local desc_9mm = "Well-rounded submachine gun that shares common parts with AK rifles. For its widespread use by a variety of security divisions, it can be described as a Russian counterpart to the MP5.\n\nThe moniker \"Vityaz\" translates to \"knight.\""
local desc_12g = "Magazine-fed semi automatic shotgun based on the Kalashnikov pattern. It is a popular civilian weapon due to the comparative simplicity of Russia's smoothbore gun licenses, but it has also been used by security firms around the world.\n\nIts low accuracy is compensated for by a much faster reload time than tube-fed designs."
local desc_556 = "This international variant has a lower damage output than the Russian cartridges, but boasts substantially lower recoil."
local desc_366 = "AK-pattern shotgun chambered in .366 TKM, a sporting cartridge that uses reshaped M43 casings. It is considered a shotgun becuase of its smoothbore barrel, a change made to circumvent Russian rifle laws. Despite the lack of rifling, it achieves similar ballistics to a proper AK-47."

SWEP.Trivia_Class = "Assault Rifle"
SWEP.Trivia_Desc = descStart..desc_762
SWEP.Trivia_Manufacturer = "Izhmash"
SWEP.Trivia_Calibre = "7.62x39mm Soviet"
SWEP.Trivia_Mechanism = "Gas-Operated Rotating Bolt"
SWEP.Trivia_Country = "Soviet Union"
SWEP.Trivia_Year = 1959

SWEP.Slot = 2
SWEP.CamAttachment = 3

SWEP.UseHands = true

SWEP.ViewModel = "models/weapons/arccw/c_ur_ak.mdl"
SWEP.WorldModel = "models/weapons/arccw/c_ur_ak.mdl"
SWEP.ViewModelFOV = 70

SWEP.DefaultBodygroups = "010000000120"

-- Damage --

SWEP.Damage = 50 -- 2 shot close range kill
SWEP.DamageMin = 25 -- 4 shot long range kill
SWEP.RangeMin = 30
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
local rutle = {common .. "movement-rifle-01.ogg",common .. "movement-rifle-02.ogg",common .. "movement-rifle-03.ogg",common .. "movement-rifle-04.ogg"}
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

SWEP.DistantShootSoundOutdoors = {
    path .. "fire-dist-01.ogg",
    path .. "fire-dist-02.ogg",
    path .. "fire-dist-03.ogg",
    path .. "fire-dist-04.ogg",
    path .. "fire-dist-05.ogg",
    path .. "fire-dist-06.ogg"
}
SWEP.DistantShootSoundIndoors = {
    common .. "fire-dist-int-rifle-01.ogg",
    common .. "fire-dist-int-rifle-02.ogg",
    common .. "fire-dist-int-rifle-03.ogg",
    common .. "fire-dist-int-rifle-04.ogg",
    common .. "fire-dist-int-rifle-05.ogg",
    common .. "fire-dist-int-rifle-06.ogg"
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

SWEP.MuzzleEffect = "muzzleflash_6"
SWEP.ShellEffect = "arccw_uc_shelleffect"
SWEP.ShellModel = "models/weapons/arccw/uc_shells/762x39.mdl"
SWEP.ShellPitch = 90
SWEP.ShellScale = 1
SWEP.ShellRotateAngle = Angle(0, 0, 0)
SWEP.UC_ShellColor = Color(0.7*255, 0.2*255, 0.2*255)

SWEP.MuzzleEffectAttachment = 1 -- which attachment to put the muzzle on
SWEP.CaseEffectAttachment = 2 -- which attachment to put the case effect on

SWEP.BulletBones = {
    [1] = "tag_mag2",
}

SWEP.IronSightStruct = {
    Pos = Vector(-2.61, -2, 0.45),
    Ang = Angle(0.60, 0.274, 5.53),
    Magnification = 1.1,
    SwitchToSound = "", -- sound that plays when switching to this sight
    CrosshairInSights = false
}
SWEP.LaserOffsetAngle = Angle(0, 0, 0)
SWEP.LaserIronsAngle = Angle(0, 0, 0)

SWEP.HoldtypeHolstered = "passive"
SWEP.HoldtypeActive = "ar2"
SWEP.HoldtypeSights = "rpg"

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2

SWEP.ActivePos = Vector(0.5, 0, 0)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.SprintPos = Vector(0, 0, 0)
SWEP.SprintAng = Angle(0, 0, 0)

SWEP.CrouchPos = Vector(-2, -2, -0.6)
SWEP.CrouchAng = Angle(0, 0, -14)

SWEP.HolsterPos = Vector(-1, -1, 1.2)
SWEP.HolsterAng = Angle(-15, 8, -10)

SWEP.BarrelOffsetSighted = Vector(0, 0, 0)
SWEP.BarrelOffsetHip = Vector(0, 0, 0)

-- SWEP.CustomizePos = Vector(6.5, 0.8, -0.2)
-- SWEP.CustomizeAng = Angle(8, 22, 15)

SWEP.CustomizePos = Vector(0, 0, 0)
SWEP.CustomizeAng = Angle(0, 0, 0)

SWEP.BarrelLength = 24

SWEP.AttachmentElements = {
    ["barrel_74m"] = {
        VMBodygroups = {{ind = 1, bg = 3}}
    },
    ["barrel_74m_red"] = {
        VMBodygroups = {{ind = 1, bg = 10}}
    },
    ["barrel_74m_green"] = {
        VMBodygroups = {{ind = 1, bg = 11}}
    },
    ["barrel_akm"] = {
        VMBodygroups = {{ind = 1, bg = 0}}
    },
    ["barrel_alpha"] = {
        VMBodygroups = {
            {ind = 1, bg = 7},
            -- {ind = 7, bg = 6},
            -- {ind = 8, bg = 2},
        },
    },
    ["barrel_rpk"] = {
        VMBodygroups = {
            {ind = 7, bg = 1},
            {ind = 8, bg = 2}
        },
        AttPosMods = {[4] = {
            vpos = Vector(0, 32.2, 2.6),
            vang = Angle(0, 270, 0),
        }},
	Override_IronSightStruct = {
    		Pos = Vector(-2.625, -2, 0.68),
    		Ang = Angle(-0.1, 0.274, 5.53),
    		Magnification = 1,
	}
    },
    ["barrel_rpk74m"] = {
        VMBodygroups = {
            {ind = 1, bg = 5},
            -- {ind = 7, bg = 1},
            -- {ind = 8, bg = 2}
        },
        -- AttPosMods = {[4] = {
        --     vpos = Vector(0, 32.2, 2.6),
        --     vang = Angle(0, 270, 0),
        -- }},
        -- Override_IronSightStruct = {
    	-- 	Pos = Vector(-2.625, -2, 0.68),
    	-- 	Ang = Angle(-0.1, 0.274, 5.53),
    	-- 	Magnification = 1,
	    -- }
    },
    ["barrel_krinkov"] = {
        VMBodygroups = {
            {ind = 1, bg = 6},
            {ind = 7, bg = 5},
            {ind = 8, bg = 2},
            {ind = 4, bg = 1},
            {ind = 5, bg = 1}
        },
        AttPosMods = {
            [4] = {
                vpos = Vector(0, 15.4, 2.85),
                vang = Angle(0, 270, 0),
            },
            [7] = {
                vpos = Vector(0,11,1.7),
                vang = Angle(90, -90, -90),
            },
            [8] = {
                vpos = Vector(-0.8, 11.75, 2.9),
                vang = Angle(-90, 270, 0),
                wang = Angle(-90, 270, 0),
            }
        },
        Override_IronSightStruct = {
            Pos = Vector(-2.638, -2, 0.9),
            Ang = Angle(-1, 0.12, 5.53),
            Magnification = 1,
        }
    },
    ["barrel_vityaz"] = {
        VMBodygroups = {
            {ind = 1, bg = 8},
            {ind = 7, bg = 5},
            {ind = 8, bg = 2},
            {ind = 5, bg = 1}
        },
        AttPosMods = {
            [4] = {
                vpos = Vector(0, 17.2, 2.85),
                vang = Angle(0, 270, 0),
            },
            [7] = {
                vpos = Vector(0,11,1.7),
                vang = Angle(90, -90, -90),
            },
            [8] = {
                vpos = Vector(-0.8, 11.75, 2.9),
                vang = Angle(-90, 270, 0),
                wang = Angle(-90, 270, 0),
            }
        },
        Override_IronSightStruct = {
            Pos = Vector(-2.62, -2, 0.75),
            Ang = Angle(-0.42, 0.2, 5.53),
            Magnification = 1,
        }
    },
    ["barrel_t56"] = {
        VMBodygroups = {
            {ind =7, bg = 3},
            {ind = 11, bg = 2},
            {ind = 8, bg = 2}
        },
        AttPosMods = {
            [7] = {
                vpos = Vector(-0.4, 16.75, 2.8),
                vang = Angle(-90, 270, 0),
            },
        }
    },
    ["barrel_t56_ext"] = {
        VMBodygroups = {
            {ind = 7, bg = 3},
            {ind = 11, bg = 3},
            {ind = 8, bg = 2}
        },
        AttPosMods = {
            [7] = {
                vpos = Vector(-0.4, 16.75, 2.8),
                vang = Angle(-90, 270, 0),
            },
        }
    },
    ["barrel_vepr"] = {
        VMBodygroups = {
            --{ind = 1, bg = 9},
            {ind = 7, bg = 4},
            {ind = 8, bg = 2}
        },
        AttPosMods = {[4] = {
            vpos = Vector(0, 28.5, 2.7),
            vang = Angle(0, 270, -0),
        }},
        Override_IronSightStruct = {
            Pos = Vector(-2.63, -2, 0.76),
            Ang = Angle(-0.3, 0.18, 5.53),
            Magnification = 1,
        }
    },

    ["ur_ak_hg_vepr"] = {
        VMBodygroups = {
            {ind = 1, bg = 9},
        },
    },

    ["barrel_105"] = {
        VMBodygroups = {
            --{ind = 1, bg = 3},
            {ind = 7, bg = 2},
            {ind = 8, bg = 2}
        },
        AttPosMods = {[4] = {
            vpos = Vector(0, 20.6, 2.7),
            vang = Angle(0, 270, 0),
        }},
        Override_IronSightStruct = {
            Pos = Vector(-2.6, -2, 0.48),
            Ang = Angle(0.6, 0.265, 5.53),
            Magnification = 1,
        }
    },
    ["barrel_dong"] = {
        VMBodygroups = {{ind = 1, bg = 2}}, -- This will show up regardless of barrel selection because underbarrel atts are always processed after barrel atts
        AttPosMods = {[6] = {
            SlideAmount = {
                vmin = Vector(0,12,1.9),
                vmax = Vector(0,12,1.9)
            },
        }}
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
    ["stock_aks"] = {
        VMBodygroups = {
            {ind = 6, bg = 3},
            {ind = 3, bg = 1},
    }
    },
    ["stock_aks_folded"] = {
        VMBodygroups = {
            {ind = 6, bg = 10},
            {ind = 3, bg = 1},
        }

    },
    ["stock_underfolder"] = {
        VMBodygroups = {{ind = 6, bg = 2}}
    },
    ["stock_underfolder_folded"] = {
        VMBodygroups = {{ind = 6, bg = 1}}
    },
    ["stock_ak74m"] = {
        VMBodygroups = {
            {ind = 3, bg = 1},
            {ind = 6, bg = 12}
        }
    },
    ["stock_ak74m_folded"] = {
        VMBodygroups = {
            {ind = 3, bg = 1},
            {ind = 6, bg = 13}
        }
    },
    ["stock_rpk"] = {
        VMBodygroups = {{ind = 6, bg = 5}}
    },
    ["stock_akn"] = {
        VMBodygroups = {
            {ind = 6, bg = 8},
            {ind = 3, bg = 1},
        }
    },
    ["stock_skeletal"] = {
        VMBodygroups = {
            {ind = 6, bg = 6},
            {ind = 3, bg = 1},
        }
    },
    ["stock_vepr"] = {
        VMBodygroups = {
            {ind = 6, bg = 7},
            {ind = 9, bg = 4}
        }
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
    ["mag_762_bakelite"] = {
        VMBodygroups = {{ind = 2, bg = 11}}
    },
    ["mag_762_pmag"] = {
        VMBodygroups = {{ind = 2, bg = 12}}
    },
    ["mag_545_30"] = {
        VMBodygroups = {{ind = 2, bg = 2}}
    },
    ["mag_556_30"] = {
        VMBodygroups = {{ind = 2, bg = 10}}
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
        VMBodygroups = {{ind = 9, bg = 0}}
    },
    ["grip_alpha"] = {
        VMBodygroups = {{ind = 9, bg = 2}}
    },
    ["grip_saiga"] = {
        VMBodygroups = {{ind = 9, bg = 3}}
    },

    ["cover_ribbed"] = {
        VMBodygroups = {{ind = 10, bg = 0}}
    },
    ["cover_alpha"] = {
        VMBodygroups = {{ind = 10, bg = 1}},
        AttPosMods = {[1] = {
            vpos = Vector(0, 3.5, 4.68),
            vang = Angle(0, -90, 0),
        }}
    },
    ["optic_raillaser"] = {
        AttPosMods = {
            [8] = {
                vpos = Vector(0.95, 2.5, 4.05),
                vang = Angle(0, -90, 125),
            },
        },
    },
    ["cover_ak12"] = {
        VMBodygroups = {{ind = 10, bg = 4}},
        AttPosMods = {[1] = {
            vpos = Vector(0, 3.5, 4.67),
            vang = Angle(0, -90, 0),
        }}
    },

    ["grip_ak12"] = {
        VMBodygroups = {{ind = 9, bg = 5}}
    },
    ["stock_ak12"] = {
        VMBodygroups = {{ind = 6, bg = 11}},
    },
    ["handguard_ak12"] = {
        VMBodygroups = {{ind = 1, bg = 12}},
        --[[AttPosMods = {[6] = {
            vpos = Vector(0, 11.75, 2.2),
            vang = Angle(90, -90, -90),
        }}]]
        AttPosMods = {
            [8] = {
                vpos = Vector(-0.7, 13.5, 3.8),
                vang = Angle(-90, 270, 0),
                wang = Angle(-90, 270, 0),
            },
            [7] = {
                vpos = Vector(0, 11.75, 2.2),
                vang = Angle(90, -90, -90),
            }
        },
    },
    ["barrel_ak12"] = {
        VMBodygroups = {
            {ind = 7, bg = 6},
            {ind = 8, bg = 2}
        },
        AttPosMods = {[4] = {
            vpos = Vector(0, 23.5, 2.8),
            vang = Angle(0, 270, 0),
        }},
        Override_IronSightStruct = {
            Pos = Vector(-2.68, 0, 1.3),
            Ang = Angle(-2.02, 0.028, 5.53),
            Magnification = 1,
        }
        --RequireFlags = {"cover_rail"},
    },
    ["muzzle_ak12"] = {
        VMBodygroups = {{ind = 8, bg = 2}},
    },
    ["reciever_ak12"] = {
        VMBodygroups = {{ind = 0, bg = 1}}
    },
    ["sight_ak12"] = {
        VMBodygroups = {{ind = 4, bg = 3}},
        RequireFlags = {"cover_rail"},
        Override_IronSightStruct = {
            Pos = Vector(-2.63, 0, 0.79),
            Ang = Angle(-1.12, 0.116, 5.53),
            Magnification = 1,
        },
        Override_IronSightStruct_Priority = 2,
    },
    ["mag_545_ak12"] = {
        VMBodygroups = {{ind = 2, bg = 7}}
    },
    ["mag_545_black"] = {
        VMBodygroups = {{ind = 2, bg = 9}}
    },
    ["mag_308"] = {
        VMBodygroups = {{ind = 2, bg = 8}}
    },

    ["cover_trail"] = {
        VMBodygroups = {{ind = 4, bg = 4}},
        AttPosMods = {[1] = {
            vpos = Vector(0, 8.2, 5.20),
            vang = Angle(0, -90, 0),
        }}
    },
}

SWEP.Hook_ModifyBodygroups = function(wep, data)
    local akOptics = {["uc_optic_pso1"] = true, ["uc_optic_kobra"] = true} -- Will need to update this list if more AK optics get added
    local railHgs = {["default"] = true, ["akm"] = true, ["t56"] = true, ["rpk"] = true, ["vepr"] = true}
    local bipodBarrs = {["rpk"] = true, ["rpk74m"] = true}
    local polRailHgs = {["74m"] = true, ["rpk74m"] = true, ["105"] = true}
    local shortBarrs = {["krinkov"] = true, ["vityaz"] = true}
    local intCals = {["545"] = true, ["556"] = true, ["545_ak12"] = true}

    local optic = wep.Attachments[1].Installed
    local barr = string.Replace(wep.Attachments[2].Installed or "default","ur_ak_barrel_","")
    local hg = string.Replace(wep.Attachments[3].Installed or "default","ur_ak_hg_","")
    local muzz = wep.Attachments[4].Installed
    local cal = string.Replace(wep.Attachments[5].Installed or "default","ur_ak_cal_","")
    local ub = wep.Attachments[7].Installed-- or wep.Attachments[17].Installed
    local upper = wep.Attachments[15].Installed
    local alpha = (upper == "ur_ak_cover_alpha" or upper == "ur_ak_cover_ak12" or upper == "ur_ak_cover_truniun_rail")
    local taclaser = (wep.Attachments[16].Installed == "ur_ak_charm_tl")

    local vm = data.vm
    if !IsValid(vm) then return end

    if !muzz or muzz == "ur_ak_muzzle_bayonet" then
        if barr == "ak12" and (cal == "default" or intCals[cal]) then
            vm:SetBodygroup(8,4)
        elseif barr == "default" or barr == "t56" then
            if cal == "default" then
                vm:SetBodygroup(8,1)
            elseif intCals[cal] then
                vm:SetBodygroup(8,3)
            else
                vm:SetBodygroup(8,0)
            end
        end
    else
        vm:SetBodygroup(8,0)
    end

    if taclaser and !akOptics[optic] then
        vm:SetBodygroup(12,2)
    else
        if optic and !alpha and !akOptics[optic] then
            vm:SetBodygroup(12,1)
        else
            vm:SetBodygroup(12,0)
        end
    end

    if ub and hg ~= "ur_ak_hg_dong" and !shortBarrs[barr] then
        if railHgs[hg] then
            vm:SetBodygroup(1,13)
        elseif polRailHgs[hg] then
            vm:SetBodygroup(1,4)
        end
    end

    if bipodBarrs[barr] then
        vm:SetBodygroup(7, (wep:GetInBipod() and (wep.LastAnimKey ~= "enter_bipod" or wep.LastAnimFinishTime < CurTime())) and 7 or 1)
    end
end

SWEP.ExtraSightDist = 2
SWEP.GuaranteeLaser = false

SWEP.WorldModelOffset = {
    pos = Vector(-7, 4, -4.5),
    ang = Angle(-10, 0, 180)
}

SWEP.MirrorVMWM = true

SWEP.Attachments = {
    {
        PrintName = "Optic",
        DefaultAttName = "Iron Sights",
        Slot = {"optic","optic_sniper","ur_ak_optic"},
        Bone = "tag_weapon",
        Offset = {
            vpos = Vector(0, 2, 4.92),
            vang = Angle(0, -90, 0),
        },
        CorrectivePos = Vector(0, 0, -0.0),
        CorrectiveAng = Angle(-1.9, 180.15, 0),
        VMScale = Vector(1, 1, 1),
        -- SlideAmount = {
        --     vmin = Vector(0, 2-1, 4.55),
        --     vmax = Vector(0, 2+0.5, 4.55),
        -- },
--        RequireFlags = {"cover_rail"},
--        HideIfBlocked = true,
        -- InstalledEles = {"optic_rail"},
    },
    {
        PrintName = "Barrel",
        DefaultAttName = "16\" Standard Barrel",
        DefaultAttIcon = Material("entities/att/ur_ak/barrel/std.png", "mips smooth"),
        Slot = "ur_ak_barrel",
    },
    {
        PrintName = "Handguard",
        DefaultAttName = "Factory Handguard",
        DefaultAttIcon = Material("entities/att/ur_ak/handguards/std.png", "mips smooth"),
        Slot = "ur_ak_hg",
        ExcludeFlags = {"barrel_carbine"},
    },
    {
        PrintName = "Muzzle",
        DefaultAttName = "Standard Muzzle",
        Slot = {"muzzle","ur_ak_muzzle"},
        Bone = "tag_weapon",
        VMScale = Vector(1.2, 1.2, 1.2),
        WMScale = VMScale,
        Offset = {
            vpos = Vector(0, 24.6, 2.7),
            vang = Angle(0, 270, 0),
        },
        ExcludeFlags = {"ur_ak_nomuzzle"},
        --Installed = "ur_ak_muzzle_akm"
    },
    {
        PrintName = "Receiver",
        DefaultAttName = "7.62x39mm Reciever",
        DefaultAttIcon = Material("entities/att/uc_bullets/762x39.png", "mips smooth"),
        Slot = {"ur_ak_cal"},
        Bone = "tag_weapon",
        Offset = {
            vpos = Vector(2.8, -4.2, -11.5),
            vang = Angle(90, 0, -90),
        },
        DefaultFlags = {"cal_default"}
    },
    {
        PrintName = "Magazine",
        Slot = {"ur_ak_mag"},
        DefaultAttName = "30-Round Mag",
        DefaultAttIcon = Material("entities/att/ur_ak/magazines/762_30.png", "mips smooth"),
    },
    {
        PrintName = "Underbarrel",
        Slot = {"foregrip","ur_ak_ub"},
        Bone = "tag_weapon",
        Offset = {
            vpos = Vector(0,12, 1.9),
            vang = Angle(90, -90, -90),
        },
        VMScale = Vector(1, 1, 1),
        SlideAmount = {
            vmin = Vector(0,10.5,1.9),
            vmax = Vector(0,13.5,1.9)
        },
        InstalledEles = {"rail_fg"},
        ExcludeFlags = {"ak_noubs"},
        MergeSlots = {17},
    },
    {
        PrintName = "Tactical",
        Slot = {"tac"},
        Bone = "tag_weapon",
        Offset = {
            vpos = Vector(0, 19.6, 2.1),
            vang = Angle(0, 270, 0),
        },
        GivesFlags = {"tac"},
        --InstalledEles = {"ud_m16_clamp_fullsize"}
    },
    {
        PrintName = "Grip Type",
        Slot = {"ur_ak_grip"},
        DefaultAttName = "Factory Grip",
        DefaultAttIcon = Material("entities/att/ur_ak/grip_modern.png", "mips smooth"),
        ExcludeFlags = {"stock_vepr"},
    },
    {
        PrintName = "Stock",
        Slot = {"ur_ak_stock"},
        DefaultAttName = "Factory Stock",
        DefaultAttIcon = Material("entities/att/ur_ak/stock/3.png", "mips smooth"),
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
        PrintName = "Dust Cover",
        DefaultAttName = "Ribbed Dust Cover",
        DefaultAttIcon = Material("entities/att/ur_ak/dustcover_stock.png", "mips smooth"),
        Slot = {"ur_ak_cover"},
        FreeSlot = true,
    },
    {
        PrintName = "Charm",
        Slot = {"charm", "fml_charm", "ur_ak_charm"},
        FreeSlot = true,
        Bone = "tag_weapon",
        Offset = {
            vpos = Vector(0.6, 6.7, 2.2),
            vang = Angle(90, -90, -90),
        },
    },
    {
        PrintName = "M203 slot",
        Slot = "uc_ubgl",
        Bone = "tag_weapon",
        Offset = {
            vpos = Vector(0, 9.9, 2.9),
            vang = Angle(90, -90, -90),
        },
        InstalledEles = {"rail_fg"},
        ExcludeFlags = {"ak_noubs","barrel_rpk"},
        Hidden = true,
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
    local foldStocks = {["underfolder"] = true,["aks"] = true}
    local akCals = {["762"] = true,["545"] = true}
    local shortBarrs = {["krinkov"] = true,["vityaz"] = true}
    local fakeNames = !GetConVar("arccw_truenames"):GetBool()

    local start = "AK"
    local mid = ""
    local post = "M"
    local noN = false

    if fakeNames then
        start = "AVR"
        post = "-59"
    end

    local atts = wep.Attachments
    local barr = string.Replace(atts[2].Installed or "default", "ur_ak_barrel_", "")
    local hg = string.Replace(atts[3].Installed or "default", "ur_ak_hg_", "")
    local cal = string.Replace(atts[5].Installed or "762", "ur_ak_cal_", "")
    local stock = string.Replace(atts[10].Installed or "default", "ur_ak_stock_", "")
    local upper = atts[11].Installed
    local alpha = (upper == "ur_ak_cover_alpha" or upper == "ur_ak_cover_ak12" or upper == "ur_ak_cover_truniun_rail")
    local ak12 = alpha and barr == "ak12"

    wep.Trivia_Desc = descStart .. desc_762
    wep.Trivia_Mechanism = "Gas-Operated Rotating Bolt"

    if alpha then noN = true end

    if atts[14].Installed == "uc_fg_civvy" then
        start = "Vepr"
        if cal == "12g" then
            post = "-12"
            wep.Trivia_Desc = desc_12g
        elseif cal == "545_ak12" or cal == "545" then
            post = " 5.45"
            wep.Trivia_Desc = descStart .. desc_545
        elseif cal == "762" then
            post = " 7.62"
        elseif cal == "9mm" then
            start = "Saiga"
            post = "-9"
            wep.Trivia_Desc = desc_9mm
            wep.Trivia_Mechanism = "Blowback"
        else
            post = " ." .. cal
        end
        return start .. post
    end

    if cal == "9mm" then
        start = "PP"
        post = "-19 Vityaz"
        wep.Trivia_Desc = desc_9mm
        wep.Trivia_Mechanism = "Blowback"
    elseif cal == "12g" then
        start = "Saiga"
        if shortBarrs[barr] then
            post = "-12K"
        else
            post = "-12"
        end
        wep.Trivia_Desc = desc_12g
    elseif cal == "366" then
        if barr == "vepr" or string.find(atts[14].Installed or "","rifling") then
            start = "Vepr"
            post = " .366"
        else
            start = "VPO"
            post = "-209"
            wep.Trivia_Desc = desc_366
        end
    elseif cal == "308" then
        post = "-308"
    elseif cal == "545_ak12" or ak12 then
        noN = true
        if string.StartWith(cal,"545") then
            post = "-12"
            wep.Trivia_Desc = descStart .. desc_545
        elseif cal == "762" then
            post = "-15"
        elseif cal == "556" then
            post = "-18"
        end
        if string.EndsWith(barr,"105") or shortBarrs[barr] then
            post = post .."K"
        end
    elseif barr == "rpk" or barr == "rpk74m" then
        start = "RPK"
        if barr == "rpk" and cal == "762" then
            post = ""
        end
    elseif cal == "762" then
        if barr == "t56" then
            noN = true
            if fakeNames then
                start = "Yucha"
                post = " 7"
            else
                start = "Type "
                post = "56"
            end
        elseif barr == "74m" then
            noN = true
            post = "-103"
        end
    elseif cal == "556" then
        if string.EndsWith(barr,"105") then
            post = "-102"
        else
            post = "-101"
        end
        wep.Trivia_Desc = descStart .. desc_556
    end

    if cal == "545" then
        wep.Trivia_Desc = descStart .. desc_545
        if hg == "74m" or hg == "rpk74m" or hg == "ak12" then
            noN = true
            post = "-74M"
        elseif shortBarrs[barr] then
            post = "-74U"
            wep.Trivia_Desc = descStart .. desc_74u
        else
            post = "-74"
        end
    end

    if foldStocks[stock] and akCals[cal] and !string.StartWith(barr,"105") then
        if cal == "762" then
            if barr == "t56" then
                post = post .. "-1"
            else
                post = "MS"
            end
        else
            mid = "S"
        end
    end

    if akCals[cal] then
        if string.EndsWith(barr,"105") then
            noN = true
            if cal == "545" then
                post = "-105"
            elseif cal == "762" then
                post = "-104"
            elseif cal == "556" then
                post = "-102"
            end
        else
            -- if shortBarrs[barr] then
            --     post = post .. "U" -- I know I said the AK-47U doesn't exist, but we have fucking Glock 44 Autos so I warmed up to it
            --     wep.Trivia_Desc = descStart .. desc_74u
            -- end
            if !noN and atts[1].Installed then
                post = post .. "N"
            end
        end
        
    end

    return start .. mid .. post
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
        Source = {"fire"},
        Time = 0.5,
        ShellEjectAt = 0,
        SoundTable = {{ s = {path .. "mech-01.ogg", path .. "mech-02.ogg", path .. "mech-03.ogg", path .. "mech-04.ogg", path .. "mech-05.ogg", path .. "mech-06.ogg"}, t = 0, v = 0.25 }},
    },
    ["fire_iron"] = {
        Source = {"fire"},
        Time = 0.5,
        ShellEjectAt = 0,
        SoundTable = {{ s = {path .. "mech-01.ogg", path .. "mech-02.ogg", path .. "mech-03.ogg", path .. "mech-04.ogg", path .. "mech-05.ogg", path .. "mech-06.ogg"}, t = 0 }},
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
            {s = common .. "magpouch.ogg", t = 0.0, v = 0.45},
            {s = path .. "reload_start.ogg", 	 t = 0.025},
            {s = rottle,  t = 0.05},
            {s = ratel, t = 0.25},
            {s = path .. "magrelease.ogg", 	 t = 0.4},
            {s = path .. "magout.ogg", 	 t = 0.45},
            {s = ratel, t = 0.5},
            {s = rottle,  t = 0.75},
            {s = path .. "magin.ogg",    t = 0.95},
            {s = ratel, t = 1.1},
            {s = rottle,  t = 1.15},
            {s = path .. "scrape.ogg",    t = 1.35},
            {s = common .. "magpouchin.ogg", t = 1.38},
            {s = path .. "grab.ogg", t = 1.9, v = 0.45},
            {s = common .. "shoulder.ogg", t = 2.0},
            {s = path .. "shoulder.ogg", t = 2.15},
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
        LastClip1OutTime = 2,
        SoundTable = {
            {s = rottle,  t = 0.0},
            {s = common .. "magpouch.ogg", t = 0.1},
            {s = ratel, t = 0.25},
            {s = path .. "magrelease.ogg", 	 t = 0.4},
            {s = path .. "magout.ogg", 	 t = 0.45},
            {s = path .. "bonk.ogg", 	 t = 0.5},
            {s = ratel, t = 0.5},
            {s = rottle,  t = 0.75},
            {s = path .. "magin.ogg",    t = 0.97},
            {s = ratel, t = 1.1},
            {s = common .. "rifle_magdrop.ogg", t = 1.15, v = 0.5},
            {s = rottle,  t = 1.16},
            {s = path .. "chback.ogg",    t = 1.9},
            {s = path .. "chamber.ogg",    t = 2.0},
            {s = path .. "grab.ogg", t = 2.3, v = 0.45},
            {s = common .. "shoulder.ogg", t = 2.4},
            {s = path .. "shoulder.ogg", t = 2.5},
        },
    },
    ["reload_75"] = {
        Source = "reload_drum",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        LHIK = true,
        LHIKIn = 0.3,
        LHIKOut = 0.9,
        LHIKEaseOut = 0.25,
        MinProgress = 1.6,
        SoundTable = {
            {s = rottle,  t = 0.0},
            {s = common .. "magpouch.ogg", t = 0.1},
            {s = ratel, t = 0.25},
            {s = path .. "magrelease.ogg", 	 t = 0.1},
            {s = path .. "magout_drum.ogg", 	 t = 0.25},
            {s = ratel, t = 0.5},
            {s = rottle,  t = 0.75},
            {s = ratel, t = 1.0},
            {s = path .. "magin_drum.ogg",    t = 1.1},
            {s = rottle,  t = 1.75},
            {s = path .. "grab.ogg", t = 2.0, v = 0.45},
            {s = common .. "shoulder.ogg", t = 2.1},
            {s = path .. "shoulder.ogg", t = 2.25},
        },
    },
    ["reload_empty_75"] = {
        Source = "reload_drum_empty",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        LHIK = true,
        LHIKIn = 0.3,
        LHIKOut = 1.5,
        LHIKEaseOut = 0.25,
        MinProgress = 2.6,
        LastClip1OutTime = 2,
        SoundTable = {
            {s = rottle,  t = 0.0},
            {s = common .. "magpouch.ogg", t = 0.1},
            {s = ratel, t = 0.25},
            {s = path .. "magrelease.ogg", 	 t = 0.1},
            {s = path .. "magout_drum.ogg", 	 t = 0.25},
            {s = ratel, t = 0.5},
            {s = rottle,  t = 0.75},
            {s = ratel, t = 1.0},
            {s = path .. "magin_drum.ogg",    t = 1.1},
            {s = path .. "grab.ogg", t = 2.0, v = 0.45},
            {s = rottle,  t = 1.9},
            {s = path .. "chback.ogg",    t = 2.37},
            {s = path .. "chamber.ogg",    t = 2.48},
            {s = common .. "shoulder.ogg", t = 2.78},
            {s = path .. "shoulder.ogg", t = 2.93},
        },
    },
    ["reload_9mm"] = {
        Source = "reload_9mm",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        LHIK = true,
        LHIKIn = 0.3,
        LHIKOut = 0.9,
        LHIKEaseOut = 0.25,
        MinProgress = 1.3,
        SoundTable = {
            {s = rottle,  t = 0.0},
            {s = common .. "magpouch.ogg", t = 0.1},
            {s = ratel, t = 0.25},
            {s = path1 .. "magout.ogg", 	 t = 0.45},
            {s = ratel, t = 0.5},
            {s = rottle,  t = 0.75},
            {s = path1 .. "magin.ogg",    t = 0.73},
            {s = ratel, t = 1.1},
            {s = rottle,  t = 1.15},
            {s = path .. "scrape.ogg",    t = 1.4},
            {s = common .. "magpouchin.ogg", t = 1.35},
            {s = common .. "shoulder.ogg", t = 2.05},
            {s = common .. "grab.ogg", t = 2.1},
        },
    },
    ["reload_empty_9mm"] = {
        Source = "reload_9mm_empty",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        LHIK = true,
        LHIKIn = 0.3,
        LHIKOut = 0.55,
        LHIKEaseOut = 0.25,
        MinProgress = 2.1,
        LastClip1OutTime = 2,
        SoundTable = {
            {s = rottle,  t = 0.0},
            {s = common .. "magpouch.ogg", t = 0.1},
            {s = ratel, t = 0.25},
            {s = path1 .. "magout.ogg", 	 t = 0.45},
            {s = ratel, t = 0.5},
            {s = rottle,  t = 0.75},
            {s = path1 .. "magin.ogg",    t = 0.85},
            {s = ratel, t = 1.1},
            {s = common .. "pistol_magdrop.ogg", t = 1.15},
            {s = rottle,  t = 1.15},
            {s = path .. "chback_9.ogg",    t = 1.8},
            {s = path .. "chamber_9.ogg",    t = 2.05},
            {s = common .. "grab.ogg", t = 2.4},
            {s = common .. "shoulder.ogg", t = 2.5},
        },
    },
    ["reload_10rnd"] = {
        Source = "reload_10rnd",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        LHIK = true,
        LHIKIn = 0.3,
        LHIKOut = 0.9,
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
    ["reload_empty_10rnd"] = {
        Source = "reload_10rnd_empty",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        LHIK = true,
        LHIKIn = 0.3,
        LHIKOut = 0.55,
        LHIKEaseOut = 0.25,
        MinProgress = 2.1,
        LastClip1OutTime = 2,
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
    ["reload_308"] = {
        Source = "reload_308",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        LHIK = true,
        LHIKIn = 0.3,
        LHIKOut = 0.9,
        LHIKEaseOut = 0.25,
        MinProgress = 1.3,
        SoundTable = {
            {s = rottle,  t = 0.0},
            {s = common .. "magpouch.ogg", t = 0.1},
            {s = ratel, t = 0.25},
            {s = path .. "magout.ogg", 	 t = 0.45},
            {s = ratel, t = 0.5},
            {s = rottle,  t = 0.75},
            {s = path .. "magin_308.ogg",    t = 0.95},
            {s = ratel, t = 1.1},
            {s = rottle,  t = 1.15},
            {s = path .. "scrape.ogg",    t = 1.35},
            {s = common .. "magpouchin.ogg", t = 1.35},
            {s = common .. "shoulder.ogg", t = 2.05},
            {s = common .. "grab.ogg", t = 2.1},
        },
    },
    ["reload_empty_308"] = {
        Source = "reload_308_empty",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        LHIK = true,
        LHIKIn = 0.3,
        LHIKOut = 0.55,
        LHIKEaseOut = 0.25,
        MinProgress = 2.1,
        LastClip1OutTime = 2,
        SoundTable = {
            {s = rottle,  t = 0.0},
            {s = common .. "magpouch.ogg", t = 0.1},
            {s = ratel, t = 0.25},
            {s = path .. "magout.ogg", 	 t = 0.45},
            {s = path .. "bonk.ogg", 	 t = 0.5},
            {s = ratel, t = 0.5},
            {s = rottle,  t = 0.75},
            {s = path .. "magin_308.ogg",    t = 1.0},
            {s = ratel, t = 1.1},
            {s = common .. "rifle_magdrop.ogg", t = 1.15},
            {s = rottle,  t = 1.15},
            {s = path .. "chback_308.ogg",    t = 1.85},
            {s = path .. "chamber_308.ogg",    t = 2.0},
            {s = common .. "grab.ogg", t = 2.4},
            {s = common .. "shoulder.ogg", t = 2.5},
        },
    },
    ["reload_12g"] = {
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
            {s = path .. "12ga/magout.ogg", 	 t = 0.45},
            {s = ratel, t = 0.5},
            {s = rottle,  t = 0.75},
            {s = path .. "12ga/magin.ogg",    t = 0.95},
            {s = ratel, t = 1.1},
            {s = rottle,  t = 1.15},
            {s = path .. "scrape.ogg",    t = 1.35},
            {s = common .. "magpouchin.ogg", t = 1.35},
            {s = common .. "shoulder.ogg", t = 2.05},
            {s = common .. "grab.ogg", t = 2.1},
        },
    },
    ["reload_empty_12g"] = {
        Source = "reload_empty",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        LHIK = true,
        LHIKIn = 0.3,
        LHIKOut = 0.5,
        LHIKEaseOut = 0.25,
        MinProgress = 2.1,
        LastClip1OutTime = 2,
        SoundTable = {
            {s = rottle,  t = 0.0},
            {s = common .. "magpouch.ogg", t = 0.1},
            {s = ratel, t = 0.25},
            {s = path .. "12ga/magout.ogg", 	 t = 0.45},
            {s = path .. "bonk.ogg", 	 t = 0.5, v = 0.25},
            {s = ratel, t = 0.55},
            {s = rottle,  t = 0.75},
            {s = path .. "12ga/magin.ogg",    t = 0.97},
            {s = ratel, t = 1.1},
            {s = common .. "rifle_magdrop.ogg", t = 1.15},
            {s = rottle,  t = 1.75},
            {s = path .. "12ga/chback.ogg",    t = 1.85},
            {s = path .. "12ga/chamber.ogg",    t = 2.0},
            {s = common .. "grab.ogg", t = 2.4},
            {s = common .. "shoulder.ogg", t = 2.5},
        },
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
    ["enter_sprint"] = {
        Source = "sprint_start",
    },
    ["idle_sprint"] = {
        Source = "sprint_idle",
    },
    ["exit_sprint"] = {
        Source = "sprint_end",
        Time = 0.9,
    },
    ["unjam"] = {
        Source = "jamfix",
        -- Time = 45 / 30,
        ShellEjectAt = 0.65,
        -- LHIK = true,
        -- LHIKIn = 0.3,
        -- LHIKEaseIn = 0.4,
        -- LHIKEaseOut = 0.15,
        -- LHIKOut = 0.4,
        -- SoundTable = {                                             zenith do noises here
        --     {s = path .. "chback.ogg",   t = 0.15},
        --     {s = common .. "cloth_4.ogg",  t = 0.5},
        --     {s = path .. "chamber.ogg",  t = 0.5},
        -- },
        SoundTable = {
            {s = common .. "cloth_4.ogg",  t = 0.1},
            {s = path .. "presscheck_1.ogg",    t = 0.2},
            {s = path .. "chback.ogg",    t = 0.6},
            {s = path .. "chamber.ogg",    t = 0.7},
            {s = common .. "grab.ogg", t = 1.1},
            {s = common .. "shoulder.ogg", t = 1.15},
        }
    },
    ["bash_bayonet"] = {
        Source = "bayonet",
        --Time = 1.2,
        --MinProgress = .7,
        SoundTable = {
            {s = "weapons/arccw/melee_lift.wav", t = 0}
        }
    },

    ["exit_bipod"] = {
        Source = "bipod_undeploy",
        LHIK = true,
        LHIKIn = 0.3,
        LHIKOut = 0.55,
        LHIKEaseOut = 0.25,
        --Time = 1.2,
        --MinProgress = .7,
        Mult = .8,
        SoundTable = {
            -- {s = "weapons/arccw/melee_lift.wav", t = 0}
        }
    },
    ["enter_bipod"] = {
        Source = "bipod_deploy",
        LHIK = true,
        LHIKIn = 0.3,
        LHIKOut = 0.55,
        LHIKEaseOut = 0.25,
        --Time = 1.2,
        --MinProgress = .7,
        Mult = .8,
        SoundTable = {
            -- {s = "weapons/arccw/melee_lift.wav", t = 0}                   -- yeah here too
        }
    },
}

SWEP.Hook_Think = ArcCW.UC.ADSReload