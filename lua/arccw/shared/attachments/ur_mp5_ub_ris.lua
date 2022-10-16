att.PrintName = "RIS Handguard"

att.Icon = Material("entities/att/ur_mp5/hg_pica.png", "smooth mips")
att.Description = "Alternative handguard with a tacticool picatinny rail interface. Does not have any tacticool benefits."
att.Desc_Neutrals = {
    "uc.cosmetic"
}
att.AutoStats = true

att.Slot = "ur_mp5_hg"
att.SortOrder = 997


att.IgnorePickX = true
att.ActivateElements = {"ur_mp5_rail_fg"}
att.ExcludeFlags = {"barrel_sd","mp5_kurz"}