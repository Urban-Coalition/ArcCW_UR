att.PrintName = "45-Round Extended Mag"
att.Icon = Material("entities/att/ur_ak/magazines/545_45.png", "mips smooth")
att.Description = "Extended magazine for the AK-74. While intended for squad gunners, the extra ammo is useful for any loadout, though the longer mag is noticeably heavier."
att.Slot = {"ur_ak_mag"}
att.AutoStats = true
att.Desc_Cons = {
    "uc.jam"
}

att.SortOrder = 45

att.HideIfBlocked = true

att.Override_ClipSize = 45

att.Mult_SightTime = 1.25
att.Mult_ReloadTime = 1.15
att.Mult_Sway = 1.5
att.Mult_RecoilSide = 1.2
att.Mult_SpeedMult = 0.95
att.Mult_ShootSpeedMult = 0.9

att.Override_Malfunction = true
att.Mult_MalfunctionMean = 0.85
att.Mult_MalfunctionVariance = 1.5

att.Mult_HipDispersion = 1.25

att.ActivateElements = {"mag_545_45"}
att.RequireFlags = {"cal_545"}