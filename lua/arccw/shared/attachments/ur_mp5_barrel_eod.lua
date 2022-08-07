att.PrintName = "13\" EOD Barrel"

att.Icon = Material("entities/att/acwatt_ur_mp5_barrel_sd.png", "smooth mips")
att.Description = "Extended barrel and handguard assembly with an integrated muzzle break.\nDecreases muzzle rise, but performs poorly when hip firing."
att.Desc_Pros = {
}
att.Desc_Cons = {
    "uc.nomuzzle",
    "uc.nohg",
}
att.AutoStats = true

att.Slot = "ur_mp5_barrel"

att.SortOrder = 13

att.Mult_SightTime = 1.1
att.Mult_Sway = 1.15
att.Mult_Range = 1.25
att.Mult_Recoil = 0.8
att.Mult_AccuracyMOA = 0.75
att.Mult_HipDispersion = 1.2
att.Add_BarrelLength = 4

att.ActivateElements = {"ur_mp5_barrel_eod"}
att.GivesFlags = {"barrel_eod"}