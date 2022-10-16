att.PrintName = "PK5-CIV Sporter Receiver"
att.AbbrevName = "Sporter Receiver"

if GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "SP5 Sporter Receiver"
end

att.Description = "A semi-automatic receiver sold in civilian markets. Designed for sport shooting, this receiver is more accurate and lightweight."

att.Icon = Material("entities/att/ur_mp5/grip.png", "smooth mips")
att.Desc_Pros = {
}
att.Desc_Cons = {
    "uc.semionly"
}
att.Desc_Neutrals = {
}
att.Slot = "ur_mp5_caliber"

att.AutoStats = true
att.SortOrder = -1

att.Mult_RPM = 600 / 900
att.Mult_Recoil = 0.8
att.Mult_AccuracyMOA = 0.75
att.Mult_Range = 1.15
att.Mult_MoveDispersion = 0.5

att.Mult_PhysBulletMuzzleVelocity = 1.15

att.Override_Firemodes_Priority = 0.5
att.Override_Firemodes = {
    {
        Mode = 1,
    },
    {
        Mode = 0
    }
}

att.ActivateElements = {"receiver_lower_semi"}