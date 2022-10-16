att.PrintName = "Martello 12/70 6 Shell Tube"
att.AbbrevName = "6 Shell Tube"

if GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "SPAS-12 6 Shell Tube"
end

att.Icon = Material("entities/att/acwatt_ud_870_tube_reduced.png", "smooth mips")
att.Description = "Shortened shell tube that holds fewer rounds, but reduces weapon weight."
att.Icon = Material("entities/att/ur_spas/magsmall.png", "smooth mips")
att.Slot = "ur_spas12_tube"

att.AutoStats = true

att.Override_ClipSize = 6
att.Mult_Sway = 0.75
att.Mult_SightedSpeedMult = 1.1
att.Mult_SightTime = 0.85
att.Mult_ReloadTime = 0.9

att.ActivateElements = {"ud_870_tube_reduced"}