att.PrintName = "Modernized Handguard"
att.Icon = Material("entities/att/ur_ak/barrel/stock_barrel.png", "mips smooth") -- todo
att.Description = "Enhanced wood handguard with protrusions for increased grip surface."
att.Slot = {"ur_ak_hg"}
att.AutoStats = true

--att.Desc_Neutrals = {"uc.cosmetic"} nvm
att.SortOrder = 16

att.Mult_Sway = .9
att.Mult_RecoilSide = 1.05
att.Mult_SightedSpeedMult = .975

att.ActivateElements = {"barrel_akm"}

--att.Ignore = true