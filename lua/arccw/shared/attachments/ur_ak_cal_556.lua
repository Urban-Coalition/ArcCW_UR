att.PrintName = "AK-101 5.56x45mm NATO Receiver"
att.AbbrevName = "5.56x45mm Receiver"
att.Icon = Material("entities/att/uc_bullets/556x45.png", "mips smooth")
att.Description = "Designed for the export market, this receiever uses the NATO standard 5.56x45mm cartridge.\nThe smaller round yields a higher muzzle velocity and accuracy at range with similiar wounding potential to 5.45x39mm, but with a slower cyclic rate."
att.Slot = {"ur_ak_cal"}
att.AutoStats = true

att.SortOrder = 10

att.Override_Ammo = "smg1"
att.Override_Trivia_Calibre = "5.56x45mm NATO"

att.Mult_Range = 1.5
att.Mult_SightedSpeedMult = 1.05
att.Mult_ReloadTime = 0.95
att.Mult_Recoil = 0.65
att.Mult_AccuracyMOA = 0.6
att.Mult_HipDispersion = .75

att.Mult_Penetration = 12 / 16
att.Mult_DamageMin = 20 / 25
att.Mult_Damage = 34 / 50

att.Override_Trivia_Country = "Russia"

att.ShootPitchVariation = 1
att.Override_ShellModel = "models/weapons/arccw/uc_shells/556x45.mdl"
att.Override_ShellScale = 1
att.GivesFlags = {"cal_556"}

att.ActivateElements = {"mag_556_30"}
local path = ")^weapons/arccw_ur/ak/556/"
local path1 = ")^weapons/arccw_ur/ak/"

att.Hook_GetShootSound = function(wep, fsound)
    --[[if fsound == wep.FirstShootSound or fsound == wep.FirstShootSound then return {
        path .. "stalol/fire_545_1.wav",
     } end]]
    if fsound == wep.ShootSound or fsound == wep.FirstShootSound then return {path .. "fire-01.ogg", path .. "fire-02.ogg", path .. "fire-03.ogg", path .. "fire-04.ogg", path .. "fire-05.ogg", path .. "fire-06.ogg"} end
    if fsound == wep.ShootSoundSilenced then return path .. "fire_supp.ogg" end
end

att.Hook_GetDistantShootSound = function(wep, distancesound)
    if distancesound == wep.DistantShootSound then return {path .. "fire-dist-01.ogg", path .. "fire-dist-02.ogg", path .. "fire-dist-03.ogg", path .. "fire-dist-04.ogg", path .. "fire-dist-05.ogg", path .. "fire-dist-06.ogg"} end
end

local slotinfo = {
    [6] = {"30-Round Mag", "30-Round Mag", Material("entities/att/ur_ak/magazines/556_30.png", "mips smooth")},
}
att.Hook_GetDefaultAttName = function(wep, slot)
    if slotinfo[slot] then
        return GetConVar("arccw_truenames"):GetBool() and slotinfo[slot][2] or slotinfo[slot][1]
    end
end
att.Hook_GetDefaultAttIcon = function(wep, slot)
    if slotinfo[slot] then
        return slotinfo[slot][3]
    end
end
