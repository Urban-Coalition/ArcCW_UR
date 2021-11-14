SWEP.Base = "arccw_base"
SWEP.Spawnable = true
SWEP.Category = "ArcCW - Urban Coalition"
SWEP.AdminOnly = false
SWEP.WeaponCamBone = tag_camera

SWEP.PrintName = "MP5"
SWEP.Trivia_Class = "Submachine Gun"
SWEP.Trivia_Desc = "Versatile submachine gun known for its use by high profile police units around the world, most famously by the British SAS during the Iranian embassy siege. While not the most cutting-edge weapon, it remains a classic despite multiple newer alternatives from both HK and its competitors. If accurate, sophisticated close-combat performance is what you’re looking for, no weapon has a better track record."

if CLIENT and GetConVar("arccw_mw2cl_trivia"):GetBool() then
SWEP.Trivia_Manufacturer = "Heckler & Koch"
SWEP.Trivia_Calibre = "9x19mm Para"
SWEP.Trivia_Mechanism = "Roller-Delayed Blowback"
SWEP.Trivia_Country = "Germany"
SWEP.Trivia_Year = 1966
end

SWEP.Slot = 2

SWEP.UseHands = true

SWEP.ViewModel = "models/weapons/arccw/fesiugmw2/c_slog_mp5n.mdl"
SWEP.MirrorVMWM = true
SWEP.WorldModelOffset = {
    pos = Vector(-7, 3, -5),
    ang = Angle(-7, 0, 180),
    scale = 1.25
}
SWEP.WorldModel = "models/weapons/w_smg_mp5.mdl"
SWEP.ViewModelFOV = 65

SWEP.Damage = 25
SWEP.DamageMin = 20
SWEP.Range = 750 * 0.025  -- GAME UNITS * 0.025 = METRES
SWEP.Penetration = 3
SWEP.DamageType = DMG_BULLET
SWEP.ShootEntity = nil -- entity to fire, if any


SWEP.ChamberSize = 1
SWEP.Primary.ClipSize = 30 -- DefaultClip is automatically set.
SWEP.ExtendedClipSize = 45
SWEP.ReducedClipSize = 15

SWEP.VisualRecoilMult = 0
SWEP.Recoil = 0.4
SWEP.RecoilSide = 0.35
SWEP.RecoilRise = 0

SWEP.Delay = 60 / 815 -- 60 / RPM.
SWEP.Num = 1 -- number of shots per trigger pull.
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

SWEP.NPCWeaponType = {"weapon_ar2", "weapon_smg1"}
SWEP.NPCWeight = 100

SWEP.AccuracyMOA = 10 -- accuracy in Minutes of Angle. There are 60 MOA in a degree.
SWEP.HipDispersion = 300 -- inaccuracy added by hip firing.
SWEP.MoveDispersion = 175

SWEP.Primary.Ammo = "pistol" -- what ammo type the gun uses

SWEP.ShootVol = 110 -- volume of shoot sound
SWEP.ShootPitch = 95 -- pitch of shoot sound


SWEP.FirstShootSound = "weapons/arccw_ur/mp5/fire_first.ogg"
SWEP.ShootSound = {"weapons/arccw_ur/mp5/fire_auto_1.ogg", "weapons/arccw_ur/mp5/fire_auto_2.ogg", "weapons/arccw_ur/mp5/fire_auto_3.ogg"}
SWEP.ShootSoundSilenced = "arccw_go/mp5/mp5_01.ogg"
SWEP.DistantShootSound = "weapons/arccw_ur/mp5/fire_dist.ogg"

SWEP.MuzzleEffect = "muzzleflash_smg"
SWEP.ShellModel = "models/shells/shell_9mm.mdl"
SWEP.ShellScale = 1.5
SWEP.ShellRotateAngle = Angle(0, 90, 0)

SWEP.MuzzleEffectAttachment = 1 -- which attachment to put the muzzle on
SWEP.CaseEffectAttachment = 2 -- which attachment to put the case effect on

SWEP.SpeedMult = 1
SWEP.SightedSpeedMult = 0.80
SWEP.SightTime = 0.2

SWEP.BulletBones = { -- the bone that represents bullets in gun/mag
    -- [0] = "bulletchamber",
    -- [1] = "bullet1"
}

SWEP.IronSightStruct = {
    Pos = Vector(-2.91, -3.79, 0.95),
    Ang = Angle(-0.278, 0.008, 0),
    ViewModelFOV = 65 / 1.18,
    Magnification = 1.18,
}

SWEP.HoldtypeHolstered = "passive"
SWEP.HoldtypeActive = "smg"
SWEP.HoldtypeSights = "rpg"

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_SMG1

SWEP.ActivePos = Vector(0, 0, 1)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.CustomizePos = Vector(10.479, 0, -3.321)
SWEP.CustomizeAng = Angle(18.2, 39.4, 14.8)

SWEP.HolsterPos = Vector(1, 0, 1)
SWEP.HolsterAng = Angle(-10, 12, 0)

SWEP.SprintPos = Vector(0, 0, 1)
SWEP.SprintAng = Angle(0, 0, 0)

SWEP.BarrelOffsetSighted = Vector(0, 0, -1)
SWEP.BarrelOffsetHip = Vector(2, 0, -2)

SWEP.BarrelLength = 24

SWEP.AttachmentElements = {
    ["nors"] = {
        VMBodygroups = {{ind = 1, bg = 1}},
        WMBodygroups = {},
    },
    ["wepcamo-desert"]		= { VMSkin = 1 },
    ["wepcamo-arctic"]		= { VMSkin = 2 },
    ["wepcamo-woodland"]	= { VMSkin = 3 },
    ["wepcamo-digital"]		= { VMSkin = 4 },
    ["wepcamo-urban"]		= { VMSkin = 5 },
    ["wepcamo-bluetiger"]	= { VMSkin = 6 },
    ["wepcamo-redtiger"]	= { VMSkin = 7 },
    ["wepcamo-fall"]		= { VMSkin = 8 },
    ["wepcamo-whiteout"]	= { VMSkin = 9 },
    ["wepcamo-blackout"]        = { VMSkin = 10 },
    ["wepcamo-bushdweller"]     = { VMSkin = 11 },
    ["wepcamo-thunderstorm"]    = { VMSkin = 12 },
}

SWEP.ExtraSightDist = 5

SWEP.Attachments = {
    {
        PrintName = "Optic",
        DefaultAttName = "Iron Sights",
        Slot = {"optic","optic_lp"},
        Bone = "tag_weapon",
        Offset = {
            vpos = Vector(-4.7, 0, 2.7),
            vang = Angle(0, 0, 0),
            wpos = Vector(1.998, 0.17, -5.025),
            wang = Angle(-3.074, -23.004, -172.249)
        },
        SlideAmount = {
            vmin = Vector(1, 0, 3.9),
            vmax = Vector(6, 0, 3.9),
            wmin = Vector(5.36, 0.739, -5.401),
            wmax = Vector(5.36, 0.739, -5.401),
        },
        InstalledEles = {"nors"},
    },
    {
        PrintName = "Muzzle",
        DefaultAttName = "Standard Muzzle",
        Slot = "muzzle",
        Bone = "tag_weapon",
        Offset = {
            vpos = Vector(15, 0, 1.9),
            vang = Angle(0, 0, 0),
            wpos = Vector(12.057, 4.317, -3.858),
            wang = Angle(-3.074, -23.004, 0)
        },
    },
    {
        PrintName = "Underbarrel",
        Slot = {"foregrip", "bipod", "style_pistol"},
        Bone = "tag_weapon",
        Offset = {
            vpos = Vector(9.5, 0, 1),
            vang = Angle(0, 0, 0),
            wpos = Vector(8.425, 2.96, -2.54),
            wang = Angle(-3.074, -23.004, -172.249)
        },
        SlideAmount = {
            vmin = Vector(7, 0, 1),
            vmax = Vector(12.5, 0, 1.5),
        },
    },
    {
        PrintName = "Tactical",
        Slot = "tac",
        Bone = "tag_weapon",
        Offset = {
            vpos = Vector(8, -1.1, 2),
            vang = Angle(0, 0, 90),
            wpos = Vector(8.425, 3.891, -4.147),
            wang = Angle(-3.074, -23.004, -77.301)
        },
    },
    {
        PrintName = "Fire Group",
        Slot = "fcg",
        DefaultAttName = "Standard FCG"
    },
    {
        PrintName = "Ammo Type",
        Slot = "ammo_bullet"
    },
    {
        PrintName = "Perk",
        Slot = "perk"
    },
    {
        PrintName = "Camouflage",
        DefaultAttName = "None",
        Slot = "mw2_wepcamo",
        FreeSlot = true,
    },
	{
        PrintName = "Charm",
        Slot = "charm",
        FreeSlot = true,
        Bone = "tag_weapon",
        Offset = {
            vpos = Vector(2.5, -0.5, 1),
            vang = Angle(0, 0, 0),
            wpos = Vector(9.625, 1.5, -4),
            wang = Angle(0, 0, 180)
        },
    },
}

SWEP.Hook_TranslateAnimation = function(wep, anim)
    if !wep.Attachments[3].Installed then
        return anim .. "_nofg"
    end
end

SWEP.Animations = {
    ["idle"] = {
        Source = "idle",
        Time = 2/30,
    },
    ["enter_sprint"] = {
        Source = "sprint_in",
        Time = 10/30
    },
    ["idle_sprint"] = {
        Source = "sprint_loop",
        Time = 30/40
    },
    ["exit_sprint"] = {
        Source = "sprint_out",
        Time = 10/30
    },
    ["draw"] = {
        Source = "pullout",
        Time = 25/30,
        SoundTable = {{s = "MW2Common.Deploy", 		t = 0}},
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 0.9,
    },
    ["ready"] = {
        Source = "pullout_first_nofg",
        Time = 40/30,
        SoundTable = {
						{s = "weapons/arccw_ur/mp5/magin.ogg", 	t = 0/30},
						{s = "weapons/arccw_ur/mp5/chamber.ogg", 	t = 17/30},
					},
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 0.9,
        LHIKEaseOut = 1.2,		
    },
    ["holster"] = {
        Source = "putaway",
        Time = 25/30,
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 0.9,
    },
    ["fire"] = {
        Source = "fire",
        Time = 7/30,
        ShellEjectAt = 0,
    },
    ["fire_iron"] = {
        Source = "fire_ads",
        Time = 7/30,
        ShellEjectAt = 0,
    },
    ["reload"] = {
        Source = "reload",
        Time = 75/30,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_SMG1,
        SoundTable = {
            {s = "arccw_uc/common/cloth_1.ogg", 	t = 0/30},
            {s = "weapons/arccw_ur/mp5/magout.ogg", 	t = 13/30},
            {s = "arccw_uc/common/cloth_4.ogg", 	t = 20/30},	
            {s = "weapons/arccw_ur/mp5/magin.ogg", 	t = 36/30},
            {s = "arccw_uc/common/cloth_3.ogg", 	t = 40/30},	
            {s = "arccw_uc/common/shoulder.ogg", 	t = 70/30},	
					},
        LHIK = true,
        LHIKIn = 0.3,
        LHIKOut = 0.5,
    },
    ["reload_empty"] = {
        Source = "reload_empty",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_SMG1,
        SoundTable = {
            {s = "arccw_uc/common/cloth_1.ogg", 	t = 0/30},		
            {s = "weapons/arccw_ur/mp5/chback.ogg", 	t = 6/30},
            {s = "weapons/arccw_ur/mp5/chlock.ogg", 	t = 11/30},	
            {s = "weapons/arccw_ur/mp5/magout.ogg", 	t = 26/30},
            {s = "arccw_uc/common/cloth_2.ogg", 	t = 30/30},		
            {s = "weapons/arccw_ur/mp5/magin.ogg", 	t = 52/30},
            {s = "arccw_uc/common/cloth_4.ogg", 	t = 55/30},
            {s = "arccw_uc/common/cloth_3.ogg", 	t = 75/30},
            {s = "weapons/arccw_ur/mp5/chamber.ogg", 	t = 80/30},	
            {s = "arccw_uc/common/shoulder.ogg", 	t = 95/30},						
					},
        LHIK = true,
        LHIKIn = 0.3,
        LHIKOut = 0.5,
        LHIKEaseOut = 0.25,
    },
-----------------------------------------------------
-----------------------------------------------------
    ["idle_nofg"] = {
        Source = "idle_nofg",
        Time = 2/30,
    },
    ["enter_sprint_nofg"] = {
        Source = "sprint_in_nofg",
        Time = 10/30
    },
    ["idle_sprint_nofg"] = {
        Source = "sprint_loop_nofg",
        Time = 30/40
    },
    ["exit_sprint_nofg"] = {
        Source = "sprint_out_nofg",
        Time = 10/30
    },
    ["draw_nofg"] = {
        Source = "pullout_nofg",
        Time = 25/30,
        SoundTable = {{s = "MW2Common.Deploy", 		t = 0}},
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 0.9,
    },
    ["ready_nofg"] = {
        Source = "pullout_first_nofg",
        Time = 40/30,
        SoundTable = {
						{s = "weapons/arccw_ur/mp5/magin.ogg", 	t = 0/30},
						{s = "weapons/arccw_ur/mp5/chamber.ogg", 	t = 17/30},
					},
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 0.9,
    },
    ["holster_nofg"] = {
        Source = "putaway_nofg",
        Time = 25/30,
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 0.9,
    },
    ["fire_nofg"] = {
        Source = "fire_nofg",
        Time = 7/30,
        ShellEjectAt = 0,
    },
    ["fire_iron_nofg"] = {
        Source = "fire_ads_nofg",
        Time = 7/30,
        ShellEjectAt = 0,
    },
    ["reload_nofg"] = {
        Source = "reload_nofg",
        Time = 75/30,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_SMG1,
        SoundTable = {
						{s = "arccw_uc/common/cloth_1.ogg", 	t = 0/30},
						{s = "weapons/arccw_ur/mp5/magout.ogg", 	t = 13/30},
                        {s = "arccw_uc/common/cloth_4.ogg", 	t = 20/30},	
						{s = "weapons/arccw_ur/mp5/magin.ogg", 	t = 36/30},
                        {s = "arccw_uc/common/cloth_3.ogg", 	t = 40/30},	
                        {s = "arccw_uc/common/shoulder.ogg", 	t = 70/30},	
					},
        LHIK = true,
        LHIKIn = 0.3,
        LHIKOut = 0.5,
    },
    ["reload_empty_nofg"] = {
        Source = "reload_empty_nofg",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_SMG1,
        SoundTable = {
            {s = "arccw_uc/common/cloth_1.ogg", 	t = 0/30},		
            {s = "weapons/arccw_ur/mp5/chback.ogg", 	t = 6/30},
            {s = "weapons/arccw_ur/mp5/chlock.ogg", 	t = 11/30},	
            {s = "weapons/arccw_ur/mp5/magout.ogg", 	t = 26/30},
            {s = "arccw_uc/common/cloth_2.ogg", 	t = 30/30},		
            {s = "weapons/arccw_ur/mp5/magin.ogg", 	t = 52/30},
            {s = "arccw_uc/common/cloth_4.ogg", 	t = 55/30},
            {s = "arccw_uc/common/cloth_3.ogg", 	t = 75/30},
            {s = "weapons/arccw_ur/mp5/chamber.ogg", 	t = 80/30},	
            {s = "arccw_uc/common/shoulder.ogg", 	t = 95/30},						
			},
        LHIK = true,
        LHIKIn = 0.3,
        LHIKOut = 0.5,
        LHIKEaseOut = 0.25,		
    },
}