att.PrintName = "Closed Irons"

att.Icon = Material("entities/att/acwatt_ur_mp5_barrel_ris.png", "smooth mips")
att.Description = "Closed iron sights with a smaller field of view, potentially increasing user precision.\nIn reality, it's all preference."
att.Desc_Neutrals = {
    "uc.cosmetic"
}
att.AutoStats = true

att.Slot = "ur_mp5_optic"
att.SortOrder = 9999

att.ActivateElements = {"ur_mp5_precision_irons"}
att.ExcludeFlags = {"barrel_sword"}
att.IgnorePickX = true

att.Override_IronSightStruct = {
     Pos = Vector(-3.045, -5.85, 0.778),
     Ang = Angle(-0.3, -0.53, 4.148),
     Ang = Angle(-0.525, -0.53, 4.148),
     Magnification = 1,
     SwitchToSound = "",
     ViewModelFOV = 60,
}