att.PrintName = "Vepr 20\" Marksman Barrel"
att.AbbrevName = "20\" Marksman Barrel"
att.Icon = Material("entities/att/ur_ak/barrel/vepr.png", "mips smooth")
att.Description = "Long civilian hunting barrel. Improved performance at range, but fires much slower."
att.Slot = {"ur_ak_barrel"}
att.AutoStats = true

att.SortOrder = 20

att.Add_BarrelLength = 4
att.Mult_SightTime = 1.15
att.Mult_SpeedMult = .97
att.Mult_SightedSpeedMult = 0.85

att.Mult_Recoil = 0.85
att.Mult_AccuracyMOA = 0.5
att.Mult_Range = 1.5
att.Mult_HipDispersion = 1.25
att.Mult_ShootPitch = 0.9
att.Mult_RPM = 0.8
att.ActivateElements = {"barrel_vepr"}
att.GivesFlags = {"ak_barrelchange"}