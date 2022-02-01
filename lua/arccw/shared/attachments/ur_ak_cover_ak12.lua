att.PrintName = "AK-12 Dust Cover"
att.Icon = Material("entities/att/ur_ak/dustcover_ak12.png", "mips smooth")
att.Description = "Russian military issue dust cover with an upper picattiny rail."
att.Slot = {"ur_ak_cover"}
att.AutoStats = true

att.Desc_Neutrals = {
    "uc.cosmetic",
    "ur.ak.alpha"
}

att.ActivateElements = {"cover_ak12"}
att.GivesFlags = {"cover_rail"}
att.ExcludeFlags = {"ak_barrelkrinkov","ak_norail"}