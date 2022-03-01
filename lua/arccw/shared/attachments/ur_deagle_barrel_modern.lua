att.PrintName = "6\" Desert Eagle Mark XIX Barrel"
att.AbbrevName = "6\" Modern Barrel"
if !GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "6\" Predator Modern Barrel"
end
att.Icon = Material("entities/att/acwatt_ur_deagle_barrel_modern.png","smooth mips")
att.Description = "Variation of the factory barrel with a built-in Weaver attachment mount."
att.Slot = "ur_deagle_barrel"
att.Desc_Neutrals = {"uc.cosmetic"}
att.SortOrder = 5.5

--att.ActivateElements = {"ur_deagle_barrel_modern", "tac_rail"}