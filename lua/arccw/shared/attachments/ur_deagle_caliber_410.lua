att.PrintName = "Desert Eagle .410 Bore Conversion"
att.AbbrevName = ".410 Bore"
att.Icon = Material("entities/att/uc_bullets/20g.png","smooth mips")
att.Description = "Hobbyist conversion that allows the weapon to accept .410 bore shotgun shells. Because the weapon was never meant to fire these, performance beyond point blank is poor."

if !GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "Predator .410 Bore Conversion"
end
-- Todo: alt shoot sound

att.AutoStats = true
att.Desc_Pros = {
    "ur.deagle.410.1"
}
att.Desc_Cons = {
    "ur.deagle.410.2"
}
att.Slot = "ur_deagle_caliber"
att.SortOrder = -1

att.Override_Num = 4
att.Mult_Range = 0.5
att.Override_AccuracyMOA = 35
att.Override_AccuracyMOA_Priority = 0
att.Mult_ClipSize = 1.15
att.Mult_Recoil = 0.75

att.Mult_Damage = 72 / 70
att.Mult_DamageMin = 20 / 17

att.Override_HullSize = 0.1
att.Override_BodyDamageMults = ArcCW.UC.BodyDamageMults_Shotgun
att.Override_Penetration = 1

--att.Override_Malfunction = true
--att.Mult_MalfunctionVariance = 1.5

att.Override_IsShotgun = true
att.Override_Ammo = "buckshot"
att.Override_ShellModel = "models/weapons/arccw/uc_shells/410bore.mdl"
att.Override_ShellScale = 1
att.Override_ShellSounds = ArcCW.ShotgunShellSoundsTable
att.Override_Trivia_Class = "Shot Pistol"
att.Override_Trivia_Calibre = att.AbbrevName -- E F F I C I E N C Y

local slotinfo = {
    [5] = {"8-Round Mag", "8-Round Mag", Material("entities/att/acwatt_ur_deagle_mag_7.png", "mips smooth")},
    [8] = {"\"BUCK\" #000 Buckshot", "\"BUCK\" #000 Buckshot", Material("entities/att/arccw_uc_ammo_shotgun_generic.png", "mips smooth")},
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