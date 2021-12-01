att.PrintName = "Desert Eagle .44 Magnum Conversion"
att.AbbrevName = ".44 Magnum"
att.Description = "Smaller (comparatively speaking) caliber that retains most of .50 AE's iconic punch, but is small enough to fit an extra round in the magazine."

if !GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "Predator .44 Magnum Conversion"
end
-- Todo: alt shoot sound

att.AutoStats = true
att.Slot = "ur_deagle_caliber"

att.Mult_ClipSize = 1.15
att.Mult_Recoil = 0.85
att.Mult_Damage = 0.875
att.Mult_DamageMin = 0.875

att.Mult_ShootSpeedMult = 1.1
--att.Mult_RPM = 1.1

att.Override_Trivia_Calibre = att.AbbrevName -- E F F I C I E N C Y
att.Override_ShellScale = 2.145