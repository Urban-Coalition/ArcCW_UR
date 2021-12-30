att.PrintName = "Vepr .366 TKM Receiver"
att.AbbrevName = ".366 TKM Receiver"

att.Icon = nil -- todo
att.Description = "Hunting round based on 7.62x39mm, with much stronger ranged ballistics than the parent cartridge. Rifles chambered for it are exclusively produced for the civilian market, and are therefore semi-automatic only."

att.Desc_Pros = {
}
att.Desc_Cons = {
    "uc.semionly"
}
att.Desc_Neutrals = {
}
att.Slot = "ur_ak_cal"
att.AutoStats = true

att.Mult_DamageMin = 1.75 -- 3 htk long range, up from 5
att.Mult_Range = 1.5
att.Mult_PrecisionMOA = .75
att.Mult_Penetration = 1.5
att.Mult_ReloadTime = .9

att.Mult_RPM = .6
att.Mult_Recoil = 1.5
att.Override_ClipSize = 20

att.Override_Firemodes = {
    {
        Mode = 1,
    },
    {
        Mode = 0
    }
}

att.Override_ShellScale = 1.4

att.Override_Trivia_Class = "Rifle"
att.Override_Trivia_Calibre = ".366 TKM"
att.ActivateElements = {"mag_366"}
att.GivesFlags = {"cal_366"}

local path = ")^weapons/arccw_ur/ak/"

att.Hook_GetShootSound = function(wep, fsound)
    if fsound == wep.ShootSound or fsound == wep.FirstShootSound then return {path .. "fire_366_1.ogg", path .. "fire_366_2.ogg", path .. "fire_366_3.ogg"} end
    if fsound == wep.ShootSoundSilenced then return path .. "fire_366_sup.ogg" end
end