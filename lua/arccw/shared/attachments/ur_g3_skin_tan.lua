att.PrintName = "G3 Flat Dark Earth Furniture"
att.AbbrevName = "FDE"

if !GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "G58 Flat Dark Earth Furniture"
end

att.Description = "FDE furniture for the two-tone tacticool feel... or desert operations."
att.Icon = Material("entities/att/ur_g3/skin_fde.png","smooth mips")
att.Slot = "ur_g3_skin"
att.Desc_Neutrals = {
    "uc.cosmetic",
}
att.SortOrder = 1

att.IgnorePickX = true