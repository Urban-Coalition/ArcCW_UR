att.PrintName = "16\" Helix Alpha Barrel"
att.Icon = Material("entities/att/ur_ak/barrel/alpha.png", "mips smooth")
att.Description = "US production handguard featuring a sleek and lightweight design with a rail interface for additional modularity."
att.Slot = {"ur_ak_barrel"}
att.AutoStats = true

--att.Desc_Neutrals = {"uc.cosmetic"} nvm
att.SortOrder = 16

att.Mult_Sway = 1.1
att.Mult_SightedSpeedMult = 1.1
att.Mult_SpeedMult = 1.1
att.Mult_Recoil = 1.075

att.GivesFlags = {"ak_railedguard","nodong"}
att.ActivateElements = {"barrel_alpha"}