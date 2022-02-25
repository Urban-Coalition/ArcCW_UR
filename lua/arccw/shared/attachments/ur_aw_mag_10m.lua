att.PrintName = "AWM 8-Round Extended Mag"
att.AbbrevName = "8-Round Extended Mag"

if !GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "AP 8-Round Extended Mag"
end

att.SortOrder = 10
att.Icon = Material("entities/att/acwatt_ud_m16_mag_40.png", "smooth mips")
att.Description = "Extended magazine for the Arctic Warfare. The extra rounds add weight to the magazine, but allow for twice as many shots to be taken between reloads."
att.Desc_Pros = {}
att.Desc_Cons = {}
att.Desc_Neutrals = {}
att.Slot = "ur_aw_mag"

att.AutoStats = true
att.HideIfBlocked = false

att.Override_ClipSize = 10

att.Mult_SightTime = 1.25
att.Mult_ReloadTime = 1.2
att.Mult_Sway = 1.25

att.Mult_SpeedMult = 0.975
att.Mult_ShootSpeedMult = 0.95

att.ActivateElements = {"mag_ext_338"}

att.Hook_SelectReloadAnimation = function(wep, anim)
    return anim .. "_10_338"
end

att.ExcludeFlags = {"mag_308"}