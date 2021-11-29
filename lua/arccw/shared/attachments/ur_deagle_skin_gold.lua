att.PrintName = "Desert Eagle Titanium Gold Finish"
att.AbbrevName = "Titanium Gold"
att.Icon = nil --todo
att.Description = "Look, you're already using a Desert Eagle, so we might as well gut whatever sense of style you have left."
if !GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "Predator Titanium Gold Finish"
    att.Description = "Look, you're already using a Predator, so we might as well gut whatever sense of style you have left."
end
att.Slot = "ur_deagle_skin"
att.Desc_Neutrals = {
    "uc.cosmetic"
}
att.SortOrder = 1

att.IgnorePickX = true
att.ActivateElements = {"ur_deagle_skin_gold"}