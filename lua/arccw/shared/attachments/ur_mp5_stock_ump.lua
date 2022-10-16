att.PrintName = "UMP Style B&T Folding Stock"
att.AbbrevName = "B&T Folding Stock"

if !GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "umpa Folding Stock"
end

att.Icon = nil -- Material("entities/att/acwatt_lowpolysaiga12extmag.png", "smooth mips")
att.Description = "UMP Style Folding Stock by Brügger & Thomet, wide buttpad greatly reduces horizontal recoil at the cost of mobility and aim speed. \n\nToggling the stock modifies performance accordingly."
att.AutoStats = true
att.Slot = "ur_mp5_stock"

att.ToggleLockDefault = true
att.ToggleSound = "arccw_uc/common/stockslide.ogg"

att.ToggleStats = {
    {
        PrintName = "Extended",
        ActivateElements = {"stock_ump"},
        AutoStats = true,
        Mult_RecoilSide = 0.25,
        Mult_VisualRecoilMult = 0.25,
        Mult_SightedSpeedMult = 0.85,
        Mult_ShootSpeedMult = 0.85,
        Mult_DrawTime = 1.15,
        Mult_HolsterTime = 1.15,
    },
    {
        PrintName = "Folded",
        ActivateElements = {"stock_ump_folded"},
        AutoStats = true,
        Mult_Recoil = 2.15,
        Mult_RecoilSide = 1.25,
        Mult_Sway = 3,
        Mult_SightTime = 0.8,
        Mult_SpeedMult = 1.1,
        Mult_SightedSpeedMult = 1.25,
        Mult_ShootSpeedMult = 1.2,
        Mult_DrawTime = 0.6,
        Mult_HolsterTime = 0.6,
        Add_BarrelLength = -6,
    }
}
