att.PrintName = "MP5 .22 LR Conversion"
att.AbbrevName = ".22 LR Receiver"

if !GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "PK5/22 .22 LR Conversion"
end

att.Description = "A semi-automatic civilian model of the MP5 rechambered in .22 Long Rifle.\nThe low lethality of the cartridge makes this unfit for tactical operations, but far more fun to plink with."

att.Icon = Material("entities/att/uc_bullets/22lr.png", "smooth mips")
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


att.Override_PhysBulletMuzzleVelocity = 320
att.Mult_HipDispersion = 0.75

att.Mult_ClipSize = 1.2

att.Override_ShellModel = "models/weapons/arccw/uc_shells/22lr.mdl"
att.Override_ShellScale = 1
att.Override_ShellSounds = ArcCW.TinyShellSoundsTable

local path = "arccw_uc/common/"

local fire22 = {path .. "fire-22-01.ogg",path .. "fire-22-02.ogg",path .. "fire-22-03.ogg",path .. "fire-22-04.ogg",path .. "fire-22-05.ogg",path .. "fire-22-06.ogg"}
local fire22sup = {path .. "fire-22-sup-01.ogg",path .. "fire-22-sup-02.ogg",path .. "fire-22-sup-03.ogg",path .. "fire-22-sup-04.ogg",path .. "fire-22-sup-05.ogg",path .. "fire-22-sup-06.ogg"}

att.Hook_GetShootSound = function(wep, sound)
    if wep:GetBuff_Override("Silencer") then
        return fire22sup
    else
        return fire22
    end
end

local fire22dist = {path .. "fire-22-dist-01.ogg", path .. "fire-22-dist-02.ogg", path .. "fire-22-dist-03.ogg", path .. "fire-22-dist-04.ogg", path .. "fire-22-dist-05.ogg", path .. "fire-22-dist-06.ogg"}

att.Hook_GetDistantShootSoundOutdoors = function(wep, distancesound)
    if wep:GetBuff_Override("Silencer") then
        -- fallback to script
    else
        return fire22dist
    end
end


local fire22distint = {path .. "fire-dist-int-pistol-light-01.ogg", path .. "fire-dist-int-pistol-light-02.ogg", path .. "fire-dist-int-pistol-light-03.ogg", path .. "fire-dist-int-pistol-light-04.ogg", path .. "fire-dist-int-pistol-light-05.ogg", path .. "fire-dist-int-pistol-light-06.ogg"}

att.Hook_GetDistantShootSoundIndoors = function(wep, distancesound)
    if wep:GetBuff_Override("Silencer") then
        -- fallback to script
    else
        return fire22distint
    end
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