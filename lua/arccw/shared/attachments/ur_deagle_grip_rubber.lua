att.PrintName = "Desert Eagle Rubberized Grip"
att.AbbrevName = "Rubberized Grip"
if !GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "Predator Rubberized Grip"
end
att.Icon = nil --todo
att.Description = "Creates higher friction against the shooter's hands, dampening recoil slightly."
att.Slot = "ur_deagle_grip"
att.AutoStats = true

att.Mult_Recoil = 0.9825
att.Mult_RecoilSide = 0.85
att.Mult_SightedStrafeSpeed = 0.95

att.ActivateElements = {"ur_deagle_grip_rubber"}