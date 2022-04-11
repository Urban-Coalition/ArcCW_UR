att.PrintName = "RU556 Fixed-Adjustable Stock (Rubberized)"
att.AbbrevName = "Rubberized Carbine Stock"

att.Icon = Material("entities/att/ur_aw/stock_rurubber.png", "mips smooth")
if GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "Magpul UBR GEN2 Stock (Rubberized)"
end

att.Description = "Polymer stock designed for assault rifles. Rubber accents reduce the impact on aim sway, but weigh the stock down."
att.Slot = {"ur_aw_stock"}
att.AutoStats = true

att.SortOrder = 2

att.Mult_MoveDispersion = .6

att.Mult_Sway = 1.25
att.Mult_RecoilSide = 1.2

att.ActivateElements = {"stock_ru_rubber"}
att.GivesFlags = {"pistolgrip"}