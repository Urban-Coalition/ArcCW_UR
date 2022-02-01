att.PrintName = "Tactical Laser Position"
att.Icon = Material("entities/att/aksidemount.png", "smooth mips")
att.Description = "Give your AN/PEQ a reason to be thin."
att.Desc_Pros = {}
att.Desc_Cons = {}
att.Desc_Neutrals = {
    "ur.ak.tl.1",
    "ur.ak.tl.2"
}
att.Slot = "ur_ak_charm"

att.ActivateElements = {"optic_raillaser"}
att.AdditionalSights = {
    {
        Pos = Vector(0, 20, -6),
        Ang = Angle(0, 0, -25),
        GlobalPos = false,
        GlobalAng = true,
        Magnification = 1,
        ScrollFunc = ArcCW.SCROLL_NONE
    }
}

att.SortOrder = 998
-- att.TacLaserPos = true
att.RequireFlags = {"tac"}
att.GivesFlags = {"ak_norail"}