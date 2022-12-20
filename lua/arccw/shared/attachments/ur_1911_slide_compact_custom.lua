att.PrintName = "Colt Officer's Model 3.5\" Slide w/ Custom Finish"
att.AbbrevName = "3.5\" Officer Slide (Custom)"
att.Icon = Material("entities/att/ur_1911/slide_compact.png","mips smooth")
att.Description = "A shortened slide reduces the amount of holster to clear and further improves agility to the detriment of long-range performance and recoil control.\n\nThis variant will use your configured custom color for that extra flair."

att.Desc_Neutrals = {
    "uc.custcolor",
}
att.AutoStats = true
att.Slot = "ur_m1911_slide"
att.SortOrder = 3.5 - 0.01

att.Mult_DrawTime = 0.85
att.Mult_HolsterTime = 0.85
att.Add_BarrelLength = -1

att.Mult_Sway = 0.75
att.Mult_HipDispersion = 0.85
att.Mult_SightTime = 0.85

att.Mult_AccuracyMOA = 1.5
att.Mult_Range = 0.8
att.Mult_Recoil = 1.2