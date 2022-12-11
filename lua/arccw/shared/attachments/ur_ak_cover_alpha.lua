att.PrintName = "Alpha AK Dust Cover"
att.AbbrevName = "Alpha Dust Cover"
att.Icon = Material("entities/att/ur_ak/dustcover_alpha.png", "mips smooth")
att.Description = "Alternative US-made dust cover with an upper picattiny rail."
att.Slot = {"ur_ak_cover"}
att.AutoStats = true

att.Desc_Neutrals = {
    "uc.cosmetic",
    "ur.ak.alpha"
}

att.ActivateElements = {"cover_alpha"}
att.GivesFlags = {"cover_rail"}
att.ExcludeFlags = {"ak_barrelkrinkov", "ak_norail"}