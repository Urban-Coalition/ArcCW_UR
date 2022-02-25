att.PrintName = "pdw foldable stock"
att.AbbrevName = "pdw] Stock"

if !GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "pdsw"
end

att.Icon = nil -- Material("entities/att/acwatt_lowpolysaiga12extmag.png", "smooth mips")
att.Description = "wwwwwwwwwRetractable skeletal stock, signficantly less massive than solid polymer. It can be collapsed to reduce profile even further at the cost of recoil.\n\nToggling the stock modifies performance accordingly."
att.AutoStats = true
att.Slot = "ur_mp5_stock"

att.ToggleLockDefault = true
att.ToggleSound = "arccw_uc/common/stockslide.ogg"

att.Mult_SightTime = 0.75

att.ToggleStats = {
    {
        PrintName = "Extended",
        ActivateElements = {"ur_mp5_stock_pdw"},
        AutoStats = true,
        Mult_Recoil = 1.25,
    },
    {
        PrintName = "FOlded",
        ActivateElements = {"ur_mp5_stock_wood"},
        AutoStats = true,
        Mult_HipDispersion = .8,
        Mult_DrawTime = 0.85,
        Mult_HolsterTime = 0.85,
        Mult_ShootSpeedMult = 1.15,
        Add_BarrelLength = -5,
        Mult_Recoil = 2,
        Mult_RecoilSide = 1.25,
        Mult_Sway = 3,
    }
}