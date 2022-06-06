att.PrintName = "\"KGB\" Integral Suppressor"
att.AbbrevName = "PVS Suppressor"

if !GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "PB Integral Suppressor"
    att.AbbrevName = "PB Suppressor"
end

att.Icon = Material("entities/att/acwatt_ur_mp5_barrel_sd.png", "smooth mips")
att.Description = "yes."
att.Desc_Pros = {
    "pro.invistracers",
    "uc.subsonic"
}
att.AutoStats = true

att.Slot = "pm_supp"

att.SortOrder = 999

att.Silencer = true
att.Mult_ShootVol = 0.55
att.Override_MuzzleEffect = "muzzleflash_suppressed"
att.Override_PhysTracerProfile = 7
att.Override_TracerNum = 0

att.Mult_SightTime = 1.05
att.Mult_AccuracyMOA = 0.5
att.Mult_HipDispersion = 0.8

att.Mult_PhysBulletMuzzleVelocity = 0.75

att.Hook_GetDistantShootSound = function(wep, distancesound)
    if distancesound == wep.DistantShootSoundSilenced then
        return false end
end
att.Mult_ShootPitch = 1.15

att.RequireFlags = {"ur_pb"}
att.ActivateElements = {"ur_pb_supp"}
att.GivesFlags = {"barrel_sd", "powder_subsonic"}