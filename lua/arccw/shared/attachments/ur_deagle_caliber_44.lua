att.PrintName = "Desert Eagle .44 Magnum Conversion"
att.AbbrevName = ".44 Magnum"
att.Icon = Material("entities/att/acwatt_uc_cal_44magnum.png","smooth mips")
att.Description = "Smaller (comparatively speaking) caliber that retains most of .50 AE's iconic punch, but is small enough to fit an extra round in the magazine."

if !GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "Predator .44 Magnum Conversion"
end
-- Todo: alt shoot sound

att.AutoStats = true
att.Slot = "ur_deagle_caliber"

att.Mult_ClipSize = 1.15
att.Mult_Recoil = 0.85
att.Mult_Damage = 75 / 80
att.Mult_DamageMin = 16 / 12

att.Mult_ShootSpeedMult = 1.1
--att.Mult_RPM = 1.1

att.Override_Trivia_Calibre = att.AbbrevName -- E F F I C I E N C Y
att.Override_ShellModel = "models/weapons/arccw/uc_shells/40sw.mdl"
att.Override_ShellScale = 1

att.Hook_GetShootSound = function(wep, sound)
    if wep:GetBuff_Override("Silencer") then
        return "weapons/arccw_ur/deagle/fire_supp_10.ogg" -- Placeholder
    else
        return {"weapons/arccw_ur/sw329/fire-01.ogg", "weapons/arccw_ur/sw329/fire-02.ogg", "weapons/arccw_ur/sw329/fire-03.ogg", "weapons/arccw_ur/sw329/fire-04.ogg", "weapons/arccw_ur/sw329/fire-05.ogg", "weapons/arccw_ur/sw329/fire-06.ogg"} -- Not Placeholder
    end
end

att.Hook_GetDistantShootSoundOutdoors = function(wep, distancesound)
    if wep:GetBuff_Override("Silencer") then
        -- fallback to script
    else
        return {"weapons/arccw_ur/sw329/fire-dist-01.ogg", "weapons/arccw_ur/sw329/fire-dist-02.ogg", "weapons/arccw_ur/sw329/fire-dist-03.ogg", "weapons/arccw_ur/sw329/fire-dist-04.ogg", "weapons/arccw_ur/sw329/fire-dist-05.ogg", "weapons/arccw_ur/sw329/fire-dist-06.ogg"}
    end
end