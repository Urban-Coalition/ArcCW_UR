att.PrintName = "MP5 50-Round Drum Magazine"
att.AbbrevName = "50-Round Drum Mag"

if !GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "PK5 50-Round Drum Magazine"
end


att.SortOrder = 10
att.Icon = Material("entities/att/ur_mp5/mag50.png", "smooth mips")
att.Description = "Drum magazine with a 50-round capacity. Compact and reliable as far as drum magazines come, but still prone to jamming and ergonomics problems."
att.Desc_Pros = {
}
att.Desc_Cons = {
    "uc.jam"
}
att.Desc_Neutrals = {
}
att.Slot = "ur_mp5_mag"

att.AutoStats = true


att.Override_ClipSize = 50

att.Mult_SightTime = 1.25
--att.Mult_Recoil = 0.9
att.Mult_ReloadTime = 1.15
att.Mult_SpeedMult = 0.93
att.Mult_DrawTime = 1.2
att.Mult_HolsterTime = 1.2
att.Mult_Sway = 1.7
--att.Mult_ShootSpeedMult = 0.85
--att.Override_Jamming = true
att.Override_Malfunction = true
att.Mult_MalfunctionMean = 0.85
att.Mult_MalfunctionVariance = 1.5

att.ActivateElements = {"ur_mp5_50_mag"}
att.ExcludeFlags = {"ur_mp5_cal_10mm","ur_mp5_cal_40sw"}

att.Hook_SelectReloadAnimation = function(wep, anim)
    return anim .. "_drum"
end