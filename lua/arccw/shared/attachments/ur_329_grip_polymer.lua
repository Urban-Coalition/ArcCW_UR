att.PrintName = "Model 329PD Polymer Grip"
att.AbbrevName = "Polymer Grip"
if !GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "Enforcement .44 Polymer Grip"
end
att.Icon = Material("entities/att/acwatt_ur_deagle_grip_plastic.png","mips smooth")
att.Description = "Polymer grip which improves handling at the cost of increased recoil."
att.Slot = "ur_329_grip"
att.AutoStats = true
att.SortOrder = 6

att.Mult_Recoil = 1.2
att.Mult_RecoilSide = 1.1

att.Mult_SightTime = 0.85
att.Mult_DrawTime = 0.9
att.Mult_HolsterTime = 0.9