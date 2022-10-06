att.PrintName = "write here something about modern"
att.AbbrevName = "write here something about warfare"
if !GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "write here something about two"
end
att.Icon = Material("entities/att/acwatt_ur_deagle_finish_chrome.png","mips smooth")
att.Description = "write here something about mdern fare two"
att.Slot = "ur_deagle_skin"
att.Desc_Neutrals = {
    "uc.cosmetic"
}
att.SortOrder = 2

att.IgnorePickX = true
att.ActivateElements = {"ur_deagle_skin_modern", "tac_rail"}