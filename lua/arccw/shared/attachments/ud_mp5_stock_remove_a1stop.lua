att.PrintName = "MP5A1 Buttcap"
att.AbbrevName = "A1 Buttcap"

if !GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "K7 Buttcap"
end

att.Icon = Material("entities/att/acwatt_ur_mp5_stock_solid.png", "smooth mips")
att.Description = "A simple buttcap to cover the internals of your weapon. Functions identically to simply removing your sliding stock"
att.Desc_Pros = {}
att.Desc_Cons = {}
att.Desc_Neutrals = {}
att.Slot = "ur_mp5_stock"

att.AutoStats = true
att.SortOrder = 2

att.Mult_Recoil = 1.25
att.Mult_RecoilSide = 1.5
att.Mult_VisualRecoilMult = 2
att.Mult_Sway = 2

att.Mult_SightTime = 0.75
att.Mult_SightedSpeedMult = 1.1
att.Mult_ShootSpeedMult = 1.1

att.Mult_DrawTime = 0.75
att.Mult_HolsterTime = 0.75
att.Add_BarrelLength = -2