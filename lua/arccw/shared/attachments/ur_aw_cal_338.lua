att.PrintName = "AWM .338 Lapua Magnum Receiver"
att.AbbrevName = ".338 Lapua Magnum"
att.Icon = nil
att.Description = "Powerful sniper cartridge that exerts substantially more muzzle energy, practically guaranteed to be fatal on a successful hit beyond point blank. The recoil is tremendous, and the lengthened bolt required to accommodate the cartridge is harder to cycle."
att.Slot = "ur_aw_cal"

att.AutoStats = true
att.Desc_Pros = {
    "ur.aw.velocity"
}
att.Desc_Cons = {
    "Disables Magazine attachments"
}

att.Mult_Damage = 85 / 75
att.Mult_DamageMin = 160 / 40
--att.Mult_Range = 2
att.Override_Range = 100
att.Override_RangeMin = 20

att.Override_PhysBulletMuzzleVelocity = 1000

att.Mult_Penetration = 2
att.Mult_Recoil = 2
att.Mult_CycleTime = 1.18
-- att.Mult_ReloadTime = 1.15

att.Mult_ShootSpeedMult = 0.8

att.Hook_SelectReloadAnimation = function(wep, anim)
    return anim .. "_338"
end

att.Override_Trivia_Calibre = ".338 Lapua Magnum"
att.Override_ShellModel = "models/weapons/arccw/ud_shells/338.mdl"
att.Override_Ammo = "SniperPenetratedRound"
att.GivesFlags = {"mag_338"}
att.ActivateElements = {"mag_338"}