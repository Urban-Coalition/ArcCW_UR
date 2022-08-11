att.PrintName = "HK33 20-Round Compact Mag"
att.AbbrevName = "20-Round Compact Mag"
-- att.Icon = Material("entities/att/uc_bullets/556x45.png", "mips smooth")
att.Description = "Low-capacity magazine for the HK33. The lighter load makes the weapon more ergonomic."
att.Slot = {"ur_g3_mag"}
att.AutoStats = true

att.HideIfBlocked = true
att.SortOrder = 10

att.Override_ClipSize = 20
att.Override_ClipSize_Priority = 2

att.Mult_SightTime = 0.85
att.Mult_ReloadTime = 0.9
att.Mult_Sway = 0.75

att.Mult_SpeedMult = 1.025
att.Mult_SightedSpeedMult = 1.05
att.Mult_ShootSpeedMult = 1.05

att.Mult_MalfunctionMean = 1.5

att.RequireFlags = {"cal_556"}

att.Hook_SelectReloadAnimation = function(wep, anim)
    return anim
end