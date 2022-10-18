att.PrintName = "G3 CETME Wooden Furniture"
att.AbbrevName = "Wood"

if !GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "G58 Wooden Furniture"
end

att.Icon = Material("entities/att/ur_g3/skin_wood.png","smooth mips")
att.Description = "Old-fashioned wooden furniture that makes you feel like the apocalypse is near."
att.Slot = "ur_g3_skin"
att.Desc_Neutrals = {
    "uc.cosmetic",
}
att.SortOrder = 1

att.IgnorePickX = true