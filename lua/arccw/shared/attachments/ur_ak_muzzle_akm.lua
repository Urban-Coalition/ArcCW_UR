att.PrintName = "AKM Muzzle Brake"
att.Icon = Material("entities/att/ur_ak/muzzle_m.png", "mips smooth")
att.Description = "External muzzle brake unique to the AKM and some derivatives. The slant-cut design counters muzzle rise without adding as much weight as a universal compensator."
att.AutoStats = true
att.Slot = {"ur_ak_muzzle"}

att.Mult_Recoil = .9
att.Mult_RecoilSide = .95

att.Add_BarrelLength = 1
att.Mult_SightTime = 1.025
att.Mult_Sway = 1.05
att.Mult_ShootVol = 1.1

att.SortOrder = 999

att.AttachSound = "arccw_uc/common/gunsmith/suppressor_thread.ogg"
att.ActivateElements = {"muzzle_akm"}
att.ExcludeFlags = {"ak_barrelchange"}