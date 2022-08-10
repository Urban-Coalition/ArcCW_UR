att.PrintName = "HK79 Underbarrel Grenade Launcher"
att.AbbrevName = "HK79 Grenade Launcher"
att.Icon = Material("entities/att/acwatt_uc_ubgl_hk79.png", "mips smooth")
att.Description = "Single-shot long-barreled underbarrel grenade launcher designed for the G3. The trigger is on the side, and the barrel release is on the bottom. Fires specialized 40x46mm grenade types."

att.SortOrder = -100000

att.AutoStats = true
att.Desc_Pros = {
    "uc.ubgl"
}
att.Slot = "uc_ubgl"
att.ExcludeFlags = {"uc_noubgl"}

att.LHIK = true

att.ModelOffset = Vector(3.2, 0, -1.5)
att.Model = "models/weapons/arccw/atts/uc_ubgl_hk79_3.mdl"

att.SelectUBGLSound =  ""
att.ExitUBGLSound = ""

att.UBGL = true

att.UBGL_PrintName = "UBGL"
att.UBGL_Automatic = false
att.UBGL_MuzzleEffect = "muzzleflash_m79"
att.UBGL_Ammo = "smg1_grenade"
att.UBGL_RPM = 600
att.UBGL_Recoil = 2
att.UBGL_Capacity = 1

att.LHIK_GunDriver = 2
att.LHIK_CamDriver = 3

att.Hook_ModifyAttBodygroups = function(wep, data)
    if wep:GetBuff_Override("UC_UseClassicHK79Mount") then
        data.element.Model:SetBodygroup(1, 1)
    end
end

local function Ammo(wep)
    return wep:GetOwner():GetAmmoCount("smg1_grenade")
end

att.Hook_LHIK_TranslateAnimation = function(wep, key)
    if key == "idle" then
        if wep:GetInUBGL() then
            return "idle_armed"
        else
            return "idle"
        end
    end
end

att.Hook_ShouldNotSight = function(wep)
    if wep:GetInUBGL() then
        return true
    end
end

att.Hook_OnSelectUBGL = function(wep)
    wep:SetNextSecondaryFire(CurTime() + 0.6)
    wep:DoLHIKAnimation("to_armed", 0.6)
    wep:PlaySoundTable({
        {s = "arccw_uc/common/rattle_b2i_rifle.ogg", t = 0},
        {s = "arccw_uc/common/raise.ogg", t = 0.2},
        {s = "arccw_uc/common/grab.ogg", t = 0.5},
    })
end

att.Hook_OnDeselectUBGL = function(wep)
    wep:SetNextSecondaryFire(CurTime() + 0.6)
    wep:DoLHIKAnimation("to_idle", 0.6)
    wep:PlaySoundTable({
        {s = "arccw_uc/common/rattle_b2i_rifle.ogg", t = 0},
        {s = "arccw_uc/common/shoulder.ogg", t = 0.4},
    })
end

att.UBGL_Fire = function(wep, ubgl)
    if wep:Clip2() <= 0 then return end

    local owner = wep:GetOwner()
    local class = wep:GetBuff_Override("UBGL_Entity")

    local vel, dmg = 5000, 130

    -- hacky
    if class == "arccw_uc_40mm_hv" then
        vel = vel * 1.75
        dmg = dmg * 0.85
    elseif class == "arccw_uc_40mm_dp" then
        dmg = dmg * 0.6
    elseif class == "arccw_uc_40mm_airburst" then
        vel = vel * 0.75
    end

    local proj = wep:FireRocket(class, vel)
    if SERVER then
        proj.Damage = dmg -- lower than the m79 (200) for balance reasons
    end
    wep:MyEmitSound(")^/arccw_uc/common/40mm/fire-0" .. math.random(1, 6) .. ".ogg", 100, 100, 1, CHAN_WEAPON)
    wep:MyEmitSound(")^/arccw_uc/common/40mm/fire-dist-0" .. math.random(1, 6) .. ".ogg", 149, 100, 0.5, CHAN_BODY)
    wep:MyEmitSound(")^/arccw_uc/common/40mm/mech-0" .. math.random(1, 6) .. ".ogg", 149, 100, 0.5, CHAN_AUTO)

    wep:DoLHIKAnimation("fire")
    wep:SetClip2(wep:Clip2() - 1)
    wep:DoEffects()
end

att.UBGL_Reload = function(wep, ubgl)
    if wep:Clip2() >= 1 then return end
    if Ammo(wep) <= 0 then return end

    wep:SetNextSecondaryFire(CurTime() + 3)

    wep:DoLHIKAnimation("reload", 3)
    wep:PlaySoundTable({
        {s = { "arccw_uc/common/rattle1.ogg", "arccw_uc/common/rattle2.ogg", "arccw_uc/common/rattle3.ogg" }, t = 0},
        {s = "arccw_uc/common/40mm/203open.ogg", t = 0.2},
        {s = "arccw_uc/common/magpouch_replace_small.ogg", t = 0.9},
        {s = "arccw_uc/common/40mm/203insert.ogg", t = 1.7},
        {s = "arccw_uc/common/shoulder.ogg", t = 2.0},
        {s = "arccw_uc/common/40mm/203close.ogg", t = 2.2},
        {s = "arccw_uc/common/shoulder.ogg", t = 2.7},
    })

    local reserve = Ammo(wep)
    reserve = reserve + wep:Clip2()
    local clip = 1
    local load = math.Clamp(clip, 0, reserve)
    wep:GetOwner():SetAmmo(reserve - load, "smg1_grenade")
    wep:SetClip2(load)
end

att.Mult_SightTime = 1.2
att.Mult_SpeedMult = 0.9
att.Mult_SightedSpeedMult = 0.85

att.ToggleLockDefault = true
att.ToggleStats = {
    {
        PrintName = "High Velocity",
        UBGL_Entity = "arccw_uc_40mm_hv"
    },
    {
        PrintName = "Dual Purpose",
        UBGL_Entity = "arccw_uc_40mm_dp"
    },
    {
        PrintName = "Airburst",
        UBGL_Entity = "arccw_uc_40mm_airburst"
    },
}