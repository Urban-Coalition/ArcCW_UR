att.PrintName = "Delta Elite 10mm Auto Conversion"
att.AbbrevName = "10mm Auto"

if !GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "AMAS-FBI 10mm Auto Conversion"
end

-- att.Hook_NameChange = function(wep,name)
-- 	name = "Ruger SR1911"
-- end

att.SortOrder = 10
att.Icon = Material("entities/att/acwatt_uc_cal_10mm.png", "smooth mips")
att.Description = "The FBI's preferred caliber of choice.\nDespite its distinctive power, it's not as large as .45 ACP, though its damage curve is more balanced."
att.Desc_Pros = {
}
att.Desc_Cons = {
}
att.Desc_Neutrals = {
}
att.Slot = "ur_m1911_caliber"

att.AutoStats = true

att.Override_Trivia_Calibre = "10mm Auto"
-- att.Override_Trivia_Manufacturer = "Ruger"

att.Mult_Damage = 35 / 45
att.Mult_DamageMin = 20 / 15
att.Mult_Penetration = 8 / 9
att.Mult_RangeMin = 1.5

-- att.Mult_Recoil = 1.3
-- att.Mult_RecoilSide = 1.25
-- att.Mult_ReloadTime = 1.2
-- att.Mult_MalfunctionMean = 0.75

att.Mult_PhysBulletMuzzleVelocity = 1.5 --380 / 253

att.Mult_ClipSize = 8 / 7
att.Override_ShellScale = 1

att.Hook_GetShootSound = function(wep, sound)
    if wep:GetBuff_Override("Silencer") then
        return "weapons/arccw_ud/glock/fire_supp_10.ogg" -- Placeholder
    else
        return "weapons/arccw_ud/glock/fire_10.ogg" -- Not Placeholder
    end
end

att.Hook_GetDistantShootSound = function(wep, distancesound)
    if distancesound == wep.DistantShootSound then
        return "weapons/arccw_ud/glock/fire_dist_10.ogg" end
end

--[[
att.Override_ClipSize = 15
att.Override_ClipSize_Priority = -1
local slotinfo = {
    [7] = {"15-Round Mag", "15-Round Mag", nil},
}
att.Hook_GetDefaultAttName = function(wep, slot)
    if slotinfo[slot] then
        return GetConVar("arccw_truenames"):GetBool() and slotinfo[slot][2] or slotinfo[slot][1]
    end
end
att.Hook_GetDefaultAttIcon = function(wep, slot)
    if slotinfo[slot] then
        return slotinfo[slot][3]
    end
end
]]