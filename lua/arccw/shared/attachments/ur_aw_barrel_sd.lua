att.PrintName = "AWS 28\" Suppressed Barrel"
att.AbbrevName = "28\" SD Barrel"
att.Icon = Material("entities/att/ur_aw/bar_sup.png", "mips smooth")

if !GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "APS 28\" SD Barrel"
end

--att.Icon = Material("entities/att/acwatt_ud_mini14_barrel_long.png", "smooth mips")
att.SortOrder = 28
att.Description = "Integrally suppressed barrel for the Arctic Warfare, designed for use with subsonic ammunition. Very effective for noise reduction, but reduces effective range.\nIncompatible with magnum ammunition."
att.Desc_Pros = {
}
att.Desc_Cons = {
    "uc.nomuzzle"
}
att.Desc_Neutrals = {
}
att.Slot = "ur_aw_barrel"

att.Silencer = true
att.Override_MuzzleEffect = "muzzleflash_suppressed"
att.Mult_ShootPitch = 1.1
att.Mult_ShootVol = 0.6

att.Mult_Range = .85
att.Add_BarrelLength = 3
att.Mult_SightedSpeedMult = 0.85

att.AutoStats = true
att.ExcludeFlags = {"mag_338","mag_300"}
att.ActivateElements = {"barrel_sd"}
att.GivesFlags = {"barrel_sd"}
