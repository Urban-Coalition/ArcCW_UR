att.PrintName = "9x19mm Conversion"
att.AbbrevName = "9mm Conversion"

if !GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "AMAS Competition 9mm Conversion"
end

att.SortOrder = 10
att.Icon = Material("entities/att/acwatt_ud_glock_caliber.png", "smooth mips")
att.Description = ""
att.Desc_Pros = {
}
att.Desc_Cons = {
}
att.Desc_Neutrals = {
}
att.Slot = "ur_m1911_caliber"

att.AutoStats = true

att.Override_Trivia_Calibre = "9x19mm"

att.Mult_Damage = 0.75
att.Mult_DamageMin = 0.75
att.Mult_Penetration = 4
att.Mult_Range = 1.25

att.Mult_Recoil = 0.85
att.Mult_RecoilSide = 0.75


att.Override_ClipSize = 9
SWEP.ShellModel = "models/weapons/arccw/uc_shells/9x19.mdl"
att.Override_ShellScale = 1

att.Hook_GetShootSound = function(wep, sound)
    if wep:GetBuff_Override("Silencer") then
        return "weapons/arccw_ud/glock/fire_supp.ogg"
    else
        return "weapons/arccw_ud/glock/fire.ogg"
    end
end

att.Hook_GetDistantShootSound = function(wep, distancesound)
    if distancesound == wep.DistantShootSound then
        return "weapons/arccw_ud/glock/fire.ogg" end
end