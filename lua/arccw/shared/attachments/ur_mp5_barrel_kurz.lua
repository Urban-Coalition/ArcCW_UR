att.PrintName = "4.5\" Kurz Upper"

att.Icon = Material("entities/att/acwatt_ur_mp5_barrel_kurz.png", "smooth mips")
att.Description = "Machine pistol variant with a maximally compact barrel and a lightened bolt assembly for increased cyclic rate.\nMid-range accuracy is poor, and recoil is noticibly increased."
att.AutoStats = true

att.Slot = "ur_mp5_barrel"

att.SortOrder = 4.5

att.LHIK = true

att.ModelOffset = Vector(6.5, -0.5, -1)
att.Model = "models/weapons/arccw/atts/lhik_kurz.mdl"

att.Add_BarrelLength = -4
att.Mult_Sway = .5
att.Mult_SightTime = .75
att.Mult_RPM = 1.125

att.Mult_Recoil = 1.25
att.Mult_AccuracyMOA = 3
att.Mult_Range = .5

att.Mult_HipDispersion = 0.85

att.GivesFlags = {"mp5_kurz"}
att.Override_Trivia_Class = "Machine Pistol"

att.Hook_SelectReloadAnimation = function(wep, anim)
    return anim .. "_kurz"
end

att.Mult_PhysBulletMuzzleVelocity = 0.9375