att.PrintName = "MP5A3 Retractable Stock"
att.AbbrevName = "Retractable Stock"

if !GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "K7-3 Retractable Stock"
end

att.Icon = Material("entities/att/ur_mp5/stock_colap.png", "smooth mips")
att.Description = "Retractable skeletal stock, signficantly less massive than solid polymer. It can be collapsed to reduce profile even further at the cost of recoil.\n\nToggling the stock modifies performance accordingly."
att.AutoStats = true
att.Slot = "ur_mp5_stock"

att.ToggleLockDefault = true
att.ToggleSound = "arccw_uc/common/stockslide.ogg"

att.Mult_SightTime = 0.75

att.ToggleStats = {
    {
        PrintName = "Extended",
        ActivateElements = {"stock_a3"},
        AutoStats = true,
        Mult_Recoil = 1.25,
    },
    {
        PrintName = "Collapsed",
        ActivateElements = {"stock_a3_folded"},
        AutoStats = true,
        Mult_HipDispersion = .8,
        Mult_DrawTime = 0.85,
        Mult_HolsterTime = 0.85,
        Mult_ShootSpeedMult = 1.15,
        Add_BarrelLength = -9,
        Mult_Recoil = 2,
        Mult_RecoilSide = 1.25,
        Mult_Sway = 3,
    }
}