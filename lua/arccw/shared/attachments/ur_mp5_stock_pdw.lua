att.PrintName = "MP5K PDW Folding Stock"
att.AbbrevName = "PDW Stock"

if !GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "PK5-PDW Folding Stock"
end

att.Icon = Material("entities/att/ur_mp5/stock_pdw.png", "smooth mips")
att.Description = "Light polymer \"personal defense weapon\" stock. Ideal for point shooting due to its conventional shape. It can be folded to reduce profile even further at the cost of recoil.\n\nToggling the stock modifies performance accordingly."
att.AutoStats = true
att.Slot = "ur_mp5_stock"

att.ToggleLockDefault = true
att.ToggleSound = "arccw_uc/common/stockslide.ogg"

att.Mult_MoveDispersion = .85

att.ToggleStats = {
    {
        PrintName = "Extended",
        ActivateElements = {"stock_pdw"},
        AutoStats = true,
        Mult_Recoil = 1.2,
        Mult_HipDispersion = .85
    },
    {
        PrintName = "Folded",
        ActivateElements = {"stock_pdw_folded"},
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