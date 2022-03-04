att.PrintName = "MP5/40 .40 Smith & Wesson Conversion"
att.AbbrevName = ".40 S&W Receiver"

if !GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "PK5/40 .40 S&W Conversion"
end

att.SortOrder = 100
att.Icon = Material("entities/att/acwatt_ur_mp5_caliber.png", "smooth mips")
att.Description = "Law-enforcement caliber with a slightly larger bullet and shorter case.\nRetains damage over distance better than other calibers."
att.Desc_Pros = {
}
att.Desc_Cons = {
}
att.Desc_Neutrals = {
}
att.Slot = "ur_mp5_caliber"

att.AutoStats = true

att.Override_Trivia_Calibre = ".40 Smith & Wesson"

att.Mult_DamageMin = 1.35
att.Mult_RangeMin = 0.75
att.Mult_Recoil = 1.15

--att.Mult_ClipSize = .9
att.Override_ShellScale = 1.1

att.Hook_GetShootSound = function(wep, sound)
    if wep:GetBuff_Override("Silencer") then
        return "weapons/arccw_ud/glock/fire_supp_40.ogg" -- Placeholder
    else
        return "weapons/arccw_ud/glock/fire_40.ogg" -- Not Placeholder
    end
end

att.Hook_GetDistantShootSound = function(wep, distancesound)
    if distancesound == wep.DistantShootSound then
        return "weapons/arccw_ud/glock/fire_dist_40.ogg" end
end

att.GivesFlags = {"ur_mp5_cal_40sw"}
--att.ExcludeFlags = {"barrel_sd"}
att.ActivateElements = {"ur_mp5_mag_waffle"}