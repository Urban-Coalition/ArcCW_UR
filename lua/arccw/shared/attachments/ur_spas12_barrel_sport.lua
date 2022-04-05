att.PrintName = "22.5\" SPAS-12 Competition Barrel"
att.AbbrevName = "22.5\" Competition Barrel"
att.Icon = Material("entities/att/acwatt_ud_m1014_barrel.png", "smooth mips")
att.Description = "Aftermarket sporting barrel with a heavy muzzle brake. Abiding by competition restrictions, it has a reduced rate of fire."
att.Desc_Pros = {
}
att.Desc_Cons = {
    "uc.nomuzzle"
}
att.Desc_Neutrals = {
}
att.Slot = "ur_spas12_barrel"

att.SortOrder = 22.5

att.AutoStats = true
att.Add_BarrelLength = 1

att.Mult_RecoilSide = 0.85
att.Mult_Recoil = 0.8
att.Mult_SightTime = 1.15
att.Mult_Sway = 1.2

att.Mult_AccuracyMOA = 0.9
att.Mult_RangeMin = 2
att.Mult_RPM = 180 / 220

att.ActivateElements = {"ud_autoshotgun_barrel_sport"}
att.GivesFlags = {"nomuzzle"}