att.PrintName = "MP5 \"Swordfish\" Futuristic Stock"
att.AbbrevName = "Futuristic Stock"

if !GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "PK5-Future Folding Stock"
end

att.Icon = Material("entities/att/ur_mp5/stock_fish.png", "smooth mips")
att.Description = "Plastic-polymer stock with a telescoping buttstock and adjustable cheek riser. Though these features make for much situational adaptability, recoil control suffers as a result of the light construction.\n\nToggling the stock modifies performance accordingly."
att.AutoStats = true
att.Slot = "ur_mp5_stock"

att.ToggleLockDefault = true
att.ToggleSound = "arccw_uc/common/stockslide.ogg"

att.Mult_MoveDispersion = .85
att.Mult_Sway = 1.5
att.Mult_SightTime = 1.2
att.Mult_RecoilSide = 1.15
att.Mult_HipDispersion = 0.85

att.ToggleStats = {
    {
        PrintName = "Extended",
        ActivateElements = {"stock_future"},
        AutoStats = true,
    },
    {
        PrintName = "Collapsed",
        ActivateElements = {"stock_future_folded"},
        AutoStats = true,
        Mult_ShootSpeedMult = 1.15,
        Add_BarrelLength = -4
    }
}