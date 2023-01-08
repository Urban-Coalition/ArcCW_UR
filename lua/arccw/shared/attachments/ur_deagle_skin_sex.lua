att.PrintName = "The Ultimate"
att.AbbrevName = "The Ultimate"
if !GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "The Ultimate"
end
att.Icon = Material("entities/att/acwatt_ur_deagle_finish_sex.png","mips smooth")
att.Description = "Administrator powers not included."
att.Slot = "ur_deagle_skin"
att.Desc_Neutrals = {
    "uc.cosmetic"
}

--[[]
att.Hook_NameChange = function(wep, name) return "Sexyness" end

att.AdminOnly = true
att.SortOrder = 2
att.Mult_Damage = 100
att.Mult_RPM  = 100
att.Override_Num  = 10
att.Mult_Recoil  = 0.1
att.Mult_AccuracyMOA   = 0.001

att.Override_BottomlessClip = true
att.Override_Firemodes_Priority = 100
att.Override_Firemodes = {
    {
        PrintName = "SEX",
        Mode = 2,
    },
}
]]

att.IgnorePickX = true
att.ActivateElements = {"ur_deagle_skin_sex"}