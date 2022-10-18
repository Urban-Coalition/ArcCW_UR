att.PrintName = "G3 Custom Furniture"
att.AbbrevName = "Custom"

if !GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "G58 Custom Furniture"
end

att.Description = "Custom color furniture. \n\n(Note: Do not let a gun purist see this.)"
att.Icon = Material("entities/att/ur_g3/skin_cust.png","smooth mips")
att.Slot = "ur_g3_skin"
att.Desc_Neutrals = {
    "uc.cosmetic",
    "uc.custcolor",
}
att.SortOrder = 1

att.IgnorePickX = true