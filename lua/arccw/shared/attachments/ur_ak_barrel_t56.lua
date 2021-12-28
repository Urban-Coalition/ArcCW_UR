att.PrintName = "16\" Type 56 Barrel"
att.Icon = nil -- todo
att.Description = "Chinese derivative barrel with a fully hooded front sight and a folding spike bayonet. When unfolded, the bayonet increases melee damage substantially, but adds forward weight."
att.Slot = {"ur_ak_barrel"}
att.Desc_Cons = {"[Extended] Disables Muzzle attachments"}
att.AutoStats = true

att.SortOrder = 16

att.Mult_SightedSpeedMult = .95

att.ToggleStats = {
    {
        PrintName = "Extended",
        Desc_Cons = {"uc.nomuzzle"},
        ActivateElements = {"barrel_t56_ext"},
        AutoStats = true,
        Mult_MeleeDamage = 2.5,
        Add_BarrelLength = 3,
        Mult_Sway = 1.2,
        Override_BashPreparePos = Vector(4, -5, -1.8),
        Override_BashPrepareAng = Angle(-15, -5, -5),
        Override_BashPos = Vector(-1, 12, 4.5), -- i'm too impatient to not make this bat you in the face with the stock
        Override_BashAng = Angle(-7, 3, 25),
    },
    {
        PrintName = "Folded",
        AutoStats = true,
        Mult_Sway = 1.1,
        ActivateElements = {"barrel_t56"},
    },
}

att.GivesFlags = {"ak_bayonet1"}
att.ExcludeFlags = {"ak_bayonet2"}