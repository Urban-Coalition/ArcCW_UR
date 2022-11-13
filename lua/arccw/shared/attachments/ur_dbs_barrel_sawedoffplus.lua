att.PrintName = "IZh-58 10\" Jury-rigged Barrel"
att.AbbrevName = "10\" Jury-rigged Barrel"

if !GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "Volga SuperShotgun 10\" Jury-rigged Barrel"
end

att.Icon = Material("entities/att/ur_dbs/bswp.png","smooth mips")
att.Description = "So cut down that you need a custom handguard to go with it. Reduces the weapon to a pistol-like profile, ruining accuracy."
att.Slot = {"ur_db_barrel"}
att.AutoStats = true

att.ModelOffset = Vector(-21, -2.2, 8.3)
att.Model = "models/weapons/arccw/ur_g3_lhik_slim.mdl"
att.LHIK = true

att.SortOrder = 10


att.Add_BarrelLength = -20
att.Mult_Sway = .5
att.Mult_SightTime = .75
att.Mult_DrawTime = .75
att.Mult_HolsterTime = .75
att.Mult_SpeedMult = 1.05

att.Mult_Recoil = 1.5
att.Mult_AccuracyMOA = 2.5
att.Mult_Range = .5


att.ActivateElements = {"barrel_swplus"}