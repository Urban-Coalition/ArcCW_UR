att.PrintName = "Desert Eagle Polished Chrome Finish"
att.AbbrevName = "Polished Chrome"
if !GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "Predator Polished Chrome Finish"
end
att.Icon = Material("entities/att/acwatt_ur_deagle_finish_chrome.png","mips smooth")
att.Description = "A luster that demands attention.\n\n\"I had to kill Bob Morton because he made a mistake. Now it's time to erase that mistake.\""
att.Slot = "ur_deagle_skin"
att.Desc_Neutrals = {
    "uc.cosmetic"
}
att.SortOrder = 2

att.IgnorePickX = true
att.ActivateElements = {"ur_deagle_skin_chrome"}