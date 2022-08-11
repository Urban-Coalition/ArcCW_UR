att.PrintName = "RU556 Fixed-Adjustable Stock"
att.AbbrevName = "Fixed-Adjustable Stock"

if GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "Magpul UBR GEN2 Stock"
end

att.Description = [[Polymer aftermarket stock for the AR-15 welded onto the cap. Improves weapon control on the move, but lacks weight.]] -- i suggest you use settings from m16's fixed-adjustable stock
att.AutoStats = true
att.Slot = {"ur_g3_stock"}

att.SortOrder = 9

att.Mult_SpeedMult = 1.05
att.Mult_MoveDispersion = .6
att.Mult_SightTime = .9

att.Mult_Sway = 1.5
att.Mult_RecoilSide = 1.5

att.Override_ActivePos = Vector(0.5, 1.5, 0.7)