att.PrintName = "MP5A5 Burst-Fire Receiver"
att.AbbrevName = "Burst-Fire Receiver"

if !GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "K7-4 Burst-Fire Receiver"
end

att.SortOrder = 201
att.Icon = Material("entities/att/acwatt_ur_mp5_caliber.png", "smooth mips")
att.Description = "Four-position receiver that adds a three-round burst fire mode."
att.Desc_Pros = {
    "Burst fire mode"
}
att.Desc_Cons = {
}
att.Desc_Neutrals = {
}
att.Slot = "ur_mp5_caliber"

att.AutoStats = true

att.Override_Firemodes_Priority = 0.5
att.Override_Firemodes = {
    {
        Mode = 2,
    },
    {
        Mode = -3,
    },
    {
        Mode = 1,
    },
    {
        Mode = 0
    }
}

att.Ignore = true