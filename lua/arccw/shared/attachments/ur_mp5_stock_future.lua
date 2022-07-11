att.PrintName = "MP5K Future Folding Stock"
att.AbbrevName = "Future Stock"

if !GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "PK5-Future Folding Stock"
end

att.Icon = nil -- Material("entities/att/acwatt_lowpolysaiga12extmag.png", "smooth mips")
att.Description = "Highly tacticool plastic-polymer stock with a telescoping buttstock and adjustable cheek riser. Though these features make for much situational adaptability, recoil control suffers as a result of the light construction."
att.AutoStats = true
att.Slot = "ur_mp5_stock"

att.ToggleLockDefault = true
att.ToggleSound = "arccw_uc/common/stockslide.ogg"

att.Mult_MoveDispersion = .85

att.ToggleStats = {
    {
        PrintName = "Extended",
        ActivateElements = {"stock_future"},
        AutoStats = true,
        Mult_Recoil = 1.2,
        Mult_HipDispersion = .85
    },
    {
        PrintName = "Collapsed",
        ActivateElements = {"stock_future_folded"},
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