att.PrintName = "MP5/10 10mm Auto Conversion"
att.AbbrevName = "10mm Auto Receiver"

if !GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "PK5/10 10mm Auto Conversion"
end

att.SortOrder = 80
att.Icon = Material("entities/att/uc_bullets/10.png", "smooth mips")
att.Description = "The FBI's preferred caliber of choice.\nSignificantly more powerful, but weapon handling suffers."
att.Desc_Pros = {
}
att.Desc_Cons = {
}
att.Desc_Neutrals = {
}
att.Slot = "ur_mp5_caliber"

att.AutoStats = true

att.Override_Trivia_Calibre = "10mm Auto"

att.Mult_Damage = 1.15
att.Mult_DamageMin = 1.15

att.Mult_Recoil = 1.25
att.Mult_RecoilSide = 1.25
att.Mult_ReloadTime = 1.15
att.Mult_MalfunctionMean = 0.75

--att.Mult_ClipSize = 0.9
att.Override_ShellScale = 1.1

local path = ")^weapons/arccw_ur/1911/"

att.Hook_GetShootSound = function(wep, sound) -- Temporary
    if wep:GetBuff_Override("Silencer") then
        return "weapons/arccw_ud/glock/fire_supp.ogg"
    else
        return {path .. "fire-10-01.ogg", path .. "fire-10-02.ogg", path .. "fire-10-03.ogg", path .. "fire-10-04.ogg", path .. "fire-10-05.ogg", path .. "fire-10-06.ogg"}
    end
end

att.Hook_GetDistantShootSoundOutdoors = function(wep, distancesound)
    if wep:GetBuff_Override("Silencer") then
        return -- fallback to script
    else
        return {path .. "fire-10-dist-01.ogg", path .. "fire-10-dist-02.ogg", path .. "fire-10-dist-03.ogg", path .. "fire-10-dist-04.ogg", path .. "fire-10-dist-05.ogg", path .. "fire-10-dist-06.ogg"}
    end
end

-- att.Hook_GetDistantShootSound = function(wep, distancesound)
--     if distancesound == wep.DistantShootSound then
--         return "weapons/arccw_ud/glock/fire_dist_10.ogg" end
-- end

att.GivesFlags = {"ur_mp5_cal_10mm"}
--att.ExcludeFlags = {"barrel_sd"}
att.ActivateElements = {"ur_mp5_mag_waffle"}