att.PrintName = "23\" Polymer SAW Barrel"
att.Icon = Material("entities/att/ur_ak/barrel/rpk_poly.png", "mips smooth")
att.Description = "Light machine gun barrel with polymer handguard furniture. The lighter material reduces strain at the cost of shoulder-fired performance. It features an integrated bipod which can be deployed for even greater accuracy and control."
att.Slot = {"ur_ak_barrel"}
att.AutoStats = true

att.SortOrder = 22.9

att.Add_BarrelLength = 5
att.Mult_SightTime = 1.1
att.Mult_SpeedMult = .975
att.Mult_SightedSpeedMult = 0.85
att.Mult_Sway = 1.35
att.Mult_HipDispersion = 1.35

att.Mult_AccuracyMOA = .8
att.Mult_Range = 1.5
att.Mult_MalfunctionMean = 2
att.Mult_HipDispersion = 1.5
att.Mult_MoveDispersion = 1.25

att.Bipod = true
att.Mult_BipodRecoil = .25
att.Mult_BipodDispersion = .2

att.ActivateElements = {"barrel_rpk74m"}
att.GivesFlags = {"ak_barrelchange","nodong"}

-- dunno why we keeping it
att.Ignore = true
att.Icon = Material("entities/att/obsolete.png", "mips smooth")
att.Description = "stop looking at deprecated shit you suka"