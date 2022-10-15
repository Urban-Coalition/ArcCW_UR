att.PrintName = "PP-19 8\" SMG Barrel"
att.AbbrevName = "8\" SMG Barrel"
att.Icon = Material("entities/att/ur_ak/barrel/smg.png", "mips smooth")
att.Description = "Submachine gun barrel with a rail interface for additional modularity. Functions identically to the Compact barrel."
att.Slot = {"ur_ak_barrel"}
att.AutoStats = true

att.SortOrder = 7

att.Add_BarrelLength = -6
att.Mult_ShootPitch = 115/100
att.Mult_RPM = 1.131
att.Mult_SightTime = .8
att.Mult_HipDispersion = .8
att.Mult_SightedSpeedMult = 1.1
att.Mult_SpeedMult = 1.025
att.Mult_Sway = .8

att.Mult_Recoil = 1.5
att.Mult_AccuracyMOA = 2
att.Mult_Range = .5

att.ActivateElements = {"barrel_vityaz"}
att.GivesFlags = {"ak_barrelchange","barrel_carbine","ak_railedguard"}