att.PrintName = "AK Underfolding Stock"
att.AbbrevName = "Underfolding Stock"
if !GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "KF Underfolding Stock"
end
att.Icon = Material("entities/att/ur_ak/stock/under.png", "mips smooth")
att.Description = [[Folding stock of the AKS-47. While not as stable as a full wood stock, it is much lighter. Folding the stock provides massively boosted maneuverability at the cost of severe recoil.

Toggling this stock modifies performance accordingly.]]
att.AutoStats = true
att.Slot = {"ur_ak_stock"}

att.SortOrder = 1

att.ToggleLockDefault = true
att.ToggleSound = "arccw_uc/common/stockslide.ogg"

att.ToggleStats = {
    {
        PrintName = "Extended",
        Mult_SightTime = .8,
        Mult_RecoilSide = 1.35,
        Mult_Sway = 1.25,
        Mult_SightedSpeedMult = 1.1,
        Mult_SpeedMult = 1.025,
        ActivateElements = {"stock_underfolder"},
        AutoStats = true,
    },
    {
        PrintName = "Folded",
        Mult_SightTime = 0.6,
        Mult_DrawTime = 0.85,
        Mult_HolsterTime = 0.85,
        Mult_Recoil = 1.5,
        Mult_RecoilSide = 2,
        Mult_SightedSpeedMult = 1.2,
        Mult_ShootSpeedMult = 1.15,
        Add_BarrelLength = -9,
        Mult_Sway = 3,
        ActivateElements = {"stock_underfolder_folded"},
        AutoStats = true,
    }
}