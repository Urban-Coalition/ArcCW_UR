att.PrintName = "Precision Irons"

att.Icon = Material("entities/att/acwatt_ur_mp5_barrel_ris.png", "smooth mips")
att.Description = "Alternate iron sight position with a smaller field of view, potentially increasing user precision.\nIn reality, it's all preference."
att.Desc_Neutrals = {
    "uc.cosmetic"
}
att.AutoStats = true

att.Slot = "optic"
att.SortOrder = 9999

att.ActivateElements = {"ur_mp5_precision_irons"}
att.ExcludeFlags = {"barrel_sword"}
att.IgnorePickX = true