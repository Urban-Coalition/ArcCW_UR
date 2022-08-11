att.PrintName = "Hensoldt ZF 6x42 PSG1"
att.AbbrevName = "PSG-1 Optic (6x)"
att.Icon = Material("entities/att/pso1.png", "mips smooth")
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

att.Model = "models/weapons/arccw/scope_nomodel.mdl"
att.ModelOffset = Vector(-6.35, 0, 1.12)

att.AdditionalSights = {
    {
        Pos = Vector(0.01, 11.5, -1.12),
        Ang = Angle(0, 0, 0),
        Magnification = 1.25,
        HolosightData = {
            Holosight = true,
            HolosightReticle = Material("hud/scopes/uc_pso.png", "mips smooth"),
            HolosightNoFlare = true,
            HolosightSize = 10.5,
            HolosightPiece = "models/weapons/arccw/atts/ur_pso1_hsp.mdl",
            HolosightBlackbox = true,
            HolosightMagnification = 6,
            Colorable = true,
        },
    }
}

-- att.Holosight = true
-- att.HolosightReticle = Material("mifl_tarkov_reticle/dot.png", "mips smooth")

att.HolosightPiece = "models/weapons/arccw/g3_optic_psg1_hsp.mdl"
-- att.HolosightNoFlare = true
-- att.HolosightSize = 1
-- att.HolosightBone = "holosight"
att.Colorable = true

att.Mult_SightedSpeedMult = .8
-- att.ExcludeFlags = {"ak_norail","cover_rail"}
