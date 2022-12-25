att.PrintName = "MP5/40 .40 Smith & Wesson Conversion"
att.AbbrevName = ".40 S&W Receiver"

if !GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "PK5/40 .40 S&W Conversion"
end

att.SortOrder = 100
att.Icon = Material("entities/att/uc_bullets/40sw.png", "smooth mips")
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

local path = ")^weapons/arccw_ur/mp5/"

att.Hook_GetShootSound = function(wep, sound) -- Temporary
    if wep:GetBuff_Override("Silencer") then
        return "weapons/arccw_ud/glock/fire_supp.ogg"
    else
        return {path .. "fire-40-01.ogg", path .. "fire-40-02.ogg", path .. "fire-40-03.ogg", path .. "fire-40-04.ogg", path .. "fire-40-05.ogg", path .. "fire-40-06.ogg"}
    end
end

att.Hook_GetDistantShootSoundOutdoors = function(wep, distancesound)
    if wep:GetBuff_Override("Silencer") then
        return -- fallback to script
    else
        return {path .. "fire-40-dist-01.ogg", path .. "fire-40-dist-02.ogg", path .. "fire-40-dist-03.ogg", path .. "fire-40-dist-04.ogg", path .. "fire-40-dist-05.ogg", path .. "fire-40-dist-06.ogg"}
    end
end

-- att.Hook_GetDistantShootSound = function(wep, distancesound)
--     if distancesound == wep.DistantShootSound then
--         return "weapons/arccw_ud/glock/fire_dist_40.ogg" end
-- end

att.GivesFlags = {"ur_mp5_cal_40sw"}
--att.ExcludeFlags = {"barrel_sd"}
att.ActivateElements = {"ur_mp5_mag_waffle"}