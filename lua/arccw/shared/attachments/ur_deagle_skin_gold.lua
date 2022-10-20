att.PrintName = "Desert Eagle Titanium Gold Finish"
att.AbbrevName = "Titanium Gold"
att.Icon = Material("entities/att/acwatt_ur_deagle_finish_gold.png","mips smooth")
att.Description = "Look, you're already using a Desert Eagle, so we might as well gut whatever sense of modesty you have left."
if !GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "Predator Titanium Gold Finish"
    att.Description = "Look, you're already using a Predator, so we might as well gut whatever sense of modesty you have left."
end
att.Description = att.Description .. "\n\n\"The time has come to show our true strength. They underestimate our resolve. Let us show that we do not fear them. As one people, we shall free our brethren from the yoke of foreign oppression!\""
att.Slot = "ur_deagle_skin"
att.Desc_Neutrals = {
    "uc.cosmetic"
}
att.SortOrder = 1

att.IgnorePickX = true
att.ActivateElements = {"ur_deagle_skin_gold"}