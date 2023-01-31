att.PrintName = "Polymer Handguard"
att.Icon = Material("entities/att/ur_ak/handguards/poly.png", "mips smooth")
att.Description = "Light polymer handguard with superior agility, but higher recoil from the reduced counterweight."
att.Slot = {"ur_ak_hg"}
att.AutoStats = true

att.SortOrder = 16

att.Mult_Sway = 0.9
att.Mult_SightTime = 0.9
att.Mult_Recoil = 1.1

att.ToggleLockDefault = true
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