att.PrintName = "7\" Model 29 Extended Barrel"
att.AbbrevName = "7\" Extended Barrel"
if !GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "7\" Thunderbolt Extended Barrel"
end
att.Icon = Material("entities/att/acwatt_ur_deagle_barrel_long.png","smooth mips")
att.Description = "Slightly extended barrel that provides extra counterweight in addition to marginal ballistic enhancements."
att.Slot = "ur_329_barrel"
att.AutoStats = true
att.SortOrder = 7

att.Mult_AccuracyMOA = 0.8
att.Mult_Range = 1.25
att.Mult_Recoil = 0.9
att.Mult_SightTime = 1.1
att.Mult_Sway = 1.15
att.Mult_HipDispersion = 1.1

att.Add_BarrelLength = 4

att.Mult_DrawTime = 1.25
att.Mult_HolsterTime = 1.25