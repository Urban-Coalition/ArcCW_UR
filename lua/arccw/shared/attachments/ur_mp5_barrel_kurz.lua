att.PrintName = "4.5\" Kurz Barrel"

att.Icon = Material("entities/att/acwatt_ur_mp5_barrel_kurz.png", "smooth mips")
att.Description = "Machine pistol variant with a maximally compact barrel, a lightened bolt assembly for increased cyclic rate, and an integrated foregrip that reduces its impact on recoil control.\nMid-range accuracy is poor, and the lack of an outer barrel makes it unable to accept muzzle attachments."
att.Desc_Cons = {
    "uc.nomuzzle",
    "uc.noubs"
}
att.AutoStats = true

att.Slot = "ur_mp5_barrel"


att.SortOrder = 4.5

att.Add_BarrelLength = -4
att.Mult_Sway = .5
att.Mult_SightTime = .75
att.Mult_RPM = 1.125

att.Mult_Recoil = 1.15
att.Mult_AccuracyMOA = 3
att.Mult_Range = .5

att.GivesFlags = {"mp5_kurz"}
att.Override_Trivia_Class = "Machine Pistol"