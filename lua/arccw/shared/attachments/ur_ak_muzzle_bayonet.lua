att.PrintName = "Type 2 Bayonet"
att.Icon = Material("entities/att/ur_ak/acwatt_ur_ak_muzzle_bayonet.png", "mips smooth")
att.Description = "External bayonet unique to early AK-pattern rifles. Wide and sharp, it's a bit bulky but allows for a devastating melee attack."
att.AutoStats = true
att.Slot = {"ur_ak_muzzle"}

att.SortOrder = 997

att.Add_MeleeRange = 16
att.Mult_MeleeDamage = 3.5
att.Mult_MeleeWaitTime = 2
att.Add_BarrelLength = 10
att.Mult_Sway = 1.4
att.Mult_SightTime = 1.1
att.Mult_MeleeTime = 1.1

att.Override_BashPreparePos = Vector(4, -5, -1.8)
att.Override_BashPrepareAng = Angle(-15, -5, -5)
att.Override_BashPos = Vector(-1, 12, 4.5) -- i'm too impatient to not make this bat you in the face with the stock
att.Override_BashAng = Angle(-7, 3, 25)

att.Hook_SelectBashAnim = function(wep,anim)
    return "bash_bayonet"
end

att.AttachSound = "arccw_uc/common/gunsmith/suppressor_thread.ogg"
att.ActivateElements = {"muzzle_bayonet"}
att.GivesFlags = {"ak_bayonet2"}
att.ExcludeFlags = {"ak_barrelchange","ak_bayonet1"}