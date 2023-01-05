att.PrintName = "Custom Extractor"
att.Icon = nil--Material("entities/att/acwatt_ur_dbs_tp_doom.png", "smooth mips")
att.Description = "Install a heavy aftermarket extractor to speeden reloads."
att.Desc_Pros = {
    "Speeds up reloads"
}
att.Desc_Cons = {
}
att.Desc_Neutrals = {
}
att.Slot = "uc_db_fg"

att.AutoStats = true
att.SortOrder = 999

att.Mult_SightTime = 1.14
att.Mult_MoveSpeed = 0.92

att.Hook_SelectReloadAnimation = function(wep, anim)
    return anim .. "_extractor"
end

att.AttachSound = "arccw_uc/common/gunsmith/internal_modification.ogg"