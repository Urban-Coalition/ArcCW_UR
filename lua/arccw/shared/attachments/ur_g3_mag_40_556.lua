att.PrintName = "HK33 40-Round Extended Mag"
att.AbbrevName = "40-Round Extended Mag"

if !GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "CN66 40-Round Extended Mag"
end

att.Icon = Material("entities/att/ur_g3/mag556_40.png","smooth mips")
att.Description = "Extended magazine for the 5.56 variant of the rifle. Though very reliable, its oblong design makes it awkward to load."
att.Slot = {"ur_g3_mag"}
att.AutoStats = true

att.HideIfBlocked = true
att.SortOrder = 10

att.Override_ClipSize = 40
att.Override_ClipSize_Priority = 2

att.Mult_SightTime = 1.1
att.Mult_ReloadTime = 1.15
att.Mult_Sway = 1.5

att.Mult_SpeedMult = 0.975
att.Mult_ShootSpeedMult = 0.95

att.RequireFlags = {"cal_556"}

-- att.Hook_SelectReloadAnimation = function(wep, anim)
--     return anim .. "_30rnd"
-- end