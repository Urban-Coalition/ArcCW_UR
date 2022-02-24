att.PrintName = "MP5A3 Retractable Stock"
att.AbbrevName = "Retractable Stock"

if !GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "K7-3 Retractable Stock"
end

att.Icon = nil -- Material("entities/att/acwatt_lowpolysaiga12extmag.png", "smooth mips")
att.Description = "Retractable skeletal stock, signficantly less massive than solid polymer. Can be collapsed to reduce profile even further at the cost of recoil.\n\nToggling the stock modifies performance accordingly."

att.Slot = "ur_mp5_stock"

att.ToggleLockDefault = true
att.ToggleSound = "arccw_uc/common/stockslide.ogg"

att.ToggleStats = {
    {
        PrintName = "Extended",
        ActivateElements = {"ur_mp5_stock_a3"},
        AutoStats = true,
    },
    {
        PrintName = "Collapsed",
        ActivateElements = {"ur_mp5_stock_a3_folded"},
        AutoStats = true,
    }
}