att.PrintName = "AWM .300 Winchester Magnum Receiver"
att.AbbrevName = ".300 Win Mag"
att.Icon = nil 
att.Description = "Versatile magnum cartridge that delivers a flat trajectory and high accuracy for its energy. The lengthened bolt required to accommodate the cartridge is harder to cycle."
att.Slot = "ur_aw_cal"
att.Desc_Pros = {
    --"Increased muzzle velocity"
}

att.AutoStats = true 

att.Mult_Penetration = 1.25
att.Mult_Range = 1.2
att.Mult_AccuracyMOA = .75

att.Mult_Recoil = 1.35

att.Hook_SelectReloadAnimation = function(wep, anim)
    return anim .. "_338"
end

att.Override_Trivia_Calibre = ".300 Winchester Magnum"
att.Override_ShellModel = "models/weapons/arccw/ud_shells/338.mdl"
att.Override_Ammo = "SniperPenetratedRound"
att.GivesFlags = {"mag_338"}
att.ActivateElements = {"mag_338"}