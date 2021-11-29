att.PrintName = "Desert Eagle .357 Magnum Conversion"
att.AbbrevName = ".357 Magnum"
att.Description = "A more practical caliber with higher capacity magazines and actually manageable recoil, but not as much raw power."

if !GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "Predator .357 Magnum Conversion"
end
-- Todo: alt shoot sound

att.AutoStats = true
att.Slot = "ur_deagle_caliber"

att.Mult_ClipSize = 1.3
att.Mult_Recoil = 0.6
att.Mult_Damage = 0.725
att.Mult_DamageMin = 0.725

att.Mult_ShootSpeedMult = 1.2
--att.Mult_RPM = 1.2

att.Override_Trivia_Calibre = att.AbbrevName -- E F F I C I E N C Y