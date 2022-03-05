att.PrintName = "Polymer Stock"
att.Icon = Material("entities/att/ur_ak/stock/n.png", "mips smooth")
att.Description = [[Side-folding stock found since the 74 series' debut. The triangular structure reduces its compromise on stability, but it is still less effective than a fixed stock. Folding the stock provides massively boosted maneuverability at the cost of severe recoil.]]
att.AutoStats = true
att.Desc_Neutrals = "Toggling this stock modifies performance accordingly."
att.Slot = {"ur_ak_stock"}

att.SortOrder = 1

att.ToggleLockDefault = true
att.ToggleSound = "arccw_uc/common/stockslide.ogg"
att.ExcludeFlags = {"mag_drum"}
att.ToggleStats = {
    {
        PrintName = "Extended",
        Mult_SightTime = 0.9,
        Mult_HipDispersion = 0.95,
        Mult_Recoil = 1.25,
        Mult_RecoilSide = 1.1,
        Mult_Sway = 1.2,
        Mult_SightedSpeedMult = 1.05,
        
        ActivateElements = {"stock_ak74m"},
        AutoStats = true,
    },
    {
        PrintName = "Folded",
        Mult_SightTime = 0.85,
        Mult_DrawTime = 0.9,
        Mult_HolsterTime = 0.9,
        Mult_Recoil = 1.25,
        Mult_RecoilSide = 1.66,
        Mult_SightedSpeedMult = 1.1,
        Mult_ShootSpeedMult = 1.1,
        Add_BarrelLength = -9,
        Mult_Sway = 2.5,
        ActivateElements = {"stock_ak74m_folded"},
        AutoStats = true,
    }
}