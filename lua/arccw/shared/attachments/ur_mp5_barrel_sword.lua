att.PrintName = "9\" Swordfish Upper"

att.Icon = Material("entities/att/acwatt_ur_mp5_barrel_long.png", "smooth mips")
att.Description = "Aftermarket upper receiver that aggressively counters recoil using an integrated compensator. The added weight makes the weapon harder to aim with."
att.Desc_Cons = {
    "uc.nomuzzle"
}
att.AutoStats = true

att.Slot = "ur_mp5_barrel"

att.SortOrder = 9

att.Mult_Recoil = 0.7

att.Mult_SightedSpeedMult = 0.8
att.Mult_SightTime = 1.1
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
