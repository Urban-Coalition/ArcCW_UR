att.PrintName = "PSG-1 Receiver"

if !GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "PMR-2 Receiver"
end

att.Description = "Infamously expensive semi-automatic receiver. Comes with sublime long-range performance and a comfortable wooden grip that improves handling."
att.Icon = Material("entities/att/ur_g3/rec_psg.png","smooth mips")
att.Slot = "ur_g3_rec"
att.Desc_Cons = {
    "uc.semionly"
}
att.AutoStats = true

att.SortOrder = 13

att.Mult_RPM = 400 / 520
att.Mult_Recoil = 0.6
att.Mult_AccuracyMOA = 0.5
att.Mult_Range = 1.25
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

att.Override_Trivia_Class = "Sniper Rifle"