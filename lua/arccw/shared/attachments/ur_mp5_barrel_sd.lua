att.PrintName = "13\" Schalldämpfer Barrel"
att.AbbrevName = "13\" SD Barrel"

if !GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "Schalldämpfer Barrel"
end

att.Icon = Material("entities/att/acwatt_ur_mp5_barrel_sd.png", "smooth mips")
att.Description = "Large, specialized integral suppressor for the MP5.\nMuzzle velocity is reduced, resulting in an extremely quiet report but reduced effective range."
att.Desc_Pros = {
    -- "pro.invistracers",
    -- "uc.subsonic"
}
att.Desc_Cons = {
    "uc.nomuzzle",
    "uc.nohg",
    -- "uc.nopowder"
}
att.Desc_Neutrals = {"uc.supptail"}

att.AutoStats = true

att.Slot = "ur_mp5_barrel"

att.SortOrder = 13

att.Silencer = true
att.Mult_ShootVol = 0.55
att.Mult_Recoil = 0.9
att.Override_MuzzleEffect = "muzzleflash_suppressed"
att.Override_PhysTracerProfile = 7
att.Override_TracerNum = 0

att.Mult_SightTime = 1.15
att.Mult_Sway = 1.25
att.Mult_Range = 0.65
att.Add_BarrelLength = 4

att.Mult_PhysBulletMuzzleVelocity = 0.7

att.Hook_GetDistantShootSound = function(wep, distancesound)
    if distancesound == wep.DistantShootSoundSilenced then
        return false end
end
att.Mult_ShootPitch = 1.15

att.ActivateElements = {"ur_mp5_barrel_sd"}
att.GivesFlags = {"barrel_sd"} --, "powder_subsonic"
--att.ExcludeFlags = {"ur_mp5_cal_10mm","ur_mp5_cal_40sw"}

att.Hook_GetDistantShootSound = function(wep, distancesound)
    if wep:GetBuff("PhysBulletMuzzleVelocity") < ArcCW.UC.SubsonicThreshold then
        return false
    end
end