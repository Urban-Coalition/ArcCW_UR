att.PrintName = "11\" EOD Barrel"

att.Icon = Material("entities/att/acwatt_ur_mp5_barrel_sd.png", "smooth mips")
att.Description = "Extended barrel and handguard assembly with integrated muzzle break to assist in mounting underbarrel weapons. Comfortable to shoot, but performs poorly when hip firing. The mount also incorporates a large muzzle brake which protects underbarrel weapons from the muzzle flash of the MP5.\nDecreases muzzle rise, but performs poorly when hip firing."
att.Desc_Pros = {
}
att.Desc_Cons = {
    "uc.nomuzzle",
    "uc.nohg",
}
att.AutoStats = true

att.Slot = "ur_mp5_barrel"

att.SortOrder = 11

att.Mult_SightTime = 1.1
att.Mult_Sway = 1.15
att.Mult_Range = 1.25
att.Mult_Recoil = 0.8
att.Mult_AccuracyMOA = 0.75
att.Mult_HipDispersion = 1.2
att.Add_BarrelLength = 4

att.ActivateElements = {"ur_mp5_barrel_eod"}
att.GivesFlags = {"barrel_eod"}

att.Hook_AddShootSound = function(wep)
    wep:EmitSound("weapons/arccw_ur/mp5/eod" .. math.random(1, 5) .. ".ogg", 70, math.Rand(98, 102), 1, CHAN_STATIC)
    wep:EmitSound("weapons/arccw_ur/mp5/eo2" .. math.random(1, 6) .. ".ogg", 70, 100, 0.5, CHAN_STATIC)
end