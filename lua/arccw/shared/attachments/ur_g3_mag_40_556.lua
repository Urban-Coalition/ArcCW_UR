att.PrintName = "HK33 40rnd 5.56x45 magazine"
att.AbbrevName = "40-Round 5.56 Mag"
-- att.Icon = Material("entities/att/uc_bullets/556x45.png", "mips smooth")
att.Description = "rarwarwarawr"
att.Slot = {"ur_g3_mag"}
att.AutoStats = true

att.HideIfBlocked = true
att.SortOrder = 10

att.Mult_ClipSize = 1.5

att.RequireFlags = {"cal_556"}

att.Hook_SelectReloadAnimation = function(wep, anim)
    return anim .. "_30rnd"
end