att.PrintName = "UMP Style B&T Folding Stock"
att.AbbrevName = "B&T Folding Stock"

if !GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "umpa Folding Stock"
end

att.Icon = Material("entities/att/ur_mp5/stock_ump.png", "smooth mips")
att.Description = "Folding stock derived from a later submachine gun pattern by the same manufacturer. Its wide buttpad reduces horizontal recoil at the cost of mobility and aim speed. \n\nToggling the stock modifies performance accordingly."
att.AutoStats = true
att.Slot = "ur_mp5_stock"

att.ToggleLockDefault = true
att.ToggleSound = "arccw_uc/common/stockslide.ogg"

att.Mult_DrawTime = 1.1
att.Mult_HolsterTime = 1.1
att.Mult_SightedSpeedMult = 0.85
att.Mult_ShootSpeedMult = 0.85
att.Mult_RecoilSide = 0.75

att.ToggleStats = {
    {
        PrintName = "Extended",
        ActivateElements = {"stock_ump"},
        AutoStats = true,
        Mult_HipDispersion = .75,
    },
    {
        PrintName = "Folded",
        ActivateElements = {"stock_ump_folded"},
        AutoStats = true,
        Add_BarrelLength = -12,
        Mult_Recoil = 1.75,
        Mult_Sway = 2.5,
    }
}
