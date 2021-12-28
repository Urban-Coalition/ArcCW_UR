att.PrintName = "AK-74 5.45x39mm Conversion"
att.AbbrevName = "5.45x39mm"
att.Icon = nil -- todo
att.Description = "Lighter, more accurate cartridge that maintains wounding potential up close, but lacks penetration."
att.Slot = {"ur_ak_cal"}
att.AutoStats = true

att.SortOrder = 10

att.Override_Ammo = "smg1"
att.Override_Trivia_Calibre = att.AbbrevName

att.Mult_Range = 1.2
att.Mult_RPM = 1.083 -- 650 rpm
att.Mult_SightedSpeedMult = 1.05
att.Mult_ReloadTime = .95
att.Mult_Recoil = .85
att.Mult_AccuracyMOA = .85
att.Mult_HipDispersion = .75

att.Mult_Penetration = .65
att.Mult_DamageMin = .8
att.Mult_Damage = .8

att.GivesFlags = {"cal_545"}
att.ActivateElements = {"mag_545_30"}