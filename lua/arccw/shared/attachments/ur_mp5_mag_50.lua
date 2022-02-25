att.PrintName = "MP5 50-Round Drum Magazine"
att.AbbrevName = "50-Round Drum"

if !GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "K7 50-Round Drum"
end


att.SortOrder = 100
att.Icon = Material("entities/att/acwatt_ur_mp5_mag_50.png", "smooth mips")
att.Description = "Drum magazine for the MP5. Allows for a long period between reloads, but harms the weapon's ergonomics significantly. Prone to jamming."
att.Desc_Pros = {
}
att.Desc_Cons = {
    "uc.jam"
}
att.Desc_Neutrals = {
}
att.Slot = "ur_mp5_mag"

att.AutoStats = true

att.Mult_SightTime = 1.5
--att.Mult_Recoil = 0.9
att.Mult_ReloadTime = 1.4
att.Mult_SpeedMult = 0.9
att.Mult_DrawTime = 1.25
att.Override_ClipSize = 50
att.Mult_Sway = 2
att.Mult_ShootSpeedMult = 0.85

att.ActivateElements = {"ur_mp5_50_mag"}

--att.Override_Jamming = true
att.Override_Malfunction = true
att.Mult_MalfunctionMean = 0.75
att.Mult_MalfunctionVariance = 1.5

att.Hook_SelectReloadAnimation = function(wep, anim)
    return anim .. "_50"
end

att.Ignore = true