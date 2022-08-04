att.PrintName = "Desert Eagle .357 Magnum Conversion"
att.AbbrevName = ".357 Magnum"
att.Icon = Material("entities/att/uc_bullets/357magnum.png","smooth mips")
att.Description = "A more practical caliber with higher capacity magazines and actually manageable recoil, but not as much raw power."

if !GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "Predator .357 Magnum Conversion"
end

att.Hook_GetShootSound = function(wep, sound)
    if wep:GetBuff_Override("Silencer") then
        return "weapons/arccw_ur/deagle/fire_supp_10.ogg" -- Placeholder
    else
        return {"weapons/arccw_ur/sw586/fire-01.ogg", "weapons/arccw_ur/sw586/fire-02.ogg", "weapons/arccw_ur/sw586/fire-03.ogg", "weapons/arccw_ur/sw586/fire-04.ogg", "weapons/arccw_ur/sw586/fire-05.ogg", "weapons/arccw_ur/sw586/fire-06.ogg"} -- Not Placeholder
    end
end

att.Hook_GetDistantShootSoundOutdoors = function(wep, distancesound)
    if wep:GetBuff_Override("Silencer") then
        -- fallback to script
    else
        return {"weapons/arccw_ur/sw586/fire-dist-01.ogg", "weapons/arccw_ur/sw586/fire-dist-02.ogg", "weapons/arccw_ur/sw586/fire-dist-03.ogg", "weapons/arccw_ur/sw586/fire-dist-04.ogg", "weapons/arccw_ur/sw586/fire-dist-05.ogg", "weapons/arccw_ur/sw586/fire-dist-06.ogg"}
    end
end

att.AutoStats = true
att.Slot = "ur_deagle_caliber"

att.Mult_ClipSize = 1.3
att.Mult_Recoil = 0.7
att.Mult_Damage = 60 / 80
att.Mult_DamageMin = 20 / 12

att.Mult_ShootSpeedMult = 1.2
att.Mult_RPM = 1.1

att.Override_Trivia_Calibre = att.AbbrevName -- E F F I C I E N C Y
att.Override_ShellModel = "models/weapons/arccw/uc_shells/357sig.mdl"
att.Override_ShellScale = 1