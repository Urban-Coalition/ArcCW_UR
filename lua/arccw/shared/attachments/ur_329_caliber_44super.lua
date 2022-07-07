att.PrintName = "Model 329PD .44 Super"
att.AbbrevName = ".44 Super"
att.Icon = Material("entities/att/acwatt_uc_cal_44magnum.png","smooth mips")
att.Description = "you're too extra :3"

if !GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "Enforcement .44 Super"
end

att.AutoStats = true
att.Slot = "ur_329_caliber"

att.Mult_Recoil = 1.2

att.Mult_ShootSpeedMult = 0.9

att.Override_Trivia_Calibre = ".44 Super" -- nothing efficient about it strings are not objects

-- att.Hook_GetShootSound = function(wep, sound)
--     if wep:GetBuff_Override("Silencer") then
--         return "weapons/arccw_ur/deagle/fire_supp_10.ogg" -- Placeholder
--     else
--         return {"weapons/arccw_ur/sw329/fire-01.ogg", "weapons/arccw_ur/sw329/fire-02.ogg", "weapons/arccw_ur/sw329/fire-03.ogg", "weapons/arccw_ur/sw329/fire-04.ogg", "weapons/arccw_ur/sw329/fire-05.ogg", "weapons/arccw_ur/sw329/fire-06.ogg"} -- Not Placeholder
--     end
-- end
-- 
-- att.Hook_GetDistantShootSoundOutdoors = function(wep, distancesound)
--     if wep:GetBuff_Override("Silencer") then
--         -- fallback to script
--     else
--         return {"weapons/arccw_ur/sw329/fire-dist-01.ogg", "weapons/arccw_ur/sw329/fire-dist-02.ogg", "weapons/arccw_ur/sw329/fire-dist-03.ogg", "weapons/arccw_ur/sw329/fire-dist-04.ogg", "weapons/arccw_ur/sw329/fire-dist-05.ogg", "weapons/arccw_ur/sw329/fire-dist-06.ogg"}
--     end
-- end