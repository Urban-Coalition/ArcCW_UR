att.PrintName = "Ratnik Handguard"
att.Icon = Material("entities/att/ur_ak/handguards/ak12.png", "mips smooth")
att.Description = "The most recent handguard module for the AK platform, with polymerized construction and an upper rail interface. Practical, yet comfortable."
att.Slot = {"ur_ak_hg"}
att.AutoStats = true

--att.Desc_Neutrals = {"ur.ak.userail"}
att.SortOrder = 16

att.Mult_Sway = .9
att.Mult_ShootSpeedMult = 1.1
att.Mult_Recoil = 1.1

att.GivesFlags = {"ak_railedguard", "nodong"}
att.ActivateElements = {"handguard_ak12", "sight_ak12"}

-- Goes into standalone AK pack
att.Ignore = true
att.Icon = Material("entities/att/obsolete.png", "mips smooth")
att.Description = "stop looking at deprecated shit you suka"