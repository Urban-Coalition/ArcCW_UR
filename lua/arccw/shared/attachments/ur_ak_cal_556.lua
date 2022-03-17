att.PrintName = "5.56x45mm NATO Receiver"
att.AbbrevName = "5.56x45mm Receiver"
att.Icon = Material("entities/att/ur_ak/recievers/545.png", "mips smooth")
att.Description = "Designed for the world export market, this receiever uses the NATO standard 5.56×45mm cartridge. The smaller round yields a higher muzzle velocity and accuracy at range with similiar wounding potential to 5.45x39mm."
att.Slot = {"ur_ak_cal"}
att.AutoStats = true

att.SortOrder = 10

att.Override_Ammo = "smg1"
att.Override_Trivia_Calibre = "5.56x45mm"

att.Mult_Range = 1.5
att.Mult_SightedSpeedMult = 1.05
att.Mult_ReloadTime = .95
att.Mult_Recoil = .85
att.Mult_AccuracyMOA = .85
att.Mult_HipDispersion = .75

att.Mult_Penetration = .5
att.Mult_DamageMin = .8
att.Mult_Damage = .8

att.Override_Trivia_Country = "Russia"

att.ShootPitchVariation = 1
att.Override_ShellModel = "models/weapons/arccw/uc_shells/556x45.mdl"
att.Override_ShellScale = 1
att.GivesFlags = {"cal_556"}