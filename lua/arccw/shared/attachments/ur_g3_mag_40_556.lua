att.PrintName = "HK33 40-Round Extended Mag"
att.AbbrevName = "40-Round Extended Mag"
-- att.Icon = Material("entities/att/uc_bullets/556x45.png", "mips smooth")
att.Description = "Extended magazine for the HK33. Enables slightly longer mag dumps, which may save your life, but the longer mag is more awkward to load."
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

att.Hook_SelectReloadAnimation = function(wep, anim)
    return anim .. "_30rnd"
end