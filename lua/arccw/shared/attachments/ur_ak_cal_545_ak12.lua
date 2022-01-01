att.PrintName = "AK-12 5.45x39mm Receiver"
att.AbbrevName = "AK-12 Receiver"
att.Icon = nil -- todo
att.Description = [[Lighter, more accurate cartridge that maintains wounding potential up close, but lacks penetration.
Features a redesigned rear sight and trigger guard.]]
att.Slot = {"ur_ak_cal"}
att.AutoStats = true

att.SortOrder = 10

att.Override_Ammo = "smg1"
att.Override_Trivia_Calibre = "5.45x39mm"

att.Mult_Range = 1.2
att.Mult_RPM = 1.083 -- 650 rpm
att.Mult_SightedSpeedMult = 1.05
att.Mult_ReloadTime = .95
att.Mult_Recoil = .85
att.Mult_AccuracyMOA = .85
att.Mult_HipDispersion = .75

att.Mult_Penetration = .65
att.Mult_DamageMin = .8
att.Mult_Damage = .8
att.ShootPitchVariation = 1
att.Override_ShellModel = "models/weapons/arccw/uc_shells/545x39.mdl"
att.Override_ShellScale = 1
att.GivesFlags = {"cal_545"}

att.ActivateElements = {"mag_545_30", "reciever_ak12"}
local path = ")^weapons/arccw_ur/ak/"

att.Hook_GetShootSound = function(wep, fsound)
    if fsound == wep.FirstShootSound or fsound == wep.FirstShootSound then return {
        path .. "stalol/fire_545_1.wav",
     } end
    if fsound == wep.ShootSound or fsound == wep.FirstShootSound then return {path .. "fire_545_auto_1.ogg", path .. "fire_545_auto_2.ogg"} end
    if fsound == wep.ShootSoundSilenced then return path .. "fire_545_sup.ogg" end
end

att.Hook_GetDistantShootSound = function(wep, distancesound)
    if distancesound == wep.DistantShootSound then return path .. "fire_545_dist.ogg" end
end