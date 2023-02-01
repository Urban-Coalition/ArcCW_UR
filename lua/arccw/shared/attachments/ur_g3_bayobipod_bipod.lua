att.PrintName = "G3 Bipod"
att.AbbrevName = "Integrated Bipod"

if !GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "G58 Bipod"
end

att.Icon = false
att.Description = "Bipod"
att.Slot = "ur_g3_bayobipod"
att.SortOrder = 998

att.IgnorePickX = true
att.Ignore = true