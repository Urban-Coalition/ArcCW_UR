att.PrintName = "6.75\" Desert Eagle Annihilator Barrel"
att.AbbrevName = "6.75\" Annihilator Barrel"
if !GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "6.75\" Predator Annihilator Barrel"
end
att.Icon = nil --todo
att.Description = "Heavily modified barrel with gilded parts and an oversized integral muzzle brake. Effects are exacerbated, but the reduced barrel material does improve handling slightly."
att.Slot = "ur_deagle_barrel"
att.AutoStats = true
att.Desc_Cons = {
    "ur.compen"
}
att.SortOrder = 6

att.Mult_Recoil = 0.8
att.Mult_RecoilSide = 0.6
att.Mult_VisualRecoilMult = 2.5
att.Mult_ShootVol = 1.2
att.Mult_Range = 0.8
att.Mult_ShootPitch = 0.95
att.Mult_SightedSpeedMult = .875
att.Mult_AccuracyMOA = 1.15

att.ActivateElements = {"ur_deagle_barrel_annihilator"}