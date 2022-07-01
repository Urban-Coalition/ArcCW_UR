att.PrintName = "AMAS 10-Round Extended Magazine"
if !GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "M1911 10-Round Extended Magazine"
end
att.AbbrevName = "10-Round Extended Mag"
att.Icon = Material("entities/att/acwatt_ur_deagle_mag_10.png","mips smooth")
att.Description = "A higher capacity magazine increases the time you can spend without reloading."
att.Slot = "ur_m1911_mag"
att.AutoStats = true

att.Override_ClipSize = 10
att.Mult_SightTime = 1.1
att.Mult_ReloadTime = 1.15
att.Mult_Sway = 1.25
att.Mult_SpeedMult = 0.98
att.Mult_ShootSpeedMult = 0.95

-- att.Hook_SelectReloadAnimation = function(wep, anim)
--     return anim .. "_10"
-- end
-- 10-round anims don't exist yet