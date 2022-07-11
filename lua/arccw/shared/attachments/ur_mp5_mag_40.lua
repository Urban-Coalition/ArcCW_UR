att.PrintName = "MP5 50-Round Drum Mag"
att.AbbrevName = "50-Round Drum Mag"

if !GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "PK5 50-Round Drum Mag"
end

att.SortOrder = 40
att.Icon = Material("entities/att/acwatt_ur_mp5_mag_40.png", "smooth mips")
att.Description = "50-round capacity drum magazine. Very compact and reliable as far as drum magazines come."
att.Desc_Pros = {
}
att.Desc_Cons = {
}
att.Desc_Neutrals = {
}
att.Slot = "ur_mp5_mag"

att.AutoStats = true

att.Mult_SightTime = 1.08
--att.Mult_Recoil = 0.9
--att.Mult_SpeedMult = 0.9
att.Override_ClipSize = 50
att.Mult_Sway = 1.15

att.ActivateElements = {"ur_mp5_mag_40"}

att.Hook_SelectReloadAnimation = function(wep, anim)
    return anim .. "_drum"
end

att.ExcludeFlags = {"ur_mp5_cal_10mm","ur_mp5_cal_40sw"}

att.Ignore = true