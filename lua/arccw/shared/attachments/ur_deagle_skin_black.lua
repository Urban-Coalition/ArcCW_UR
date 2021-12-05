att.PrintName = "Desert Eagle Matte Black Finish"
att.AbbrevName = "Matte Black"
if !GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "Predator Matte Black Finish"
end
att.Icon = Material("entities/att/acwatt_ur_deagle_finish_black.png","mips smooth")
att.Description = "The finish of choice for assassins and agents everywhere.\n\n\"We're willing to wipe the slate clean, give you a fresh start. All that we're asking in return is your cooperation in bringing a known terrorist to justice.\""
att.Slot = "ur_deagle_skin"
att.Desc_Neutrals = {
    "uc.cosmetic"
}
att.SortOrder = 2

att.IgnorePickX = true
att.ActivateElements = {"ur_deagle_skin_black"}