att.PrintName = "Surefire Handguard"

att.Description = "Surefire handguard, custom-fitted for the HK51."
att.Desc_Cons = {
    "uc.noubs"
}
att.AutoStats = true

att.Slot = "ur_g3_handguard"

att.SortOrder = 3

att.HideIfBlocked = true

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

att.GivesFlags = {"g3_noub"}
att.RequireFlags = {"g3_hk51hg"}

att.Ignore = true