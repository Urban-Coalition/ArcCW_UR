att.PrintName = "compact size baral"
att.AbbrevName = "compact size bara"

if !GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "fake compact size bara"
end

att.Icon = Material("entities/att/ur_g3/mag10.png","smooth mips")
att.Description = "shh"
att.Slot = {"ur_db_barrel"}
att.AutoStats = true

att.ActivateElements = {"barrel_compact"}

att.SortOrder = 6