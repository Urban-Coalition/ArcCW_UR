att.PrintName = "mid size baral"
att.AbbrevName = "mid size bara"

if !GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "fake mid size bara"
end

att.Icon = Material("entities/att/ur_g3/mag10.png","smooth mips")
att.Description = "shh"
att.Slot = {"ur_db_barrel"}
att.AutoStats = true

att.ActivateElements = {"barrel_mid"}

att.SortOrder = 7