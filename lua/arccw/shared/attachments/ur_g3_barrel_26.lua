att.PrintName = "26\" PSG-1 Barrel"
att.Description = "Long barrel for the PSG-1 sniper rifle. Drastically impoves accuracy at the cost of firerate. Also lacks an iron sight."
att.Slot = "ur_g3_barrel"
att.Desc_Cons = {
    "uc.nofs",
}
att.AutoStats = true

att.SortOrder = 26

att.Mult_SightTime = 1.2
att.Add_BarrelLength = 6
att.Mult_SightedSpeedMult = 0.9

att.Mult_Recoil = 0.8
att.Mult_AccuracyMOA = 0.7
att.Mult_Range = 1.5
att.Mult_RPM = 0.5

att.A_Hook_Add_SightsDispersion = function(wep, data)
    if data and !wep.Attachments[1].Installed then
        data.add = data.add + 250
    end
end


att.GivesFlags = {"g3_nohg"}