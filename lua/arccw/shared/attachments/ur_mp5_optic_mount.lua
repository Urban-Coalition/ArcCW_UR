att.PrintName = "M1913 Mount"

att.Icon = Material("entities/att/acwatt_ur_mp5_barrel_ris.png", "smooth mips")
att.Description = "An optics mount, hold the optics."
att.Desc_Neutrals = {
    "uc.cosmetic"
}
att.AutoStats = true

att.Slot = "charm"
att.SortOrder = 9999

att.ActivateElements = {"ur_mp5_rail_optic"}
att.ExcludeFlags = {"barrel_sword"}
att.IgnorePickX = true
