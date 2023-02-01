att.PrintName = "G3 Bayonet"
att.AbbrevName = "Muzzle Bayonet"

if !GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "G58 Bayonet"
end

att.Icon = false
att.Description = "Bayonet"
att.Slot = "ur_g3_bayobipod"
att.SortOrder = 999

att.IgnorePickX = true
att.Ignore = true