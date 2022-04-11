att.PrintName = "AI Muzzle Brake"
att.Icon = Material("entities/att/ur_aw/muzzle.png", "mips smooth")
att.Description = "Light muzzle brake unique to the AW platform."
att.AutoStats = true
att.Slot = {"ur_aw_muzzle"}

att.Mult_Recoil = .9
att.Mult_RecoilSide = .9

att.Add_BarrelLength = 2
att.Mult_SightTime = 1.05
att.Mult_Sway = 1.05

att.SortOrder = 999

att.AttachSound = "arccw_uc/common/gunsmith/suppressor_thread.ogg"
att.Model = "models/weapons/arccw/ur_aw_muzzle.mdl"
att.ModelScale = Vector(2/3,2/3,2/3)
att.ModelOffset = Vector(0,0,-.075)