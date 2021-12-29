att.PrintName = "23\" SAW Barrel"
att.Icon = nil -- todo
att.Description = "Light machine gun barrel as used on the RPK. In addition to improved precision from the elongated barrel, it features an integrated bipod which can be deployed for even greater accuracy and control.\nVery front-heavy."
att.Slot = {"ur_ak_barrel"}
att.AutoStats = true

att.SortOrder = 23

att.Add_BarrelLength = 5
att.Mult_SightTime = 1.2
att.Mult_SpeedMult = .95
att.Mult_SightedSpeedMult = .7
att.Mult_Sway = 1.5

att.Mult_Recoil = .8
att.Mult_AccuracyMOA = .7
att.Mult_Range = 1.25

att.Bipod = true 
att.Mult_BipodRecoil = .25
att.Mult_BipodDispersion = .2

att.ActivateElements = {"barrel_rpk"}
att.GivesFlags = {"ak_barrelchange"}