att.PrintName = "AK Thumbhole Stock"
att.AbbrevName = "Thumbhole Stock"
if !GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "KF Thumbhole Stock"
end
att.Icon = Material("entities/att/ur_ak/stock/vepr.png", "mips smooth")
att.Description = "Marksman stock with integrated grip. The thumbhole design provides unparalleled stability."
att.Slot = {"ur_ak_stock"}
att.AutoStats = true
att.Desc_Cons = {
    "uc.nogrip"
}

att.SortOrder = 3

att.Mult_Recoil = 0.85
att.Mult_Sway = 0.5
att.Mult_SightTime = 1.15
att.Mult_SpeedMult = 0.95
att.Mult_SightedSpeedMult = 0.8

att.ActivateElements = {"stock_vepr"}
att.GivesFlags = {"stock_vepr"}