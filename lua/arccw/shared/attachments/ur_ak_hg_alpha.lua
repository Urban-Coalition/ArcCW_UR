att.PrintName = "AK Zenitco Aluminum Handguard"
att.AbbrevName = "Aluminum Handguard"
if !GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "KF Aluminum Handguard"
end
att.Icon = Material("entities/att/ur_ak/handguards/alpha.png", "mips smooth")
att.Description = "Fancy Russian-made handguard featuring a rail interface for additional modularity. Especially lightweight, though less comfortable to grip."
att.Slot = {"ur_ak_hg"}
att.AutoStats = true

--att.Desc_Neutrals = {"uc.cosmetic"} nvm
att.SortOrder = 15.9

att.Mult_Sway = 1.15
att.Mult_SightedSpeedMult = 1.15
-- att.Mult_SpeedMult = 1.05
att.Mult_Recoil = 1.08

att.GivesFlags = {"ak_railedguard","nodong"}
att.ActivateElements = {"barrel_alpha"}

att.LHIK = true

att.ModelOffset = Vector(-22, -3.4, 3.3)
att.OffsetAng = Angle(5, 0, 0)
att.Model = "models/weapons/arccw/ak_lhik_u.mdl"