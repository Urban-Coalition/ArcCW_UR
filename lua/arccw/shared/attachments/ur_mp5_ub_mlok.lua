att.PrintName = "MP5 M-LOK Handguard"
att.AbbrevName = "M-LOK Handguard"

att.Icon = Material("entities/att/acwatt_ur_mp5_barrel_classic.png", "smooth mips")
att.Description = "American aftermarket handguard. Lighter than the basic, polymer handguard it replaces, improving handling, but somewhat unwieldy."
att.AutoStats = true

att.Slot = {"ur_mp5_hg","ur_g3_handguard"}

att.SortOrder = 1

att.Mult_SightTime = .90
att.Mult_Recoil = 1.15
att.Mult_Sway = 1.25

att.ActivateElements = {"ur_mp5_ub_kurzmlok"}
att.ExcludeFlags = {"g3_not8"}
--att.RequireFlags = {"mp5_kurz"}

att.HideIfBlocked = true