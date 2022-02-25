att.PrintName = "13\" Integral Schalldämpfer Barrel"
att.AbbrevName = "13\" SD Barrel"

if !GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "K7S Integral Schalldämpfer Barrel"
end

att.Icon = Material("entities/att/acwatt_ur_mp5_barrel_sd.png", "smooth mips")
att.Description = "Large, specialized integral suppressor for the MP5. Projectiles are slowed to subsonic velocities, which results in an extremely quiet report but reduced effective range."
att.Desc_Pros = {
    "No distant firing sound",
    "pro.invistracers"
}
att.Desc_Cons = {
    "uc.nomuzzle"
}
att.AutoStats = true

att.Slot = "ur_mp5_barrel"

att.SortOrder = 6

att.Silencer = true
att.Mult_ShootVol = 0.5
att.Override_MuzzleEffect = "muzzleflash_suppressed"
att.Override_PhysTracerProfile = 7
att.Override_TracerNum = 0

att.Mult_SightTime = 1.1
att.Mult_SightedSpeedMult = .75
att.Mult_Sway = 1.25
att.Mult_Range = .5
att.Add_BarrelLength = 4

att.Hook_GetDistantShootSound = function(wep, distancesound)
    if distancesound == wep.DistantShootSoundSilenced then
        return "common/null.wav" end
end

att.ActivateElements = {"ur_mp5_barrel_sd"}
att.GivesFlags = {"barrel_sd"}