att.PrintName = "IZh-58 Sawed-off Stock"
att.AbbrevName = "Sawed-off Stock"

if !GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "Volga SuperShotgun Sawed-off Stock"
end

att.Icon = Material("entities/att/ur_dbs/ssw.png","smooth mips")
att.Description = "You can keep it under your trenchcoat now."
att.Slot = {"ur_db_stock"}
att.AutoStats = true
att.Free = true
att.SortOrder = -1

att.Mult_SpeedMult = 1.05

att.Mult_SightTime = 0.75
att.Mult_DrawTime = 0.75
att.Mult_HolsterTime = 0.75

att.Mult_Recoil = 1.4
att.Mult_RecoilSide = 1.25

att.Mult_SightedSpeedMult = 1.2
att.Mult_ShootSpeedMult = 1.15

att.Add_BarrelLength = -12
att.Mult_Sway = 3

att.ActivateElements = {"stock_sw"}