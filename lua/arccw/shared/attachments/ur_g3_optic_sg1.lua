att.PrintName = "Zeiss Diavari DA 1.5-6x36 scope"
att.AbbrevName = "G3SG/1 optic(1.5-6x)"
att.Icon = Material("entities/att/pso1.png", "mips smooth")
att.Description = "owo Vintage CARL ZEISS DIAVARI - 1.5 - 6 X 36mm # 4 Reticle 30mm Tube Claw Mounts . Excellent VINTAGE CLASSIC Carl ZEISS MODEL  DIAVARI - D  1,5 - 6 X 36 RETICLE GERMAN # 4 Post WITH ELEVATION ADJUSTMENTS WORKS PERFECT! with 14mm 70° RAIL, TUBE 30mm VERY EASY TO MOUNT. FANTASTIC & STRONG SCOPE FOR ANY HUNT! PERFECT FOR RIFLE WITH LONG or MAGNUM ACTION. VERY HIGH LIGHT TRANSMISSION for THIS MODEL! BUILD FOREVER, EASY to SERVICE! THIS SCOPE HAS CLAW MOUNTS MADE IN WETZLAR GERMANY, VERY HIGH\nExclusive to the \"Warsaw Pact\" optic mount, and is slightly more agile than rail mounted optics."

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
att.ModelOffset = Vector(-5.7, 0, 1.18)

att.AdditionalSights = {
    {
        Pos = Vector(0.01, 10.5, -1.18),
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

att.HolosightPiece = "models/weapons/arccw/g3_optic_sg1_hsp.mdl"
-- att.HolosightNoFlare = true
-- att.HolosightSize = 1
-- att.HolosightBone = "holosight"
att.Colorable = true

att.Mult_SightedSpeedMult = .8
-- att.ExcludeFlags = {"ak_norail","cover_rail"}
