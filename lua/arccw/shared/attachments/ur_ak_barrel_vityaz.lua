att.PrintName = "PP-19 9\" SMG Barrel"
att.AbbrevName = "9\" SMG Barrel"
att.Icon = Material("entities/att/ur_ak/barrel/smg.png", "mips smooth")
att.Description = "Submachine gun barrel with a rail interface for additional modularity. More lightweight than the compact barrel, but confers more recoil."
att.Slot = {"ur_ak_barrel"}
att.AutoStats = true

if !GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "Bogatyr SMG 9\" SMG Barrel"
end

att.SortOrder = 9

att.Add_BarrelLength = -5
att.Mult_ShootPitch = 115 / 100
att.Mult_RPM = 1.131
att.Mult_SightTime = 0.7
att.Mult_HipDispersion = 0.7
att.Mult_SightedSpeedMult = 1.12
att.Mult_SpeedMult = 1.03
att.Mult_Sway = 0.85

att.Mult_Recoil = 1.4
att.Mult_AccuracyMOA = 1.5
att.Mult_Range = 0.65

att.ActivateElements = {"barrel_vityaz"}
att.GivesFlags = {"ak_barrelchange", "barrel_carbine", "ak_railedguard"}

att.LHIK = true

att.ModelOffset = Vector(-24, -3.4, 3.3)
att.OffsetAng = Angle(10, 0, 0)
att.Model = "models/weapons/arccw/ak_lhik_u.mdl"