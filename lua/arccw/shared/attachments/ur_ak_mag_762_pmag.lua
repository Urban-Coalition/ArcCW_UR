att.PrintName = "PMAG 30 AK/AKM MOE"
att.AbbrevName = "30-Round PMAG"
att.Icon = Material("entities/att/ur_ak/magazines/762_p.png", "mips smooth")
att.Description = "American aftermarket magazine. The grooves give it a slightly better grip surface, but the difference in practice is negligible."
att.Slot = {"ur_ak_mag"}
att.AutoStats = true
att.Desc_Neutrals = {
    "uc.cosmetic",
}

att.SortOrder = 30

att.HideIfBlocked = true

att.ActivateElements = {"mag_762_pmag"}
att.ExcludeFlags = {"cal_545","cal_9mm","cal_12g","cal_308","cal_556"} -- Includes .366