att.PrintName = "Desert Eagle .357 Magnum Conversion"
att.AbbrevName = ".357 Magnum"
att.Description = "A more practical caliber with higher capacity magazines and actually manageable recoil, but not as much raw power."

if !GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "Predator .357 Magnum Conversion"
end
-- Todo: alt shoot sound

att.AutoStats = true
att.Slot = "ur_deagle_caliber"

att.Mult_ClipSize = 9/7
att.Mult_Recoil = .8
att.Mult_Damage = .775
att.Mult_DamageMin = .775

att.Override_Trivia_Calibre = att.AbbrevName -- E F F I C I E N C Y