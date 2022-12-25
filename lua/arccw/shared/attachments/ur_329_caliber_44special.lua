att.PrintName = "Model 329PD .44 Special Chambering"
att.AbbrevName = ".44 Special"
att.Icon = Material("entities/att/uc_bullets/44special.png","smooth mips")
att.Description = "A shorter length cartridge with lower recoil but reduced stopping power."

if !GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "Enforcement .44 Special Chambering"
end

att.AutoStats = true
att.Slot = "ur_329_caliber"

att.Mult_RangeMin = 0.5
att.Mult_Range = 0.6
att.Mult_Recoil = 0.75
att.Override_PhysBulletMuzzleVelocity = 265

att.Override_Trivia_Calibre = ".44 Special"

local path = "weapons/arccw_ur/sw586/"

att.Hook_GetShootSound = function(wep, sound)
    if wep:GetBuff_Override("Silencer") then
        return -- how tf did you equip a suppressor with this
    else
        return {
            path .. "fire-01.ogg",
            path .. "fire-02.ogg",
            path .. "fire-03.ogg",
            path .. "fire-04.ogg",
            path .. "fire-05.ogg",
            path .. "fire-06.ogg",
        } -- Placeholder(?)
    end
end

att.Hook_GetDistantShootSoundOutdoors = function(wep, distancesound)
    if wep:GetBuff_Override("Silencer") then
        -- fallback to script
    else
        return {
            path .. "fire-dist-01.ogg",
            path .. "fire-dist-02.ogg",
            path .. "fire-dist-03.ogg",
            path .. "fire-dist-04.ogg",
            path .. "fire-dist-05.ogg",
            path .. "fire-dist-06.ogg",
        } -- Placeholder(?)
    end
end
