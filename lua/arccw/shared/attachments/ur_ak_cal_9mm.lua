att.PrintName = "PP-19 Vityaz 9x19mm Conversion"
att.AbbrevName = "9x19mm Parabellum"
att.Icon = nil -- todo
att.Description = "Converts the weapon to a submachine gun. The smaller caliber drastically reduces recoil, but has much less range and is less accurate."
att.Slot = {"ur_ak_cal"}
att.AutoStats = true

att.SortOrder = 9

att.Override_Ammo = "pistol"
att.Override_Trivia_Calibre = att.AbbrevName
att.Override_Trivia_Class = "Submachine Gun"

att.Mult_Range = .4
att.Mult_RPM = 1.178 -- 800 rpm with the carbine barrels
att.Mult_ReloadTime = .95
att.Mult_Recoil = .85
att.Mult_AccuracyMOA = .85
att.Mult_HipDispersion = .75

att.Mult_Penetration = .25
att.Mult_DamageMin = .6
att.Mult_Damage = .6

att.Override_Ammo = "pistol"
att.Override_Trivia_Calibre = "9x19mm Parabellum"
att.Override_Trivia_Class = "Submachine Gun"
att.Override_ShellModel = "models/weapons/arccw/ud_shells/9.mdl"
--att.Override_ShellMaterial = "models/weapons/arcticcw/shell_9mm"
att.Override_ShellScale = 1.4
att.Override_ShellSounds = ArcCW.PistolShellSoundsTable

att.Hook_SelectReloadAnimation = function(wep, anim)
    return anim .. "_9mm"
end

att.GivesFlags = {"cal_9mm"}
att.ActivateElements = {"mag_9mm"}