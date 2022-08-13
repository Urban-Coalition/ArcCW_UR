att.PrintName = "Polymer Grip"
att.AbbrevName = "Polymer Grip"
if !GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "Thunderbolt Polymer Grip"
end
att.Icon = Material("entities/att/acwatt_ur_deagle_grip_plastic.png","mips smooth")
att.Description = "Polymer Grip which reduces the draw, holster, and aim down sights at the cost of slower reloads and increased recoil."
att.Slot = "ur_329_grip"
att.AutoStats = true
att.SortOrder = 6

att.Mult_Recoil = 1.2
att.Mult_ReloadTime = 1.2

att.Mult_SightTime = 0.5
att.Mult_DrawTime = 0.9
att.Mult_HolsterTime = 0.9