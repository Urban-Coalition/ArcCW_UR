att.PrintName = "HK51 8\" Compact Barrel"
att.AbbrevName = "8\" Compact Barrel"

if !GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "CN102 8\" Blitz Barrel"
    att.AbbrevName = "8\" Blitz Barrel"
end

att.Icon = Material("entities/att/ur_g3/barrel_51.png","smooth mips")
att.Description = "Ridiculously short aftermarket barrel. Colloquially known as a \"flashbang dispenser,\" the tiny barrel drastically increases fire rate - for better and for worse.\n\nThe reduced dimensions are compatible with some MP5 furniture."
att.Slot = "ur_g3_barrel"
att.Desc_Pros = {
    "ur.g3.8"
}
att.AutoStats = true

att.SortOrder = 8

att.Mult_SightTime = 0.85
att.Add_BarrelLength = -6
att.Mult_SightedSpeedMult = 1.2
att.Mult_HipDispersion = 0.75
att.Mult_Sway = 0.5

att.Mult_Recoil = 1.3
att.Mult_AccuracyMOA = 2
att.Mult_Range = 0.35
att.Mult_RPM = 1.2

att.GivesFlags = {"g3_hk51hg"}