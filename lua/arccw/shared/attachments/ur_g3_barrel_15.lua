att.PrintName = "HK33A2 15\" Assault Barrel"
att.AbbrevName = "15\" Assault Barrel"

if !GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "CN66 15\" Assault Barrel"
end

att.Icon = Material("entities/att/ur_g3/barrel_33.png","smooth mips")
att.Description = "Standard barrel for the intermediate carbine variant of the rifle. Improves weapon handling while marginally reducing range."
att.Slot = "ur_g3_barrel"
att.AutoStats = true

att.SortOrder = 15

att.Mult_SightTime = 0.9
att.Add_BarrelLength = -4
att.Mult_SightedSpeedMult = 1.05
att.Mult_Sway = 0.85

att.Mult_Recoil = 1.1
att.Mult_AccuracyMOA = 1.1
att.Mult_Range = 0.75

att.GivesFlags = {"g3_not8"}
