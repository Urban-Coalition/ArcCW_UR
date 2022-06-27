att.PrintName = "Zenitco Handguard"
att.Icon = Material("entities/att/ur_ak/barrel/alpha.png", "mips smooth")
att.Description = "US production handguard featuring a rail interface for additional modularity. Especially lightweight, though less comfortable to grip."
att.Slot = {"ur_ak_hg"}
att.AutoStats = true

--att.Desc_Neutrals = {"uc.cosmetic"} nvm
att.SortOrder = 15.9

att.Mult_Sway = 1.1
att.Mult_SightedSpeedMult = 1.1
att.Mult_SpeedMult = 1.05
att.Mult_Recoil = 1.075

att.GivesFlags = {"ak_railedguard","nodong"}
att.ActivateElements = {"barrel_alpha"}