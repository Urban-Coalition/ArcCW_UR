att.PrintName = "MP5 .22 LR Conversion"
att.AbbrevName = ".22 LR"

if not GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "K7 .22 LR Conversion"
end

att.SortOrder = 00
att.Icon = Material("entities/att/acwatt_ur_mp5_caliber.png", "smooth mips")
att.Description = "A plinking cartridge that is easy to handle but not very lethal.\nIts form factor allows more rounds to be stuffed into magazines."
att.Desc_Pros = {
}
att.Desc_Cons = {
}
att.Desc_Neutrals = {
}
att.Slot = "ur_mp5_caliber"

att.AutoStats = true

att.Override_Trivia_Calibre = ".22 Long Rifle"
att.Override_Ammo = "plinking"

att.Mult_Damage = 0.4
att.Mult_DamageMin = 0.4

att.Mult_Recoil = 0.25
att.Mult_VisualRecoilMult = 0.25
att.Mult_RPM = 1.5
att.Mult_Penetration = 0.1
att.Mult_ShootSpeedMult = 1.2

att.Mult_ClipSize = 1.2

att.Override_ShellModel = "models/weapons/arccw/ud_shells/57.mdl"
att.Override_ShellScale = 0.8
att.Override_ShellSounds = ArcCW.TinyShellSoundsTable

att.Hook_GetShootSound = function(wep, sound)
    if wep:GetBuff_Override("Silencer") then
        return "weapons/arccw_ud/glock/fire_supp_22.ogg" -- Not Placeholder
    else
        return "weapons/arccw_ud/glock/fire_22.ogg" -- Not Placeholder
    end
end

att.Hook_GetDistantShootSound = function(wep, distancesound)
    if distancesound == wep.DistantShootSound then
        return "weapons/arccw_ud/glock/fire_dist_22.ogg" end
end