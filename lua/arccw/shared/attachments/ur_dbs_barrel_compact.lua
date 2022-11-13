att.PrintName = "IZh-58 18\" Coach Gun Barrel"
att.AbbrevName = "18\" Coach Gun Barrel"

if !GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "Volga SuperShotgun 18\" Coach Gun Barrel"
end

att.Icon = Material("entities/att/ur_dbs/bcomp.png","smooth mips")
att.Description = "Named for use by private guards aboard stagecoaches in the Wild West, its short length is ideal for small rooms, though not quite as ideal at any longer distances."
att.Slot = {"ur_db_barrel"}
att.AutoStats = true

att.Mult_Sway = .75
att.Add_BarrelLength = -9
att.Mult_SightTime = .9
att.Mult_HipDispersion = 0.8

att.Mult_Recoil = 1.2
att.Mult_AccuracyMOA = 1.25
att.Mult_Range = .85

att.ActivateElements = {"barrel_compact"}

att.SortOrder = 18