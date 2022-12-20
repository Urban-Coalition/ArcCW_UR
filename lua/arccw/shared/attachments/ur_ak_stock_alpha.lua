att.PrintName = "AK SOPMOD Stock"
att.AbbrevName = "Carbine Stock"
if !GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "KF SOPMOD Stock"
end
att.Icon = Material("entities/att/ur_ak/stock/helix.png", "mips smooth")
att.Description = "US-made lightweight stock that mounts on an AR buffer tube. More maneuverable than the solid wood stock."
att.Slot = {"ur_ak_stock"}
att.AutoStats = true

att.SortOrder = 2

att.Mult_ShootSpeedMult = 1.1
att.Mult_SightedSpeedMult = 1.15
att.Mult_RecoilSide = 1.5
att.Mult_Sway = 1.25
att.Add_BarrelLength = -2

att.ActivateElements = {"stock_alpha"}