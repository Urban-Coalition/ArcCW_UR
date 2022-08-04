att.PrintName = "AWM .338 Lapua Magnum Receiver"
att.AbbrevName = ".338 Lapua Magnum"
att.Icon = Material("entities/att/uc_bullets/338lapua.png", "mips smooth")
att.Description = "Powerful sniper cartridge that exerts substantially more muzzle energy, practically guaranteed to be fatal on a successful hit beyond point blank. The recoil is tremendous, and the lengthened bolt required to accommodate the cartridge is harder to cycle."
att.Slot = "ur_aw_cal"

att.AutoStats = true
att.Desc_Pros = {
    --"ur.aw.velocity"
}
att.Desc_Cons = {
    "Disables Magazine attachments"
}

--att.Mult_Damage = 85 / 80
att.Mult_DamageMin = 160 / 50
--att.Mult_Range = 2
att.Override_Range = 100
att.Override_RangeMin = 20

att.Mult_PhysBulletMuzzleVelocity = 950 / 850

att.Mult_Penetration = 2
att.Mult_Recoil = 2
att.Mult_CycleTime = 1.18
att.Mult_ReloadTime = 5.55 / 5.15

att.Mult_ShootSpeedMult = 0.8

local path = ")^weapons/arccw_ur/aw_placeholders/338/"
local path1 = ")^weapons/arccw_ur/aw_placeholders/"

att.Hook_GetDistantShootSoundOutdoors = function(wep, distancesound)
    if wep:GetBuff_Override("Silencer") then
        -- fallback to script
    else
        return {path1 .. "fire-dist-01.ogg", path1 .. "fire-dist-02.ogg", path1 .. "fire-dist-03.ogg", path1 .. "fire-dist-04.ogg", path1 .. "fire-dist-05.ogg", path1 .. "fire-dist-06.ogg"}
    end
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

att.Override_Trivia_Calibre = ".338 Lapua Magnum"
att.Override_ShellModel = "models/weapons/arccw/ud_shells/338.mdl"
att.Override_Ammo = "SniperPenetratedRound"
att.GivesFlags = {"mag_338"}
att.ActivateElements = {"mag_338"}