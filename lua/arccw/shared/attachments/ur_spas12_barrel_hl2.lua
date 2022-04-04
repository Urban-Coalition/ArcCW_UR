att.PrintName = "21.5\" Freeman Barrel"
att.Icon = nil
att.Description = [[Unorthodox fire control group and barrel accomodation that supports a two-round burst firemode. Replaces the original dual-mode mechanism, relegating the weapon to pump action in both modes.

The two-round burst can shred most targets, but depletes ammo quickly.]]
att.Desc_Pros = {
    "ur.ak.burst"
}
att.Desc_Cons = {
    "ur.spas12.pump"
}

att.SortOrder = 21.5
att.Slot = "ur_spas12_barrel"
att.AutoStats = true

att.Override_Firemodes = {
    {
        Mode = 1,
        PrintName = "fcg.pump",
        Override_ManualAction = true,
        Mult_AccuracyMOA = .9,
        Mult_HipDispersion = .8,
        Mult_RPM = 1,
    },
    {
        Mode = 1, -- Mode = -2,
        PrintName = "ur.spas12.dbl",
        Override_ManualAction = true,
        Mult_AccuracyMOA = .9,
        Mult_HipDispersion = .8,
        Mult_RPM = 1,

        Override_Num = 18,
        Override_AmmoPerShot = 2,
    },
}

att.Mult_CycleTime = 1.25