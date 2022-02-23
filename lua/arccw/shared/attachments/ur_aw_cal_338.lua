att.PrintName = "AWM .338 Lapua Magnum Receiver"
att.AbbrevName = ".338 Lapua Magnum"
att.Icon = nil 
att.Description = "Even larger cartridge that exerts substantially higher muzzle energy, practically guaranteed to be fatal on a successful hit.\nThe recoil is tremendous, and the lengthened bolt required to accommodate the cartridge is harder to cycle."
att.Slot = "ur_aw_cal"
att.Desc_Pros = {
    "Increased muzzle velocity"
}

att.AutoStats = true 

att.Mult_Damage = 1.7
att.Mult_DamageMin = 1.4 -- becomes 1 shot at ~40m
att.Override_MuzzleVelocity = 936
att.Override_PhysBulletMuzzleVelocity = 936

att.Mult_Recoil = 1.5
att.Mult_CycleTime = 1.25
att.Mult_ReloadTime = 1.15

att.Override_Trivia_Calibre = ".338 Lapua Magnum"
att.ActivateElements = {"mag_338"}