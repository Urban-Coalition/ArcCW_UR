att.PrintName = "AW 20\" Shortened Barrel"
att.AbbrevName = "20\" Shortened Barrel"

if !GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "AP 20\" Shortened Barrel"
end

--att.Icon = Material("entities/att/acwatt_ud_mini14_barrel_long.png", "smooth mips")
att.SortOrder = 20
att.Description = "Custom-tooled \"close-quarters\" barrel that compromises long-range performance, but reduces forward weight significantly."
att.Desc_Pros = {
}
att.Desc_Cons = {
}
att.Desc_Neutrals = {
}
att.Slot = "ur_aw_barrel"

att.Mult_SightTime = .75
att.Mult_Sway = .5
att.Mult_HipDispersion = .5
att.Add_BarrelLength = -4

att.Mult_Range = .5
att.Mult_AccuracyMOA = 3
att.Mult_Recoil = 1.25

att.AutoStats = true
att.ActivateElements = {"barrel_short"}