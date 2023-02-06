att.PrintName = "100 Series Compensator"

att.Icon = Material("entities/att/ur_ak/muzzle_74m.png", "mips smooth")
att.Description = "Modernized compensator produced for AKs of multiple calibers."
att.AutoStats = true
att.Slot = {"ur_ak_muzzle"}

if !GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "Modern Compensator"
    att.Description = string.Replace(att.Description,"AKs","KFs") -- so we don't have to change the desc twice
end

att.Mult_Recoil = .95
att.Mult_RecoilSide = .65

att.Add_BarrelLength = 2.5
att.Mult_SightTime = 1.05
att.Mult_Sway = 1.25

att.SortOrder = 999

att.AttachSound = "arccw_uc/common/gunsmith/suppressor_thread.ogg"
att.ActivateElements = {"muzzle_ak74"}
att.ExcludeFlags = {"ak_barrelchange","cal_545","cal_556"}

att.HideIfBlocked = false