att.PrintName = "AK-74 5.45x39mm Receiver"
att.AbbrevName = "5.45x39mm Receiver"

if !GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "KF-76 5.45x39mm Receiver"
end

att.Icon = Material("entities/att/uc_bullets/545x39.png", "mips smooth")
att.Description = "Lighter, more accurate cartridge that maintains wounding potential up close, but lacks penetration."
att.Slot = {"ur_ak_cal"}
att.AutoStats = true

att.SortOrder = 10

att.Override_Ammo = "smg1"
att.Override_Trivia_Calibre = "5.45x39mm Soviet"

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

att.ActivateElements = {"mag_545_30"}
local path = ")^weapons/arccw_ur/ak/545_39/"
local path1 = ")^weapons/arccw_ur/ak/"
local path2 = ")^weapons/arccw_ur/ak/556/"

att.Hook_GetShootSound = function(wep, fsound)
    --[[if fsound == wep.FirstShootSound or fsound == wep.FirstShootSound then return {
        path .. "stalol/fire_545_1.wav",
     } end]]
    if fsound == wep.ShootSound or fsound == wep.FirstShootSound then return {path .. "fire-01.ogg", path .. "fire-02.ogg", path .. "fire-03.ogg", path .. "fire-04.ogg", path .. "fire-05.ogg", path .. "fire-06.ogg"} end
    if fsound == wep.ShootSoundSilenced then return {path .. "fire-sup-01.ogg", path .. "fire-sup-02.ogg", path .. "fire-sup-03.ogg", path .. "fire-sup-04.ogg", path .. "fire-sup-05.ogg", path .. "fire-sup-06.ogg"} end
end


att.Hook_GetDistantShootSoundOutdoors = function(wep, distancesound)
    if wep:GetBuff_Override("Silencer") then
        -- fallback to script
    else
        return {path2 .. "fire-dist-01.ogg", path2 .. "fire-dist-02.ogg", path2 .. "fire-dist-03.ogg", path2 .. "fire-dist-04.ogg", path2 .. "fire-dist-05.ogg", path2 .. "fire-dist-06.ogg"}
    end
end

local slotinfo = {
    [6] = {"30-Round Mag", "30-Round Mag", Material("entities/att/ur_ak/magazines/545_30.png", "mips smooth")},
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