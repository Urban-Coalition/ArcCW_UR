att.PrintName = "Desert Eagle .50 Master Class Conversion"
att.AbbrevName = ".50 Master Class"
att.Icon = Material("entities/att/acwatt_ur_deagle_bullets_50mc.png","smooth mips")
att.Description = "Hailing from 2552."
att.Desc_Pros = {
    "uc.auto"
}

if !GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "Predator .50 Master Class Conversion"
end

att.Hook_GetShootSound = function(wep, sound)
    if wep:GetBuff_Override("Silencer") then
        return "weapons/arccw_ur/deagle/fire_supp_10.ogg" -- Placeholder
    else
        return {"weapons/arccw_ur/deagle/fire_halo_1.ogg", "weapons/arccw_ur/deagle/fire_halo_2.ogg", "weapons/arccw_ur/deagle/fire_halo_3.ogg", "weapons/arccw_ur/deagle/fire_halo_4.ogg", "weapons/arccw_ur/deagle/fire_halo_5.ogg"} -- Not Placeholder
    end
end

--[[att.Hook_GetDistantShootSound = function(wep, distancesound)
    if distancesound == wep.DistantShootSound then
        return "weapons/arccw_ur/deagle/fire_dist_10.ogg" end
end]]

att.AutoStats = true
att.Slot = "ur_deagle_caliber"

att.Mult_ClipSize = 1.2
att.Mult_Recoil = 0
att.Mult_Damage = 0.57
att.Mult_DamageMin = 0.57

att.Mult_ShootSpeedMult = 0.7
att.Mult_RPM = (210/200)

att.Override_Trivia_Calibre = att.AbbrevName -- E F F I C I E N C Y
--att.Override_ShellModel = "models/weapons/arccw/uc_shells/40sw.mdl"
att.Override_ShellScale = 1.05



att.Override_Firemodes = {
    {
        Mode = 2,
    },
    {
        Mode = 0
    }
}