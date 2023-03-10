att.PrintName = "AWM .300 Winchester Magnum Receiver"
att.AbbrevName = ".300 Winchester Magnum"
att.Icon = Material("entities/att/uc_bullets/300winchester.png", "mips smooth")
att.Description = "Versatile magnum cartridge identical in diameter to 7.62x51mm rounds but with significantly higher muzzle energy. Liable to overpenetration at close range."
att.Slot = "ur_aw_cal"
att.Desc_Pros = {
    --"ur.aw.velocity"
}

att.AutoStats = true

att.Mult_Damage = 50 / 80
att.Mult_DamageMin = 90 / 50
--att.Mult_Range = 2
att.Override_Range = 50
att.Override_RangeMin = 10


att.Mult_PhysBulletMuzzleVelocity = 1000 / 850
-- att.Override_PhysBulletMuzzleVelocity = 1000

att.Mult_Penetration = 1.25
att.Mult_Recoil = 1.5
att.Mult_ReloadTime = 5.55 / 5.15

att.Mult_ShootSpeedMult = 0.9

local path = ")weapons/arccw_ur/aw_placeholders/338/"
local path1 = ")weapons/arccw_ur/aw_placeholders/"

local fire300 = {path .. "fire-300-01.ogg",path .. "fire-300-02.ogg",path .. "fire-300-03.ogg",path .. "fire-300-04.ogg",path .. "fire-300-05.ogg",path .. "fire-300-06.ogg"}
local fire300sup = {path1 .. "fire-sup-01.ogg",path1 .. "fire-sup-02.ogg",path1 .. "fire-sup-03.ogg",path1 .. "fire-sup-04.ogg",path1 .. "fire-sup-05.ogg",path1 .. "fire-sup-06.ogg"}

att.Hook_GetShootSound = function(wep, sound)
    if wep:GetBuff_Override("Silencer") then
        return fire300sup
    else
        return fire300
    end
end

local tail = ")/arccw_uc/common/338lm/"
local fire338dist = {tail .. "fire-dist-338lm-rif-ext-01.ogg", tail .. "fire-dist-338lm-rif-ext-02.ogg", tail .. "fire-dist-338lm-rif-ext-03.ogg", tail .. "fire-dist-338lm-rif-ext-04.ogg", tail .. "fire-dist-338lm-rif-ext-05.ogg", tail .. "fire-dist-338lm-rif-ext-06.ogg"}

att.Hook_GetDistantShootSoundOutdoors = function(wep, distancesound)
    if wep:GetBuff_Override("Silencer") then
        -- fallback to script
    else
        return fire338dist
    end
end

att.Hook_SelectReloadAnimation = function(wep, anim)
    return anim .. "_338"
end

-- local slotinfo = {
--     [5] = {"5-Round Mag", "5-Round Mag", Material("entities/att/ur_aw/mag338_5.png", "mips smooth")},
-- }

-- att.Hook_GetDefaultAttIcon = function(wep, slot)
--     if slotinfo[slot] then
--         return slotinfo[slot][3]
--     end
-- end

att.Override_Trivia_Calibre = ".300 Winchester Magnum"
att.Override_ShellModel = "models/weapons/arccw/ud_shells/338.mdl"
att.Override_Ammo = "SniperPenetratedRound"
att.GivesFlags = {"mag_300"}
--att.ActivateElements = {"mag_338"}