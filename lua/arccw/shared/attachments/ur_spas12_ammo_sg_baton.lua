att.PrintName = "\"BATON\" Flexible Baton"

att.SortOrder = -1
att.Icon = Material("entities/att/arccw_uc_ammo_shotgun_generic.png", "mips smooth")
att.Description = [[Less-lethal law enforcement round that fires a cushioned, low-velocity "bean bag" filled with lead pellets.
Designed to apprehend targets through pain instead of killing them, though the 40-gram projectile can still inflict deadly or permanent injuries.

Only compatible with manual action shotguns due to a weak pressure curve.]]
att.Desc_Pros = {
    "Targets may drop their weapon",
}
att.Desc_Cons = {
    "uc.alwaysphys",
    "ur.spas12.pump",
}
att.Desc_Neutrals = {
    "uc.oneprojectile"
}
att.Slot = {"ur_ammo_spas12"}

att.AutoStats = true

att.Override_Num = 1
att.Override_Num_Priority = 2
att.Mult_Recoil = .5

local path = ")^arccw_uc/common/"

att.Hook_PhysBulletHit = function(wep,data)
    if CLIENT then return end
    local tr = data.tr
    local bullet = data.bullet

    if tr.Entity and (tr.Entity:IsPlayer() or tr.Entity:IsNPC()) and tr.Entity:GetActiveWeapon() then
        local delta = bullet.Travelled / (bullet.Range / ArcCW.HUToM)
        delta = math.Clamp(delta, 0, 1)
        local dmg = Lerp(delta, bullet.DamageMax, bullet.DamageMin) -- one day I will understand this math
        local chance = math.random() * bullet.DamageMax
        -- if tr.HitGroup == HITGROUP_LEFTARM or tr.HitGroup == HITGROUP_RIGHTARM then
        --     chance = chance * 2
        -- end

        if chance <= dmg * .75 then -- Chance for a weapon drop increases the closer the shooter is to the target, but is never guaranteed
            tr.Entity:DropWeapon()
            if tr.Entity:IsPlayer() then
                tr.Entity:ScreenFade(1,Color(128,0,0,64),.5,0)
                tr.Entity:ViewPunch(Angle(3,0,0))
            end
        end
    end
end

att.Hook_GetShootSound = function(wep, fsound)
    if fsound == wep.ShootSound or fsound == wep.FirstShootSound then return {path .. "shotgun-lesslethal-01.ogg", path .. "shotgun-lesslethal-02.ogg"} end
    --if fsound == wep.ShootSoundSilenced then return path .. "shotgun-lesslethal_sup.ogg" end
end

att.Hook_GetDistantShootSound = function(wep, distancesound)
    if distancesound == wep.DistantShootSound or distantsound == wep.DistantShootSoundSilenced then return false 
    end
end

att.Mult_Damage = .2
att.Mult_DamageMin = .2
att.Mult_Penetration = 0
att.Mult_Range = .33
att.Mult_RangeMin = .33

att.Override_AlwaysPhysBullet = true
--att.Override_PhysBulletMuzzleVelocity = 80

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