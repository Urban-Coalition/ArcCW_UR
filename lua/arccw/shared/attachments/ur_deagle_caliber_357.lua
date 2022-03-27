att.PrintName = "Desert Eagle .357 Magnum Conversion"
att.AbbrevName = ".357 Magnum"
att.Icon = Material("entities/att/acwatt_ur_deagle_bullets_357mag.png","smooth mips")
att.Description = "A more practical caliber with higher capacity magazines and actually manageable recoil, but not as much raw power."

if !GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "Predator .357 Magnum Conversion"
end

att.Hook_GetShootSound = function(wep, sound)
    if wep:GetBuff_Override("Silencer") then
        return "weapons/arccw_ur/deagle/fire_supp_10.ogg" -- Placeholder
    else
        return {"weapons/arccw_ur/deagle/fire_357_1.ogg", "weapons/arccw_ur/deagle/fire_357_2.ogg"} -- Not Placeholder
    end
end

--[[att.Hook_GetDistantShootSound = function(wep, distancesound)
    if distancesound == wep.DistantShootSound then
        return "weapons/arccw_ur/deagle/fire_dist_10.ogg" end
end]]

att.AutoStats = true
att.Slot = "ur_deagle_caliber"

att.Mult_ClipSize = 1.3
att.Mult_Recoil = 0.7
att.Mult_Damage = 0.72
att.Mult_DamageMin = 0.72

att.Mult_ShootSpeedMult = 1.2
--att.Mult_RPM = 1.2

att.Override_Trivia_Calibre = att.AbbrevName -- E F F I C I E N C Y
att.Override_ShellModel = "models/weapons/arccw/uc_shells/357sig.mdl"
att.Override_ShellScale = 1