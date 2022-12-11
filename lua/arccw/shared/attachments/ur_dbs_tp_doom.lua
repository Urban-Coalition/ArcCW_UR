att.PrintName = "The Slayer"
att.Icon = Material("entities/att/acwatt_ur_dbs_tp_doom.png", "smooth mips")
att.Description = "They are rage, brutal, without mercy. But you. You will be worse."
att.Desc_Pros = {
}
att.Desc_Cons = {
}
att.Desc_Neutrals = {
    "uc.cosmetic"
}
att.Slot = "uc_db_tp"

att.AutoStats = true
att.SortOrder = 999

att.LHIK = true
att.LHIKHide = false

att.Override_ActivePos = Vector(-1.5, 0, 1.2)
att.Override_ActivePos_Priority = 10
att.Override_ActiveAng = Angle(0, -0.5, 3)
att.Override_ActiveAng_Priority = 10

att.Free = true
att.IgnorePickX = true

att.RequireFlags = {"sawnoff", "ur_dbs_stock_sawedoff", "uc_tp_gong"}
att.HideIfBlocked = true