att.PrintName = "Desert Eagle Two-Tone Finish"
att.AbbrevName = "Two-Tone"
if !GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "Predator Two-Tone Finish"
end
att.Icon = Material("entities/att/acwatt_ur_deagle_finish_modern.png","mips smooth")
att.Description = "Double trouble. Yin and yang. Call it whatever you like; it will remain an ornate look for an ornate man.\n\n\"You ever hear the old saying, 'the enemy of my enemy is my friend?'\""
att.Slot = "ur_deagle_skin"
att.Desc_Neutrals = {
    "uc.cosmetic"
}
att.SortOrder = 2

att.IgnorePickX = true
att.ActivateElements = {"ur_deagle_skin_modern", "tac_rail"}