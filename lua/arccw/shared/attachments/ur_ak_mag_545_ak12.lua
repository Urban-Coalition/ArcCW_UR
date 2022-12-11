att.PrintName = "AK-12 30-Round Polymer Mag"
att.AbbrevName = "30-Round Polymer Mag"
att.Icon = Material("entities/att/ur_ak/magazines/545_30_ak12.png", "mips smooth")
att.Description = "Contemporary polymer magazine. The grooves give it a slightly better grip surface, but the difference in practice is negligible."
att.Slot = {"ur_ak_mag"}
att.AutoStats = true
att.Desc_Neutrals = {
    "uc.cosmetic",
}

att.SortOrder = 98

att.HideIfBlocked = true

-- att.Override_ClipSize = 45

-- att.Mult_SightTime = 1.25
-- att.Mult_ReloadTime = 1.15
-- att.Mult_Sway = 1.5
-- att.Mult_RecoilSide = 1.2
-- att.Mult_SpeedMult = 0.95
-- att.Mult_ShootSpeedMult = 0.9

-- att.Override_Malfunction = true
-- att.Mult_MalfunctionMean = 0.85
-- att.Mult_MalfunctionVariance = 1.5

att.ActivateElements = {"mag_545_ak12"}
-- att.ActivateElements = {"mag_545_45"}
att.RequireFlags = {"cal_545"}

-- Goes into standalone AK pack
att.Ignore = true
att.Icon = Material("entities/att/obsolete.png", "mips smooth")
att.Description = "stop looking at deprecated shit you suka"