att.PrintName = "PB Integral Suppressor"
att.AbbrevName = "PB Suppressor"

if !GetConVar("arccw_truenames"):GetBool() then 
    att.PrintName = "BG-K Integral Suppressor"
    att.AbbrevName = "BG-K Suppressor"
end

att.Icon = Material("entities/att/acwatt_ud_glock_slide.png", "smooth mips")
att.Description = "An integral, quick-detach suppressor for the \"Silent\" variant of the pistol. Specially designed, it provides near-reportless firing and high precision, at the cost of handling and muzzle velocity."
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

att.Mult_SightTime = 1.10
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