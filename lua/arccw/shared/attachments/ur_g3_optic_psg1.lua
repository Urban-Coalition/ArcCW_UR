att.PrintName = "Hensoldt ZF 6x42 PSG1"
att.AbbrevName = "PSG-1 Optic (6x)"
att.Icon = Material("entities/att/acwatt_ur_g3_optic_psg1.png", "mips smooth")
att.Description = "Long range combat scope for extreme distance combat.\nExclusive to the G3 pattern."

att.SortOrder = 300

att.Desc_Pros = {
    "autostat.holosight",
    "autostat.zoom",
}
att.Desc_Cons = {
}
att.AutoStats = true
att.Slot = {"ur_g3_optic"}

att.Model = "models/weapons/arccw/atts/g3_optic_psg.mdl"
att.ModelOffset = Vector(0.55, 0, -1.7)

att.AdditionalSights = {
    {
        Pos = Vector(0.01, 14, -1.12),
        Ang = Angle(0, 0, 0),
        Magnification = 1.25,
        HolosightData = {
            Holosight = true,
            HolosightReticle = Material("hud/scopes/PSG1_reticle.png", "mips smooth"),
            HolosightNoFlare = true,
            HolosightSize = 9.5,
            HolosightPiece = "models/weapons/arccw/atts/g3_optic_psg_hsp.mdl",
            HolosightBlackbox = true,
            HolosightMagnification = 6,
            Colorable = true,
        },
    }
}

-- att.Holosight = true
-- att.HolosightReticle = Material("mifl_tarkov_reticle/dot.png", "mips smooth")

att.HolosightPiece = "models/weapons/arccw/atts/g3_optic_psg_hsp.mdl"
-- att.HolosightNoFlare = true
-- att.HolosightSize = 1
-- att.HolosightBone = "holosight"
att.Colorable = true

att.Mult_SightedSpeedMult = .8
-- att.ExcludeFlags = {"ak_norail","cover_rail"}
