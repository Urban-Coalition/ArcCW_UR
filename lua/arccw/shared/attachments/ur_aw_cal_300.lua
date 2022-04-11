att.PrintName = "AWM .300 Winchester Magnum Receiver"
att.AbbrevName = ".300 Win Mag"
att.Icon = Material("entities/att/ur_aw/rec300.png", "mips smooth")
att.Description = "Versatile magnum cartridge identical in diameter to 7.62x51mm rounds but with significantly higher muzzle energy. Liable to overpenetration at close range."
att.Slot = "ur_aw_cal"
att.Desc_Pros = {
    "ur.aw.velocity"
}

att.AutoStats = true

att.Mult_Damage = 44 / 75
att.Mult_DamageMin = 85 / 40
--att.Mult_Range = 2
att.Override_Range = 50
att.Override_RangeMin = 10

att.Override_PhysBulletMuzzleVelocity = 1000

att.Mult_Penetration = 1.25
att.Mult_Recoil = 1.5
att.Mult_ReloadTime = 5.55 / 5.15

att.Mult_ShootSpeedMult = 0.9

local path = ")^weapons/arccw_ur/aw_placeholders/338/"
local path1 = ")^weapons/arccw_ur/aw_placeholders/"

att.Hook_GetDistantShootSound = function(wep, distancesound)
    if distancesound == wep.DistantShootSound then return {path1 .. "fire-dist-01.ogg", path1 .. "fire-dist-02.ogg", path1 .. "fire-dist-03.ogg", path1 .. "fire-dist-04.ogg", path1 .. "fire-dist-05.ogg", path1 .. "fire-dist-06.ogg"} end
end

att.Hook_SelectReloadAnimation = function(wep, anim)
    return anim .. "_338"
end

local slotinfo = {
    [5] = {"5-Round Mag", "5-Round Mag", Material("entities/att/ur_aw/mag338_5.png", "mips smooth")},
}

att.Hook_GetDefaultAttIcon = function(wep, slot)
    if slotinfo[slot] then
        return slotinfo[slot][3]
    end
end

att.Override_Trivia_Calibre = ".300 Winchester Magnum"
att.Override_ShellModel = "models/weapons/arccw/ud_shells/338.mdl"
att.Override_Ammo = "SniperPenetratedRound"
att.GivesFlags = {"mag_300"}
--att.ActivateElements = {"mag_338"}