att.PrintName = "PP-19 Vityaz 9x19mm Parabellum Receiver"
att.AbbrevName = "9x19mm Receiver"

if !GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "Bogatyr SMG 9x19mm Parabellum Receiver"
end

att.Icon = Material("entities/att/uc_bullets/9x19.png", "mips smooth")
att.Description = "Converts the weapon to a submachine gun. The smaller caliber drastically reduces recoil, but has much less range and is less accurate."
att.Slot = {"ur_ak_cal"}
att.AutoStats = true

att.SortOrder = 9

att.Override_Ammo = "pistol"
att.Override_Trivia_Calibre = att.AbbrevName
att.Override_Trivia_Class = "Submachine Gun"

att.Mult_Range = 0.6
att.Mult_RPM = 1.178 -- 800 rpm with the carbine barrels
att.Mult_ReloadTime = .95
att.Mult_Recoil = .35
att.Mult_AccuracyMOA = .85
att.Mult_HipDispersion = .75
att.Mult_ShootPitch = 90 / 100

att.Mult_Penetration = 0.125
att.Mult_DamageMin = 0.85
att.Mult_Damage = 0.64

att.Override_Ammo = "pistol"
att.Override_Trivia_Calibre = "9x19mm Parabellum"
att.Override_Trivia_Class = "Submachine Gun"
att.Override_ShellModel = "models/weapons/arccw/uc_shells/9x19.mdl"
att.Override_ShellScale = 1
att.Override_ShellSounds = ArcCW.PistolShellSoundsTable

att.Hook_SelectReloadAnimation = function(wep, anim)
    return anim .. "_9mm"
end

att.GivesFlags = {"cal_9mm"}
att.ActivateElements = {"mag_9mm"}
local path = ")^weapons/arccw_ur/ak/9mm/"

local soundpath = ")^weapons/arccw_ur/1911/fire-9-"

att.Hook_GetShootSound = function(wep, fsound)
    if fsound == wep.ShootSound or fsound == wep.FirstShootSoundSilenced then return {
        soundpath .. "01.ogg",
        soundpath .. "02.ogg",
        soundpath .. "03.ogg",
        soundpath .. "04.ogg",
        soundpath .. "05.ogg",
        soundpath .. "06.ogg",
     } end
     if fsound == wep.ShootSoundSilenced then return {
        path .. "fire-sup-01.ogg",
        path .. "fire-sup-02.ogg",
        path .. "fire-sup-03.ogg",
        path .. "fire-sup-04.ogg",
        path .. "fire-sup-05.ogg",
        path .. "fire-sup-06.ogg"
    } end
end

local tail = ")^/arccw_uc/common/9x19/"

att.Hook_GetDistantShootSoundOutdoors = function(wep, distancesound)
    if wep:GetBuff_Override("Silencer") then
        -- fallback to script
    else
        return {
            tail .. "fire-dist-9x19-pistol-ext-01.ogg",
            tail .. "fire-dist-9x19-pistol-ext-02.ogg",
            tail .. "fire-dist-9x19-pistol-ext-03.ogg",
            tail .. "fire-dist-9x19-pistol-ext-04.ogg",
            tail .. "fire-dist-9x19-pistol-ext-05.ogg",
            tail .. "fire-dist-9x19-pistol-ext-06.ogg"
        }
    end
end

local slotinfo = {
    [6] = {"30-Round Mag", "30-Round Mag", Material("entities/att/ur_ak/magazines/9_30.png", "mips smooth")},
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