att.PrintName = "MP5A1 Buttcap"
att.AbbrevName = "Buttcap"

if !GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "PK5-1 Buttcap"
end

att.Icon = nil -- Material("entities/att/acwatt_lowpolysaiga12extmag.png", "smooth mips")
att.Description = "Remove your stock. Who needs it, anyway? Not you, that's for sure."
att.Desc_Pros = {
}
att.Desc_Cons = {
}
att.Desc_Neutrals = {
}
att.Slot = "ur_mp5_stock"

att.AutoStats = true
att.Free = true
att.SortOrder = -1

att.Mult_Recoil = 2.15
att.Mult_RecoilSide = 1.25
att.Mult_Sway = 3

att.Mult_SightTime = 0.65
att.Mult_SpeedMult = 1.1
att.Mult_SightedSpeedMult = 1.25
att.Mult_ShootSpeedMult = 1.2

att.Mult_DrawTime = 0.6
att.Mult_HolsterTime = 0.6
att.Add_BarrelLength = -6

att.ActivateElements = {"ur_mp5_stock_remove"}