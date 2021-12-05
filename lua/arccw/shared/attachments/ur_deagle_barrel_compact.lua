att.PrintName = "5.5\" Desert Eagle Compact Barrel"
att.AbbrevName = "5.5\" Compact Barrel"
if !GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "5.5\" Predator Compact Barrel"
end
att.Icon = Material("entities/att/acwatt_ur_deagle_barrel_compact.png","smooth mips")
att.Description = "Aftermarket reduced barrel that enhances concealability and ergonomics at the cost of ranged performance."
att.Slot = "ur_deagle_barrel"
att.AutoStats = true
att.SortOrder = 5.5

att.Mult_AccuracyMOA = 1.25
att.Mult_Range = 0.9
att.Mult_SightTime = 0.9
att.Mult_Sway = 0.8
att.Add_BarrelLength = -2
att.Mult_HipDispersion = 0.95

att.Mult_DrawTime = 0.9
att.Mult_HolsterTime = 0.9

att.ActivateElements = {"ur_deagle_barrel_compact"}