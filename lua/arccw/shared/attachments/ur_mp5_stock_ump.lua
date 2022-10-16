att.PrintName = "umpa"
att.AbbrevName = "umpa Stock"

if !GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "umpa Folding Stock"
end

att.Icon = nil -- Material("entities/att/acwatt_lowpolysaiga12extmag.png", "smooth mips")
att.Description = "umpa      Light polymer \"personal defense weapon\" stock. Ideal for point shooting due to its conventional shape. It can be folded to reduce profile even further at the cost of recoil.\n\nToggling the stock modifies performance accordingly."
att.AutoStats = true
att.Slot = "ur_mp5_stock"

att.ToggleLockDefault = true
att.ToggleSound = "arccw_uc/common/stockslide.ogg"

att.Mult_MoveDispersion = .85

att.ToggleStats = {
    {
        PrintName = "Extended",
        ActivateElements = {"stock_ump"},
        AutoStats = true,
        Mult_Recoil = 1.2,
        Mult_HipDispersion = .85
    },
    {
        PrintName = "Folded",
        ActivateElements = {"stock_ump_folded"},
        AutoStats = true,
        Mult_HipDispersion = .75,
        Mult_DrawTime = 0.85,
        Mult_HolsterTime = 0.85,
        Mult_ShootSpeedMult = 1.15,
        Add_BarrelLength = -5,
        Mult_Recoil = 2,
        Mult_RecoilSide = 1.25,
        Mult_Sway = 3,
    }
}