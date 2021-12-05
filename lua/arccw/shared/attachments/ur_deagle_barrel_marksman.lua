att.PrintName = "10\" Desert Eagle Marksman Barrel"
att.AbbrevName = "10\" Marksman Barrel"
if !GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "10\" Predator Marksman Barrel"
end
att.Icon = Material("entities/att/acwatt_ur_deagle_barrel_police.png","smooth mips")
att.Description = "Elongated barrel for niche mid-range roles. Especially front-heavy."
att.Slot = "ur_deagle_barrel"
att.AutoStats = true
att.SortOrder = 10

att.Mult_AccuracyMOA = 0.5
att.Mult_Range = 2
att.Mult_Recoil = 0.75
att.Mult_SightTime = 1.25
att.Mult_Sway = 1.25
att.Mult_ShootPitch = 0.9
att.Mult_HipDispersion = 1.2

att.Add_BarrelLength = 10

att.Mult_DrawTime = 1.5
att.Mult_HolsterTime = 1.5

att.ActivateElements = {"ur_deagle_barrel_marksman"}