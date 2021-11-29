att.PrintName = "Desert Eagle .410 Bore Conversion"
att.AbbrevName = ".410 Bore"
att.Description = "Hobbyist conversion that allows the weapon to accept .410 bore shotgun shells. Because the weapon was never meant to fire these, performance beyond point blank is poor."

if !GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "Predator .410 Bore Conversion"
end
-- Todo: alt shoot sound

att.AutoStats = true
att.Desc_Pros = {
    "+4 Projectiles"
}
att.Desc_Cons = {
    "uc.jam"
}
att.Slot = "ur_deagle_caliber"
att.SortOrder = -1

att.Override_Num = 5
--att.Mult_Damage = 1.2
att.Mult_RPM = .8
att.Mult_Range = .75
att.Mult_AccuracyMOA = 11
att.Add_ClipSize = 3
att.Mult_HipDispersion = 1.5
att.Override_Malfunction = true
att.Mult_MalfunctionVariance = 1.5

att.Override_IsShotgun = true
att.Override_Ammo = "buckshot"
att.Override_ShellModel = "models/weapons/arccw/ud_shells/12.mdl"
att.Override_ShellScale = 1
att.Override_ShellSounds = ArcCW.ShotgunShellSoundsTable
att.Override_Trivia_Class = "Shot Pistol"
att.Override_Trivia_Calibre = att.AbbrevName -- E F F I C I E N C Y