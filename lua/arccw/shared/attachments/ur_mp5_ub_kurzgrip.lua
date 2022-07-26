att.PrintName = "VFG-K Handguard"

att.Icon = Material("entities/att/acwatt_ur_mp5_barrel_classic.png", "smooth mips")
att.Description = "The iconic handguard for the Kurz machine pistol variant, featuring a stubby foregrip and handstop that make the shortened SMG much more comfortable and controllable."
att.Desc_Cons = {
    "uc.noubs"
}
att.AutoStats = true

att.Slot = "ur_mp5_hg"

att.LHIK = true

att.ModelOffset = Vector(0, 0, -0)
att.Model = "models/weapons/arccw/atts/ur_kurzlhik.mdl" // stole this pose from the tall troy grip lol!!!
att.Override_HoldtypeActive = "smg"

att.SortOrder = 2

att.Mult_Sway = .75
att.Mult_SightTime = .95
att.Mult_Recoil = .85

att.ActivateElements = {"ur_mp5_ub_kurzgrip"}
att.GivesFlags = {"mp5_badhg"}
att.RequireFlags = {"mp5_kurz"}