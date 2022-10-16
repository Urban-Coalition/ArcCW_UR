att.PrintName = "MP5 Surefire Handguard"
att.AbbrevName = "Surefire Handguard"

att.Icon = Material("entities/att/ur_mp5/hg_flash.png", "smooth mips")
att.Description = "Alternative handguard with an integrated flashlight."
att.Desc_Pros = {
    "uc.light"
}
att.Desc_Cons = {
    "con.light"
}
att.AutoStats = true

att.Slot = {"ur_mp5_hg","ur_g3_handguard"}
att.SortOrder = 998

att.Model = "models/weapons/arccw/atts/ud_flashlight_1.mdl"
att.ModelOffset = Vector(0,0,.1)
att.OffsetAng = Angle(0,0,180)
att.ModelScale = Vector(.01,.01,.01) -- THIS IS TEMPORARY UNTIL THE MODEL GETS THE BONE WE NEED, DO NOT RELEASE WITH A TINY FLASHLIGHT INSIDE THE MODEL

att.Flashlight = false
att.FlashlightFOV = 50
att.FlashlightFarZ = 1024 -- how far it goes
att.FlashlightNearZ = 1 -- how far away it starts
att.FlashlightAttenuationType = ArcCW.FLASH_ATT_LINEAR -- LINEAR, CONSTANT, QUADRATIC are available
att.FlashlightColor = Color(255, 242, 229)
att.FlashlightTexture = "effects/flashlight001"
att.FlashlightBrightness = 3
att.FlashlightBone = "light"

att.ToggleStats = {
    {
        PrintName = "On",
        Flashlight = true
    },
    {
        PrintName = "Off",
        Flashlight = false,
    }
}

att.GivesFlags = {"hg_surefire","mp5_badhg"} -- badhg flag is temporary until underbarrel rail model is implemented (it disables use of underbarrel atts)
att.ExcludeFlags = {"barrel_sd","mp5_kurz","g3_not8"}
att.HideIfBlocked = true