att.PrintName = "Truniun Sight Mount"
att.Icon = nil -- todo
att.Description = "Picatinny rail mounted on truniun sights"
att.Slot = {"ur_ak_cover"}

att.Desc_Neutrals = {"uc.cosmetic"}
att.Desc_Cons = {"Obstructs ironsights, install any scope"
-- , "Only small scopes can be installed"    ?
}

att.ActivateElements = {"cover_trail"}
att.GivesFlags = {"cover_rail"}
att.ExcludeFlags = {"ak_barrelkrinkov","ak_norail"}

att.Ignore = true