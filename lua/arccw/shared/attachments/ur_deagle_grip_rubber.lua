att.PrintName = "Desert Eagle Rubberized Grip"
att.AbbrevName = "Rubberized Grip"
att.Icon = Material("entities/att/acwatt_ur_deagle_grip_rubber.png","mips smooth")
if !GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "Predator Rubberized Grip"
end
att.Description = "Creates higher friction against the shooter's hands, dampening recoil slightly."
att.Slot = "ur_deagle_grip"
att.AutoStats = true

att.Mult_Recoil = 0.95
att.Mult_RecoilSide = 0.9
att.Mult_SightedSpeedMult = 0.95

att.ActivateElements = {"ur_deagle_grip_rubber"}