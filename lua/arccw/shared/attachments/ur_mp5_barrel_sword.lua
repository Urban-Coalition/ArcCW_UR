att.PrintName = "12\" Swordfish Upper"

att.Icon = Material("entities/att/acwatt_ur_mp5_barrel_long.png", "smooth mips")
att.Description = "Experimental upper receiver that provides superior recoil control through precise placement of weights at the end of the SMG. Naturally, handling drastically suffers as a result, and the specially designed barrel shroud prevents usage of muzzle attachments."
att.Desc_Cons = {
    "uc.nomuzzle"
}
att.AutoStats = true

att.Slot = "ur_mp5_barrel"

att.SortOrder = 13

att.Mult_Recoil = 0.7

att.Mult_SightTime = 1.25
att.Mult_Sway = 1.5
att.Add_BarrelLength = 3

att.Mult_PhysBulletMuzzleVelocity = 1.15

att.Override_IronSightStruct = { 
     Pos = Vector(-3.17, -4, -0.22),
     Ang = Angle(0, 0, 0),
     Magnification = 1,
     SwitchToSound = "",
     ViewModelFOV = 74,
} 

att.ActivateElements = {"ur_mp5_barrel_swordfish"}
att.GivesFlags = {"barrel_sword"}
