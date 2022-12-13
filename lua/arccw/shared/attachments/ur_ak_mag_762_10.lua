att.PrintName = "AK-47 10-Round Compact Mag"
att.AbbrevName = "10-Round Compact Mag"
att.Icon = Material("entities/att/ur_ak/magazines/366_10.png", "mips smooth")
att.Description = "Sporting purpose magazine with a very low capacity. The lighter load reduces the weapon's weight significantly."
att.Slot = {"ur_ak_mag"}
att.AutoStats = true

att.SortOrder = 10
att.GivesFlags = {"mag_366"}

att.HideIfBlocked = true

att.Override_ClipSize = 10

att.Mult_SightTime = 0.8
att.Mult_ReloadTime = 0.85
att.Mult_Sway = 0.5

att.Mult_SpeedMult = 1.025
att.Mult_ShootSpeedMult = 1.05

att.Mult_HipDispersion = 0.75

att.Mult_MalfunctionMean = 1.6

att.Hook_SelectReloadAnimation = function(wep, anim)
    return anim .. "_10rnd"
end

-- att.Hook_TranslateAnimation = function(wep, anim)
--     if (anim == "fix") then
--         return anim .. "_75"
--     end
-- end

att.ActivateElements = {"mag_762_75"}
att.ExcludeFlags = {"cal_545","cal_9mm","cal_12g","cal_308","cal_556"} -- Includes .366