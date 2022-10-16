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

att.ToggleStats = {
    {
        PrintName = "Extended",
        ActivateElements = {"stock_ump"},
        AutoStats = true,
        Mult_RecoilSide = 0.75,
        Mult_SightedSpeedMult = 0.85,
        Mult_ShootSpeedMult = 0.85,
        Mult_DrawTime = 1.15,
        Mult_HolsterTime = 1.15,
    },
    {
        PrintName = "Folded",
        ActivateElements = {"stock_ump_folded"},
        AutoStats = true,
        Mult_HipDispersion = .75,
        Mult_DrawTime = 0.85,
        Mult_HolsterTime = 0.85,
        Mult_ShootSpeedMult = 1.15,
        Add_BarrelLength = -9,
        Mult_Recoil = 2,
        Mult_RecoilSide = 1.25,
        Mult_Sway = 3,
    }
}
