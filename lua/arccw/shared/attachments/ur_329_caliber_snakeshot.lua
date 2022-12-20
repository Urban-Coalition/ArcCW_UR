att.PrintName = "Model 329PD .44 Snakeshot Conversion"
att.AbbrevName = ".44 Snakeshot"
att.Icon = Material("entities/att/uc_bullets/20g.png","smooth mips")
att.Description = "Rounds containing small lead shots. Due to bullet diameter and barrel length, this round has an extremely low effective range.\nAs its name implies, it's mostly useful for shooting snakes and rodents only."

if !GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "Enforcement .44 Snakeshot Conversion"
end
-- Todo: alt shoot sound

att.AutoStats = true
att.Desc_Pros = {
    "ur.329.snakeshot.1"
}
att.Desc_Cons = {
    "ur.329.snakeshot.2"
}
att.Slot = "ur_329_caliber"
att.SortOrder = -1

att.Override_Num = 4
att.Override_AccuracyMOA = 65
att.Override_AccuracyMOA_Priority = 0

att.Override_HullSize = 0.1
att.Override_BodyDamageMults = ArcCW.UC.BodyDamageMults_Shotgun
att.Override_Penetration = 1

att.Mult_Damage = 70 / 60

att.Mult_Range = 0.4
att.Mult_RangeMin = 2

att.Mult_PhysBulletMuzzleVelocity = 0.6

att.Override_IsShotgun = true
att.Override_Ammo = "buckshot"
att.Override_ShellModel = "models/weapons/arccw/uc_shells/410bore.mdl"
att.Override_ShellScale = 0.8
att.Override_ShellSounds = ArcCW.ShotgunShellSoundsTable
att.Override_Trivia_Class = "Shot Pistol"
att.Override_Trivia_Calibre = att.AbbrevName -- E F F I C I E N C Y

local slotinfo = {
    [7] = {"\"BUCK\" #000 Buckshot", "\"BUCK\" #000 Buckshot", Material("entities/att/arccw_uc_ammo_shotgun_generic.png", "mips smooth")},
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

att.Hook_GetShootSound = function(wep, sound)
    if wep:GetBuff_Override("Silencer") then
        return "weapons/arccw_ur/deagle/fire_supp_10.ogg" -- Placeholder
    else
        return {"weapons/arccw_ur/deagle/fire-410-01.ogg", "weapons/arccw_ur/deagle/fire-410-02.ogg", "weapons/arccw_ur/deagle/fire-410-03.ogg", "weapons/arccw_ur/deagle/fire-410-04.ogg", "weapons/arccw_ur/deagle/fire-410-05.ogg", "weapons/arccw_ur/deagle/fire-410-06.ogg"} -- Not Placeholder
    end
end