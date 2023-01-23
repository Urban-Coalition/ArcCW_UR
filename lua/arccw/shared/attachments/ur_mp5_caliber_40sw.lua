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

local path = ")weapons/arccw_ur/mp5/"
local fire40 = {path .. "fire-40-01.ogg",path .. "fire-40-02.ogg",path .. "fire-40-03.ogg",path .. "fire-40-04.ogg",path .. "fire-40-05.ogg",path .. "fire-40-06.ogg"}
local fire40sup = {path .. "fire-40-sup-01.ogg",path .. "fire-40-sup-02.ogg",path .. "fire-40-sup-03.ogg",path .. "fire-40-sup-04.ogg",path .. "fire-40-sup-05.ogg",path .. "fire-40-sup-06.ogg"}

att.Hook_GetShootSound = function(wep, sound)
    if wep:GetBuff_Override("Silencer") then
        return fire40sup
    else
        return fire40
    end
end

local tail = ")/arccw_uc/common/40sw/"
local fire40dist = {tail .. "fire-dist-40sw-pistol-ext-01.ogg", tail .. "fire-dist-40sw-pistol-ext-02.ogg", tail .. "fire-dist-40sw-pistol-ext-03.ogg", tail .. "fire-dist-40sw-pistol-ext-04.ogg", tail .. "fire-dist-40sw-pistol-ext-05.ogg", tail .. "fire-dist-40sw-pistol-ext-06.ogg"}
local common = ")/arccw_uc/common/"

att.Hook_GetDistantShootSoundOutdoors = function(wep, distancesound)
    if wep:GetBuff_Override("Silencer") then
        -- fallback to script
    else
        return fire40dist
    end
end


local fire40distint = {common .. "fire-dist-int-pistol-heavy-01.ogg", common .. "fire-dist-int-pistol-heavy-02.ogg", common .. "fire-dist-int-pistol-heavy-03.ogg", common .. "fire-dist-int-pistol-heavy-04.ogg", common .. "fire-dist-int-pistol-heavy-05.ogg", common .. "fire-dist-int-pistol-heavy-06.ogg"}

att.Hook_GetDistantShootSoundIndoors = function(wep, distancesound)
    if wep:GetBuff_Override("Silencer") then
        -- fallback to script
    else
        return fire40distint
    end
end

-- att.Hook_GetDistantShootSound = function(wep, distancesound)
--     if distancesound == wep.DistantShootSound then
--         return "weapons/arccw_ud/glock/fire_dist_40.ogg" end
-- end

att.GivesFlags = {"ur_mp5_cal_40sw"}
--att.ExcludeFlags = {"barrel_sd"}
att.ActivateElements = {"ur_mp5_mag_waffle"}