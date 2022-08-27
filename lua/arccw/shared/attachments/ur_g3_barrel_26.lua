att.PrintName = "PSG-1 26\" Sniper Barrel"
att.AbbrevName = "26\" Sniper Barrel"
att.Description = "Long barrel and handguard assembly for the PSG-1 sniper rifle. Reduces fire rate, but enhances ranged performance greatly.\nDesigned for long range usage, this barrel lacks iron sights."
att.Slot = "ur_g3_barrel"
att.Desc_Cons = {
    "uc.nofs",
}
att.AutoStats = true

att.SortOrder = 26

att.Mult_SightTime = 1.2
att.Add_BarrelLength = 6
att.Mult_SightedSpeedMult = 0.9
att.Mult_Sway = 1.5

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