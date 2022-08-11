att.PrintName = "G3 7.62 10-Round Mag"
att.Description = "Magazine with a very low capacity. The lighter load reduces the weapon's weight significantly. balance this shit"
att.Slot = {"ur_g3_mag"}
att.AutoStats = true

att.SortOrder = 14

att.HideIfBlocked = true

att.Override_ClipSize = 10

att.Mult_SightTime = 0.9
att.Mult_ReloadTime = 0.8
att.Mult_Sway = 0.7

att.Mult_SpeedMult = 1.025
att.Mult_ShootSpeedMult = 1.05

att.Mult_MalfunctionMean = 1.6

att.ExcludeFlags = {"cal_556"}

--[[att.Hook_SelectReloadAnimation = function(wep, anim)
    return anim .. "_10rnd"
end]] --for later