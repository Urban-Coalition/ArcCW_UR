att.PrintName = "Ratnik Handguard"
att.Icon = Material("entities/att/ur_ak/barrel/ak12.png", "mips smooth")
att.Description = "The most recent handguard module for the AK platform, with polymerized construction and an upper rail interface. Practical, yet comfortable."
att.Slot = {"ur_ak_hg"}
att.AutoStats = true

att.Desc_Neutrals = {"ur.ak.userail"}
att.SortOrder = 16

att.Mult_Sway = .9
att.Mult_ShootSpeedMult = 1.1
att.Mult_Recoil = 1.1

att.GivesFlags = {"ak_railedguard","nodong"}
att.ActivateElements = {"barrel_ak12", "handguard_ak12", "sight_ak12"}