att.PrintName = "MLOK-K Handguard"

att.Icon = Material("entities/att/acwatt_ur_mp5_barrel_classic.png", "smooth mips")
att.Description = "A modernized handguard for the Kurz variant. Light, thus improving handling, but unwieldy...\nEnables the attachment of underbarrel accessories."
att.AutoStats = true

att.Slot = "ur_mp5_hg"

att.SortOrder = 1

att.Mult_Sway = .75
att.Mult_SightTime = .95
att.Mult_Recoil = 1.15

att.ActivateElements = {"ur_mp5_ub_kurzmlok"}
att.RequireFlags = {"mp5_kurz"}