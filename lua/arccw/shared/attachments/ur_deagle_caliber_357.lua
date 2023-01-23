att.PrintName = "Desert Eagle .357 Magnum Conversion"
att.AbbrevName = ".357 Magnum"
att.Icon = Material("entities/att/uc_bullets/357magnum.png","smooth mips")
att.Description = "A more practical caliber with higher capacity magazines and actually manageable recoil, but not as much raw power."

if !GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "Predator .357 Magnum Conversion"
end

local path = ")^weapons/arccw_ur/sw586/"
local fire357 = {path .. "fire-01.ogg", path .. "fire-02.ogg", path .. "fire-03.ogg", path .. "fire-04.ogg", path .. "fire-05.ogg", path .. "fire-06.ogg"}

att.Hook_GetShootSound = function(wep, sound)
    if wep:GetBuff_Override("Silencer") then
        return fire357sup
    else
        return fire357
    end
end

local tail = ")/arccw_uc/common/357mag/"
local fire357dist = {tail .. "fire-dist-357mag-pistol-ext-01.ogg", tail .. "fire-dist-357mag-pistol-ext-02.ogg", tail .. "fire-dist-357mag-pistol-ext-03.ogg", tail .. "fire-dist-357mag-pistol-ext-04.ogg", tail .. "fire-dist-357mag-pistol-ext-05.ogg", tail .. "fire-dist-357mag-pistol-ext-06.ogg"}
local common = ")/arccw_uc/common/"

att.Hook_GetDistantShootSoundOutdoors = function(wep, distancesound)
    if wep:GetBuff_Override("Silencer") then
        -- fallback to script
    else
        return fire357dist
    end
end


att.AutoStats = true
att.Slot = "ur_deagle_caliber"

att.Mult_ClipSize = 1.3
att.Mult_Recoil = 0.7
att.Mult_Damage = 60 / 80
att.Mult_DamageMin = 20 / 12

att.Mult_ShootSpeedMult = 1.2
att.Mult_RPM = 1 + (1/3)

att.Override_Trivia_Calibre = att.AbbrevName -- E F F I C I E N C Y
att.Override_ShellModel = "models/weapons/arccw/uc_shells/357sig.mdl"
att.Override_ShellScale = 1