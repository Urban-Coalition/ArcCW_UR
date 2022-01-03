att.PrintName = "AK-308 7.62x51mm NATO Receiver"
att.AbbrevName = ".308 Receiver"
att.Icon = nil -- todo
att.Description = "Converts the weapon to a battle rifle, boasting an even larger bullet, passable accuracy, and a kick like a mule.\nAccuracy becomes extremely low in fully automatic mode."
att.Slot = {"ur_ak_cal"}
att.AutoStats = true
att.Desc_Cons = {
    "+300% Imprecision in Automatic mode"
}

--att.SortOrder = 10

att.Override_ClipSize = 20

att.Mult_Range = 2
att.Mult_Penetration = 2
att.Mult_RPM = 1.167 -- 700 rpm
att.Mult_AccuracyMOA = .75
att.Mult_Damage = 1.146 -- 2 htk up from 3
att.Mult_DamageMin = 1.5 -- 4 htk up from 5

att.Mult_ReloadTime = 1.2
att.Mult_Recoil = 1.75
att.Mult_SightTime = 1.1

att.Override_ShellScale = 1.15

att.Override_Firemodes = {
    {
        Mode = 2,
        Mult_AccuracyMOA = 4
    },
    {
        Mode = 1,
    },
    {
        Mode = 0
    }
} -- The real AK-308 is select fire :trollscream:

att.Override_Trivia_Calibre = "7.62x51mm NATO"
att.Override_Trivia_Class = "Battle Rifle"

att.GivesFlags = {"cal_308"}
att.ActivateElements = {"mag_308", "reciever_ak12"}
local path = ")^weapons/arccw_ur/ak/"

att.Hook_GetShootSound = function(wep, fsound)
    if fsound == wep.ShootSound or fsound == wep.FirstShootSound then return {path .. "fire_308_1.ogg", path .. "fire_308_2.ogg", path .. "fire_308_3.ogg", path .. "fire_308_4.ogg"} end
    if fsound == wep.ShootSoundSilenced then return path .. "fire_308_sup.ogg" end
end

-- att.Hook_GetDistantShootSound = function(wep, distancesound)
--     if distancesound == wep.DistantShootSound then return path .. "fire_545_dist.ogg" end
-- end


local slotinfo = {
    [5] = {"20-Round Mag", "20-Round Mag", Material("entities/att/acwatt_ud_m16_mag_15.png", "smooth mips")},
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