att.PrintName = "Automatic Stechkin Pistol"
att.AbbrevName = "Automatic"
att.Icon = Material("entities/att/acwatt_ud_glock_slide.png", "mips smooth")
att.Description = "Fully-automatic conversion of the pistol into a completely seperate pistol design through Urbanmancy™. Though featuring a 20-round double-stack magazine and a stable rate of fire, the pistol suffers from poor accuracy, handling, and recoil."
att.Slot = {"ur_pm_variant"}
att.AutoStats = true

att.SortOrder = 2

att.Override_ClipSize = 20
att.Mult_ReloadTime = 1.15
att.Mult_SightTime = 0.9
att.Mult_SightedSpeedMult = 0.9
att.Mult_Recoil = 1.3
att.Mult_RPM = 1.304
att.Mult_AccuracyMOA = 1.5

att.Override_Firemodes = {
    {
        Mode = 2,
    },
    {
        Mode = 0,
    },
}

att.ActivateElements = {"ur_stechkin"}