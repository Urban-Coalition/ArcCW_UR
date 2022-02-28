att.PrintName = "MP5 40-Round Extended Mag"
att.AbbrevName = "40-Round Extended Mag"

if !GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "PK5 40-Round Extended Mag"
end

att.SortOrder = 40
att.Icon = Material("entities/att/acwatt_ur_mp5_mag_40.png", "smooth mips")
att.Description = "Extended magazine for the MP5. It is only somewhat longer than the standard magazine, making it not that difficult to handle."
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
att.Mult_ReloadTime = 1.12
--att.Mult_SpeedMult = 0.9
att.Override_ClipSize = 40
att.Mult_Sway = 1.15

att.ActivateElements = {"ur_mp5_mag_40"}

att.Hook_SelectReloadAnimation = function(wep, anim)
    return anim .. "_40"
end

att.ExcludeFlags = {"ur_mp5_cal_10mm","ur_mp5_cal_40sw"}