att.PrintName = "AK Clubfoot Stock"
att.AbbrevName = "Clubfoot Stock"
if !GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "KF Clubfoot Stock"
end
att.Icon = Material("entities/att/ur_ak/stock/rpk.png", "mips smooth")
att.Description = "Heavy-duty machine gun stock, designed with prone shooting in mind. It has more mass than the factory stock, but is generally more comfortable to aim and shoot with."
att.Slot = {"ur_ak_stock"}
att.AutoStats = true

att.SortOrder = 3

att.Mult_Recoil = .85
att.Mult_Sway = .75
att.Mult_SightTime = 1.1
att.Mult_SpeedMult = .9

att.ActivateElements = {"stock_rpk"}