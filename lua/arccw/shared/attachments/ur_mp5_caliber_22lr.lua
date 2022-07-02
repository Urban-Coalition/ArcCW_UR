att.PrintName = "MP5 .22 LR Conversion"
att.AbbrevName = ".22 LR Receiver"

if !GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "PK5/22 .22 LR Conversion"
end

att.Description = "A semi-automatic civilian model of the MP5 rechambered in .22 Long Rifle.\nThe low lethality of the cartridge makes this unfit for tactical operations, but far more fun to plink with."

--att.Icon = Material("entities/att/acwatt_ud_m16_receiver_semi.png", "smooth mips")
att.Desc_Pros = {
}
att.Desc_Cons = {
}
att.Desc_Neutrals = {
}
att.Slot = "ur_mp5_caliber"

att.AutoStats = true
att.SortOrder = -1

att.Override_Trivia_Calibre = ".22 Long Rifle"
att.Override_Ammo = "plinking"

att.Mult_Damage = 0.4
att.Mult_DamageMin = 0.4
att.Mult_Penetration = 3 / 6

att.Mult_Recoil = 0.25
att.Mult_VisualRecoilMult = 0.25
--att.Mult_RPM = 1.25
att.Mult_Penetration = 0.1
att.Mult_ShootSpeedMult = 1.2
att.Override_PhysBulletMuzzleVelocity = 370

att.Mult_HipDispersion = 0.75

att.Mult_ClipSize = 1.2

att.Override_ShellModel = "models/weapons/arccw/uc_shells/22lr.mdl"
att.Override_ShellScale = 1
att.Override_ShellSounds = ArcCW.TinyShellSoundsTable

att.Hook_GetShootSound = function(wep, sound)
    if wep:GetBuff_Override("Silencer") then
        return "weapons/arccw_ud/mini14/fire_22_supp.ogg" -- Placeholder
    else
        return "weapons/arccw_ud/mini14/fire_22.ogg"
    end
end

att.Hook_GetDistantShootSound = function(wep, distancesound)
    if distancesound == wep.DistantShootSound then
        return "weapons/arccw_ud/mini14/fire_22_dist.ogg" end
end

att.GivesFlags = {"ur_mp5_cal_22lr"}


att.Override_Firemodes_Priority = 0.5
att.Override_Firemodes = {
    {
        Mode = 1,
    },
    {
        Mode = 0
    }
}

att.ActivateElements = {"receiver_lower_semi"}