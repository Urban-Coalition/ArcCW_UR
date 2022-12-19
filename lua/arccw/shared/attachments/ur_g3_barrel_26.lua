att.PrintName = "PSG-1 26\" Sniper Barrel"
att.AbbrevName = "26\" Sniper Barrel"

if !GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "PMR-2 26\" Sniper Barrel"
end

att.Icon = Material("entities/att/ur_g3/barrel_psg.png","smooth mips")
att.Description = "Long barrel and handguard assembly for the sniper variant of the rifle. Reduces fire rate, but enhances ranged performance greatly.\nDesigned purely for long range usage, this barrel lacks a front sight post."
att.Slot = "ur_g3_barrel"
att.Desc_Cons = {
    "uc.nofs",
}
att.AutoStats = true

att.SortOrder = 26

att.Mult_SightTime = 1.2
att.Add_BarrelLength = 6
att.Mult_SightedSpeedMult = 0.85

att.Mult_Recoil = 0.75
att.Mult_AccuracyMOA = 0.5
att.Mult_RangeMin = 2
att.Mult_Range = 1.25
att.Mult_RPM = 360 / 400

att.A_Hook_Add_SightsDispersion = function(wep, data)
    if data and !wep.Attachments[1].Installed then
        data.add = data.add + 250
    end
end


att.GivesFlags = {"g3_nohg","g3_not8"}