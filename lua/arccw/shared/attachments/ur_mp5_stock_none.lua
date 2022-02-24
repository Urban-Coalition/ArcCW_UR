att.PrintName = "MP5A1 Buttcap"
att.AbbrevName = "Buttcap"

if !GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "K7 Buttcap"
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
att.SortOrder = -1

att.Mult_Recoil = 3
att.Mult_RecoilSide = 1.5
att.Mult_VisualRecoilMult = 2
att.Mult_Sway = 2

att.Mult_SightTime = 0.75
att.Mult_SpeedMult = 1.1
att.Mult_SightedSpeedMult = 1.1
att.Mult_ShootSpeedMult = 1.1

att.Mult_DrawTime = 0.75
att.Mult_HolsterTime = 0.75
att.Add_BarrelLength = -4

att.ActivateElements = {"ur_mp5_stock_remove"}