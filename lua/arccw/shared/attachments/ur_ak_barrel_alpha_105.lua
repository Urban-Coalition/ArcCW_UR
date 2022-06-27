att.PrintName = "12\" Spetsnaz Alpha Barrel"
att.Icon = Material("entities/att/ur_ak/barrel/alpha_100.png", "mips smooth")
att.Description = "Series 100 type barrel fitted with Helix handguard as used by various Russian armed forces. Similarly to the 105 Barrels, Reduces weight and profile while keeping the weapon accurate and controllable but also features the Alpha's sleek and modern design for extra modularity."
att.Slot = {"ur_ak_barrel"}
att.AutoStats = true

--att.Desc_Neutrals = {"uc.cosmetic"} nvm
att.SortOrder = 12

att.Mult_Sway = .85
att.Mult_SightTime = .8
att.Add_BarrelLength = -3
att.Mult_SightedSpeedMult = 1.05

att.Mult_Recoil = 1.3
att.Mult_AccuracyMOA = 1.5
att.Mult_Range = .75
att.Mult_RPM = 625/600
att.Mult_ShootPitch = 105/100

att.GivesFlags = {"ak_railedguard","ak_barrelchange","nodong"}
att.ActivateElements = {"barrel_105_alpha"}

att.Ignore = true