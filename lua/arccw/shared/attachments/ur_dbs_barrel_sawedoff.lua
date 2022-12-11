att.PrintName = "IZh-58 12\" Sawed-off Barrel"
att.AbbrevName = "12\" Sawed-off Barrel"

if !GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "Volga SuperShotgun 12\" Sawed-off Barrel"
end

att.Icon = Material("entities/att/ur_dbs/bsw.png","smooth mips")
att.Description = "Sawed-off barrel, often associated with outlaws. Enhances portability and looks the part for hunting unholy creatures."
att.Slot = {"ur_db_barrel"}
att.AutoStats = true
att.SortOrder = 12


att.Add_BarrelLength = -16
att.Mult_Sway = .6
att.Mult_SightTime = .85
att.Mult_DrawTime = .85
att.Mult_HolsterTime = .85
att.Mult_SpeedMult = 1.03
att.Mult_HipDispersion = 0.75

att.Mult_Recoil = 1.4
att.Mult_AccuracyMOA = 2
att.Mult_Range = .65


att.ActivateElements = {"barrel_sw"}
att.GivesFlags = {"sawnoff"}