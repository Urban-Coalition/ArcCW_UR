att.PrintName = "Slim Handguard"

att.Icon = Material("entities/att/ur_mp5/hg_slim.png", "smooth mips")
att.Description = "Early rounded handguard, lighter than the current iteration but more difficult to brace."
att.AutoStats = true

att.Slot = "ur_mp5_hg"

att.SortOrder = 999

att.Mult_Sway = .75
att.Mult_SightTime = .95
att.Mult_Recoil = 1.15

att.ActivateElements = {"ur_mp5_ub_classic"}
att.ExcludeFlags = {"barrel_sd","mp5_kurz"}