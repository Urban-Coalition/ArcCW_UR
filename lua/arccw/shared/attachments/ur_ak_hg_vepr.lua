att.PrintName = "Heavy Handguard"
att.Icon = Material("entities/att/ur_ak/barrel/vepr.png", "mips smooth")
att.Description = "Bottom-heavy marksman handguard. Slow to handle and aim, but steady and accurate. Does not have a bottom rail, and thus cannot accept underbarrel attachments."
att.Slot = {"ur_ak_hg"}
att.Desc_Cons = {"uc.noubs"}
att.AutoStats = true

--att.SortOrder = 20

att.Mult_SightTime = 1.1
--att.Mult_SpeedMult = .95
att.Mult_SightedSpeedMult = 0.75
att.Mult_HipDispersion = 1.15

att.Mult_Sway = 0.75
att.Mult_Recoil = 0.8

att.ActivateElements = {"hg_vepr"}
att.GivesFlags = {"ak_noubs"}
