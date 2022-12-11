att.PrintName = "AK-12 16\" Ratnik Barrel"
att.AbbrevName = "16\" Ratnik Barrel"
att.Icon = Material("entities/att/ur_ak/barrel/ak12.png", "smooth mips")
att.Description = "The most recent barrel design for the AK platform. Also equips a new rear sight aperture."
att.Desc_Pros = {}
att.Desc_Cons = {}
att.Desc_Neutrals = {
    "uc.cosmetic",
    "ur.ak.userail"
}
att.Slot = "ur_ak_barrel"

att.SortOrder = 16

att.ActivateElements = {"barrel_ak12", "sight_ak12"}
att.GivesFlags = {"ak_barrelchange"}
--att.Ignore = true

-- Goes into standalone AK pack
att.Ignore = true
att.Icon = Material("entities/att/obsolete.png", "mips smooth")
att.Description = "stop looking at deprecated shit you suka"