att.PrintName = "G3 Collapsible Stock" -- I just copied the mp5 collapsible stock for the stats. --that's ok, i probably would have done the same
att.AbbrevName = "Collapsible Stock"

if !GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "G58 Collapsible Stock"
end

att.Icon = Material("entities/att/ur_g3/stock_colap.png","smooth mips")
att.Description = "Lightweight collapsable stock that significantly shortens the rifle when collapsed. Though sturdy for a collapsing stock, acquiring a proper cheek weld is practically impossible, and its felt recoil reduction is poor.\n\nToggling the stock modifies performance accordingly."
att.AutoStats = true
att.Slot = {"ur_g3_stock"}

att.SortOrder = 10

att.Mult_SightTime = 0.75

att.ToggleLockDefault = true
att.ToggleSound = "arccw_uc/common/stockslide.ogg"
att.ToggleStats = {
    {
        PrintName = "Extended",
        ActivateElements = {"stock_g3_collapsible"},
        AutoStats = true,
        Mult_Recoil = 1.2,
        Override_ActivePos = Vector(0.3, 1.7, 0.8)
    },
    {
        PrintName = "Collapsed",
        ActivateElements = {"stock_g3_collapsed"},
        AutoStats = true,
        Mult_HipDispersion = .8,
        Mult_DrawTime = 0.85,
        Mult_HolsterTime = 0.85,
        Mult_ShootSpeedMult = 1.15,
        Add_BarrelLength = -5,
        Mult_Recoil = 1.5,
        Mult_RecoilSide = 1.25,
        Mult_Sway = 3,
        Override_ActivePos = Vector(0.3, 2.1, 0.95)
    }
}