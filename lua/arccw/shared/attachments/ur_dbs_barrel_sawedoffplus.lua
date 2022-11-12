att.PrintName = "very sawed off size baral"
att.AbbrevName = "very sawed off size bara "

if !GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "very fake sawed off size bara"
end

att.Icon = Material("entities/att/ur_g3/mag10.png","smooth mips")
att.Description = "shh  add lhik here"
att.Slot = {"ur_db_barrel"}
att.AutoStats = true

att.ModelOffset = Vector(-21, -2.2, 8.3)
att.Model = "models/weapons/arccw/ur_g3_lhik_slim.mdl"
att.LHIK = true

att.ActivateElements = {"barrel_swplus"}

att.SortOrder = 4