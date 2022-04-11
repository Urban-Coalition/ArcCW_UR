att.PrintName = "AW 27\" Magnum Barrel"
att.AbbrevName = "27\" Magnum Barrel"
att.Icon = Material("entities/att/ur_aw/bar_long.png", "mips smooth")

if !GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "AP 27\" Magnum Barrel"
end

--att.Icon = Material("entities/att/acwatt_ud_mini14_barrel_long.png", "smooth mips")
att.SortOrder = 27
att.Description = "Lengthened fluted-steel barrel used with high-caliber setups for enhanced muzzle velocity and recoil reduction."
att.Desc_Pros = {
}
att.Desc_Cons = {
}
att.Desc_Neutrals = {
}
att.Slot = "ur_aw_barrel"

att.Mult_Range = 1.1
att.Mult_Recoil = .8

att.Mult_SightTime = 1.15
att.Mult_Sway = 1.25

att.Add_BarrelLength = 3

att.AutoStats = true
att.ActivateElements = {"barrel_long"}