att.PrintName = "Heavy Handguard"
att.Icon = Material("entities/att/ur_ak/handguards/vepr.png", "mips smooth")
att.Description = "Bottom-heavy marksman handguard. Hard to handle, but steady and accurate. Does not have a bottom rail, and thus cannot accept underbarrel attachments."
att.Slot = {"ur_ak_hg"}
att.Desc_Cons = {"uc.noubs"}
att.AutoStats = true

att.Mult_SightedSpeedMult = 0.75
att.Mult_HipDispersion = 1.25

att.Mult_Sway = 0.7
att.Mult_Recoil = 0.75

att.ActivateElements = {"hg_vepr"}
att.GivesFlags = {"ak_noubs"}
att.ExcludeFlags = {"ur_ak_barrel_rpk"}
