att.PrintName = "16\" Polymer Barrel"
att.Icon = nil -- todo
att.Description = "Light polymer handguard with superior agility, but higher recoil from the reduced counterweight."
att.Slot = {"ur_ak_barrel"}
att.AutoStats = true

att.SortOrder = 16

att.Mult_Sway = .9
att.Mult_SightTime = .85
att.Mult_Recoil = 1.2

att.ToggleStats = {
    {
        PrintName = "Black",
        ActivateElements = {"barrel_74m"},
    },
    {
        PrintName = "Plum",
        ActivateElements = {"barrel_74m_red"},
    },
    {
        PrintName = "Olive Drab",
        ActivateElements = {"barrel_74m_green"},
    },
}