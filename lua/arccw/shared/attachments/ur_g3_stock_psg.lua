att.PrintName = "PSG-1 Sniper Stock" 
att.AbbrevName = "Sniper Stock"

if !GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "PMR-2 Sniper Stock"
end

att.Icon = Material("entities/att/ur_g3/stock_psg.png","smooth mips")
att.Description = [[Heavy-duty marksman stock made for the sniper variant of the rifle. Cumbersome, but very comfortable to shoot with.]]
att.AutoStats = true
att.Slot = {"ur_g3_stock"}

att.SortOrder = 11

att.Mult_Recoil = 0.85
att.Mult_Sway = .6

att.Mult_SightTime = 1.1
att.Mult_SpeedMult = 0.8

att.Override_ActivePos = Vector(0.3, 1, 0.1)