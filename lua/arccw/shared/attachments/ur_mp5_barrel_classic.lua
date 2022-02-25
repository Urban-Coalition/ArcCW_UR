att.PrintName = "9\" Slim Barrel"

att.Icon = Material("entities/att/acwatt_ur_mp5_barrel_classic.png", "smooth mips")
att.Description = "Early rounded handguard, lighter than the current iteration but more difficult to brace."
att.Desc_Neutrals = {
    "Cannot be used with Underbarrel or Tactical attachments"
}
att.AutoStats = true

att.Slot = "ur_mp5_barrel"

att.SortOrder = 9

att.Mult_Sway = .75
att.Mult_SightTime = .95
att.Mult_Recoil = 1.15

att.ExcludeFlags = {"mp5_rail"}