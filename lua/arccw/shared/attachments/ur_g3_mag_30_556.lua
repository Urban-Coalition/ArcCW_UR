att.PrintName = "HK33 5.56x45mm NATO Conversion"
att.AbbrevName = "30-Round 5.56 Mag"
att.Icon = Material("entities/att/uc_bullets/556x45.png", "mips smooth")
att.Description = "Tiny boolets."
att.Slot = {"ur_g3_mag"}
att.AutoStats = true

att.SortOrder = 10

att.Override_ClipSize = 30
att.Override_Ammo = "smg1"
att.Override_Trivia_Calibre = "5.56x45mm NATO"

att.Mult_SightedSpeedMult = 1.05
att.Mult_ReloadTime = 0.95
att.Mult_Recoil = 0.65
att.Mult_HipDispersion = .75
att.Mult_RPM = 750 / 560

att.Mult_Penetration = 12 / 16
att.Mult_DamageMin = 20 / 35
att.Mult_Damage = 34 / 65

att.Override_ShellModel = "models/weapons/arccw/uc_shells/556x45.mdl"
att.Override_ShellScale = 1


att.GivesFlags = {"cal_556"}

local path = ")^weapons/arccw_ur/g3/"
local path1 = ")^weapons/arccw_ur/ak/"

att.Hook_GetShootSound = function(wep, fsound)
    --[[if fsound == wep.FirstShootSound or fsound == wep.FirstShootSound then return {
        path .. "stalol/fire_545_1.wav",
     } end]]
    if fsound == wep.ShootSound or fsound == wep.FirstShootSound then return {path .. "fire-556-01.ogg", path .. "fire-556-02.ogg", path .. "fire-556-03.ogg", path .. "fire-556-04.ogg", path .. "fire-556-05.ogg", path .. "fire-556-06.ogg"} end
    if fsound == wep.ShootSoundSilenced then return path .. "fire_supp.ogg" end
end

att.Hook_GetDistantShootSound = function(wep, distancesound)
    if distancesound == wep.DistantShootSound then return {path1 .. "fire-dist-01.ogg", path1 .. "fire-dist-02.ogg", path1 .. "fire-dist-03.ogg", path1 .. "fire-dist-04.ogg", path1 .. "fire-dist-05.ogg", path1 .. "fire-dist-06.ogg"} end
end
