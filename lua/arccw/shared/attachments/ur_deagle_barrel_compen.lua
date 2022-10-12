att.PrintName = "6\" Desert Eagle Compensated Barrel"
att.AbbrevName = "6\" Compensated Barrel"
if !GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "6\" Predator Compensated Barrel"
end
att.Icon = Material("entities/att/acwatt_ur_deagle_barrel_compensated.png","smooth mips")
att.Description = "Barrel with an integral muzzle brake. Redirects propellant gases to stabilize the weapon's heavy recoil, but the reduced volume of gas directed to the bolt mechanism results in a lower cyclic rate.\nBecause gas is vented out of the sides of the barrel, external muzzle accessories cannot operate correctly."
att.Slot = "ur_deagle_barrel"
att.AutoStats = true
att.Desc_Cons = {
    --"uc.nomuzzle"
}
att.SortOrder = 6

att.Mult_Recoil = 0.85
att.Mult_RecoilSide = 0.75
--att.Mult_VisualRecoilMult = 1.5
att.Mult_ShootVol = 1.1
att.Mult_Range = 0.95
att.Mult_ShootPitch = 0.95
--att.Mult_SightedSpeedMult = .9
att.Mult_RPM = .9

--att.ActivateElements = {"ur_deagle_barrel_compen", "tac_rail"}
att.GivesFlags = {"barrel_annihilator"}