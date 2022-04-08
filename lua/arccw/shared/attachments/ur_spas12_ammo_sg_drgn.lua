att.PrintName = "\"DRGN\" Dragon's Breath"

att.SortOrder = -1
att.Icon = Material("entities/att/arccw_uc_ammo_shotgun_generic.png", "mips smooth")
att.Description = [[Novelty magnesium-based round that projects a spectacular jet of sparks and fire.
Burning at over 3,000 °F, the blast isn't immediately lethal, but can easily set objects and people ablaze.

Only compatible with manual action shotguns due to a weak pressure curve.]]
att.Desc_Pros = {
    "pro.ignite",
    "uc.pellet.24"
}
att.Desc_Cons = {
    "uc.dragon",
    "uc.alwaysphys",
    "ur.spas12.pump",
}
att.Desc_Neutrals = {
}
att.Slot = {"ur_ammo_spas12"}

att.AutoStats = true

--att.Override_DamageType = DMG_BURN
att.Add_Num = 24    

-- att.Hook_PostBulletHit = function(wep,data)
--     if SERVER and data.tr.Entity then
--         local delta = data.range / (wep.Range / ArcCW.HUToM)
--         delta = math.Clamp(delta, 0, 1)
--         local dur = Lerp(delta, 0, 6) -- one day I will understand this math

--         if dur > 0 then
--             data.tr.Entity:Extinguish() -- Entity:Ignite() doesn't work if it's already on fire, gotta prevent that DPS loss
--             print(dur)
--             data.tr.Entity:Ignite(dur)
--         end

--         local effect = EffectData()
--         effect:SetOrigin(data.tr.HitPos)
--         util.Effect("StunstickImpact",effect)
--     end
-- end

att.Hook_PhysBulletHit = function(wep,data)
    if SERVER and data.tr.Entity then
        local dur = 6 - (data.bullet.Travelled * 2 * ArcCW.HUToM) / wep.Range
        if dur > 0 then
            data.tr.Entity:Extinguish() -- Entity:Ignite() doesn't work if it's already on fire, gotta prevent that DPS loss
            data.tr.Entity:Ignite(dur)
        end
    end

    local effect = EffectData()
    effect:SetOrigin(data.tr.HitPos)
    util.Effect("StunstickImpact",effect)
    -- if data.tr.HitWorld and math.random(1,3) == 3 then
    --     util.Decal("FadingScorch",data.tr.HitPos - data.tr.HitNormal,data.tr.HitPos + data.tr.HitNormal) -- this is too spammy
    -- end
end

att.Mult_AccuracyMOA = 1.5
att.Mult_Damage = .5
att.Mult_DamageMin = .5
att.Mult_Penetration = .5
att.Mult_Range = .35

att.Override_AlwaysPhysBullet = true
att.Mult_PhysBulletGravity = 3

--att.Override_PhysTracerProfile = 1
att.Override_MuzzleEffect = "muzzleflash_dragonbreath"

att.Hook_AddShootSound = function(wep, data)
    wep:EmitSound("DB_ADD",data.volume,data.pitch,1,CHAN_WEAPON - 1) -- lua/arccw/shared/sh_0_uc.lua
end

att.Override_Firemodes = {
    {
        Mode = 1,
        PrintName = "fcg.pump",
        Override_ManualAction = true,
        Mult_AccuracyMOA = 0.8,
        Mult_HipDispersion = 0.8,
    },
    {
        Mode = 0,
    },
}
att.Override_Firemodes_Priority = 2