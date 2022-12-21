att.PrintName = (GetConVar("arccw_truenames"):GetBool() and "SPAS-12 Fixed Polymer Stock") or "Martello 12/70 Fixed Polymer Stock"
att.AbbrevName = "Fixed Stock"
att.Icon = Material("entities/att/acwatt_ud_m1014_stock_in.png", "smooth mips")
att.Description = "Solid, non-adjustable polymer stock designed specifically for the civilian market. Provides a better brace at the cost of combat mobility."
att.Icon = Material("entities/att/ur_spas/stock_full.png", "smooth mips")
att.Slot = "ur_spas12_stock"

att.AutoStats = true

att.Mult_Recoil = .8
att.Mult_Sway = .8

att.Mult_SightedSpeedMult = .85
att.Mult_DrawTime = 1.25
att.Mult_HolsterTime = 1.25