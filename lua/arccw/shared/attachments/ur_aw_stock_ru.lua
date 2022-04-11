att.PrintName = "RU556 Fixed-Adjustable Stock"
att.AbbrevName = "Fixed-Adjustable Stock"

att.Icon = Material("entities/att/ur_aw/stock_ru.png", "mips smooth")
if GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "Magpul UBR GEN2 Stock"
end

att.Description = "Polymer stock designed for assault rifles. Unstable, but provides much-needed mobility."
att.Slot = {"ur_aw_stock"}
att.AutoStats = true

att.SortOrder = 2.1

att.Mult_SpeedMult = 1.08
att.Mult_MoveDispersion = .6
att.Mult_SightTime = .9

att.Mult_Sway = 1.5
att.Mult_RecoilSide = 1.5

att.ActivateElements = {"stock_ru"}
att.GivesFlags = {"pistolgrip"}