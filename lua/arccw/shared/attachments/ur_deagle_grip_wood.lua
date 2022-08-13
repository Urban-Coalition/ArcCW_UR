att.PrintName = "Desert Eagle Wooden Grip"
att.AbbrevName = "Wooden Grip"
att.Icon = Material("entities/att/acwatt_ur_deagle_grip_plastic.png","smooth mips")
if !GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "Predator Wooden Grip"
end
att.Description = "Premium and hand-carved. Classy and smooth, but more difficult to grip."
att.Slot = "ur_deagle_grip"
att.AutoStats = true

att.Mult_Recoil = 1.05
att.Mult_RecoilSide = 1.1
att.Mult_SightTime = 0.95

att.ActivateElements = {"ur_deagle_grip_wooden"}