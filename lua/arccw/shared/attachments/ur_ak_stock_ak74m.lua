att.PrintName = "AK Polymer Stock"
att.AbbrevName = "Polymer Stock"
if !GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "KF Polymer Stock"
end
att.Icon = Material("entities/att/ur_ak/stock/n.png", "mips smooth")
att.Description = [[Full side-folding stock. While extended, it functions similarly to a standard wood stock, albeit with less stability.
Folding the stock boosts mobility and recoil, though not as significantly as skeletal folding stocks.

Toggling this stock modifies performance accordingly.]]
att.AutoStats = true
att.Slot = {"ur_ak_stock"}

att.SortOrder = 1

att.ToggleLockDefault = true
att.ToggleSound = "arccw_uc/common/stockslide.ogg"
att.ExcludeFlags = {"mag_drum"}
att.ToggleStats = {
    {
        PrintName = "Extended",
        Mult_SightTime = 0.95,
        Mult_Sway = 1.2,
        
        ActivateElements = {"stock_ak74m"},
        AutoStats = true,
    },
    {
        PrintName = "Folded",
        Mult_SightTime = 0.85,
        Mult_DrawTime = 0.9,
        Mult_HolsterTime = 0.9,
        Mult_Recoil = 1.25,
        Mult_RecoilSide = 1.75,
        Mult_SightedSpeedMult = 1.05,
        Mult_ShootSpeedMult = 1.05,
        Add_BarrelLength = -9,
        Mult_Sway = 2.5,
        ActivateElements = {"stock_ak74m_folded"},
        AutoStats = true,
    }
}