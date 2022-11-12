att.PrintName = "sawed off stock"
att.AbbrevName = "sawed off stock"

if !GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "fake sawed off stock"
end

att.Icon = Material("entities/att/ur_g3/mag10.png","smooth mips")
att.Description = "shh"
att.Slot = {"ur_db_stock"}
att.AutoStats = true


att.ActivateElements = {"stock_sw"}

att.SortOrder = 5