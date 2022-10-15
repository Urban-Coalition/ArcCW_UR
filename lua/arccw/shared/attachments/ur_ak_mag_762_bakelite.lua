att.PrintName = "30-Round Bakelite Mag"
att.AbbrevName = "30-Round Mag (Bakelite)"
att.Icon = Material("entities/att/ur_ak/magazines/762_b.png", "mips smooth")
att.Description = "Plastic variant of the standard issue magazine. Might suit your taste better."
att.Slot = {"ur_ak_mag"}
att.AutoStats = true
att.Desc_Neutrals = {
    "uc.cosmetic",
}

att.SortOrder = 30

att.HideIfBlocked = true

att.ActivateElements = {"mag_762_bakelite"}
att.ExcludeFlags = {"cal_545","cal_9mm","cal_12g","cal_308","cal_556"} -- Includes .366