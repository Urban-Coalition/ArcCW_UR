att.PrintName = "21.5\" Freeman Barrel"
att.Icon = nil
att.Description = [[Futuristic fire control group and barrel accomodation that supports a near-instant, gas-powered two-round burst, as well as slamfiring. However, the original dual-mode mechanism is replaced.

The two-round burst can shred most targets, but depletes ammo quickly. The complicated mechanism also has a heavier pump.]]
att.Desc_Pros = {
    "uc.slam",
    "ur.ak.burst",
}
att.Desc_Cons = {
    "ur.spas12.pump"
}
att.Icon = Material("entities/att/ur_spas/barrel_std.png", "smooth mips")

att.SortOrder = 21.5
att.Slot = "ur_spas12_barrel"
att.AutoStats = true

att.Override_Firemodes = {
    {
        Mode = 2,
        PrintName = "fcg.slam",
        Override_ManualAction = true,
        Mult_AccuracyMOA = 0.8,
        Mult_HipDispersion = 0.8,
    },
    {
        Mode = 1,
        PrintName = "ur.spas12.dbl",
        Override_ManualAction = true,
        Mult_AccuracyMOA = 1.15,
        Mult_HipDispersion = 0.8,

        Mult_Num = 2,
        Override_AmmoPerShot = 2,
        Mult_Damage = 2,
        Mult_DamageMin = 2,
        Mult_Recoil = 1.5,
        CustomBars = "--___",
        Mult_CycleTime = 1.13
    },
    {
        Mode = 0,
    },
}
att.Override_Firemodes_Priority = 1

att.Hook_GetShootSound = function(wep,sound)
    if wep:GetCurrentFiremode().Override_AmmoPerShot == 2 then
        return "arccw_uc/common/gl_fire_buck.ogg"
    end
end
att.Hook_GetDistantShootSound = function(wep,sound)
    if wep:GetCurrentFiremode().Override_AmmoPerShot == 2 then
        --return "arccw_uc/common/gl_fire_buck_dist.ogg"
    end
end
-- Overwritten by weapon's hook
--[[]
att.Hook_SelectFireAnimation = function(wep,curanim)
    if wep:GetCurrentFiremode().Override_AmmoPerShot == 2 then
        return "fire_2bst"
    end
end
]]

att.Mult_CycleTime = 1.15
att.Override_ActivePos = Vector(1.90, -1.50, -0.40) --Vector(1, -3, 0)
att.Override_ActivePos_Priority = 10
