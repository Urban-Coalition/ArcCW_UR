att.PrintName = "AK-12 Stock"
att.Icon = Material("entities/att/ur_ak/stock/ak12.png", "mips smooth")
att.Description = "Retractable folding stock. Its ergonomic design is comfortable to use on the move."
att.Slot = {"ur_ak_stock"}
att.AutoStats = true

att.SortOrder = 2

att.Mult_SightedSpeedMult = 1.1
att.Mult_MoveDispersion = .8
att.Mult_RecoilSide = 1.35
att.Mult_Sway = 1.25
att.Add_BarrelLength = -4

att.ActivateElements = {"stock_ak12"}

-- Goes into standalone AK pack
att.Ignore = true
att.Icon = Material("entities/att/obsolete.png", "mips smooth")
att.Description = "stop looking at deprecated shit you suka"