att.PrintName = "Trunnion Sight Mount"
att.Icon = Material("entities/att/ur_ak/dustcover_mount.png", "mips smooth")
att.Description = "Picatinny rail mounted on trunnion sights"
att.Slot = {"ur_ak_cover"}

att.Desc_Neutrals = {"uc.cosmetic"}
att.Desc_Cons = {"Obstructs ironsights, install any scope"
-- , "Only small scopes can be installed"    ?
}

att.ActivateElements = {"cover_trail"}
att.GivesFlags = {"cover_rail"}
att.ExcludeFlags = {"ak_barrelkrinkov","ak_norail"}

-- att.Ignore = true