att.PrintName = "IZh-58 22\" Mid-size Barrel"
att.AbbrevName = "22\" Mid-size Barrel"

if !GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "Volga SuperShotgun 22\" Mid-size Barrel"
end

att.Icon = Material("entities/att/ur_dbs/bmid.png","smooth mips")
att.Description = "Take off just a bit of the barrel for an edge in close-quarters while maintaining as much performance as possible."
att.Slot = {"ur_db_barrel"}
att.AutoStats = true
att.SortOrder = 22


att.Mult_Sway = .85
att.Add_BarrelLength = -4
att.Mult_Recoil = 1.1
att.Mult_Range = .9


att.ActivateElements = {"barrel_mid"}