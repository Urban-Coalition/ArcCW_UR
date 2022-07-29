att.PrintName = "Folded Stock"
att.Icon = Material("entities/att/acwatt_ud_m1014_stock_in.png", "smooth mips")
att.Description = [[Folding the stock makes the weapon significantly shorter, allowing for easier use around corners and making it easier on the move at the cost of less stability.

Contrary to some depictions, the stock obstructs iron sights when folded.]]
att.Desc_Pros = {
}
att.Desc_Cons = {
    "ur.spas12.folded",
}
att.Desc_Neutrals = {
}
att.Slot = "ur_spas12_stock"
att.AttachSound = "arccw_uc/common/stockslide.ogg"

att.AutoStats = true
att.Free = true
att.IgnorePickX = true

att.Mult_Recoil = 1.2
att.Mult_RecoilSide = 1.5

att.Mult_SightedSpeedMult = 1.1
att.Mult_ShootSpeedMult = 1.1
att.Mult_SightTime = 0.5

att.Mult_Sway = 2
att.Add_BarrelLength = -12

att.Override_IronSightStruct = {
    Pos = Vector(-1, -6.5, 0),
     Ang = Angle(1, 0, -5),
     Magnification = 1.075,
     SwitchToSound = "",
     CrosshairInSights = true,
}

att.Hook_TranslateAnimation = function(wep,anim)
    if string.StartWith(anim,"sgreload") then
        return anim .. "_fold"
    end
end

att.Override_ActivePos = Vector(-1, 0, -1)
att.Override_HoldtypeActive = "shotgun"
att.Override_HoldtypeSights = "ar2"

att.A_Hook_Add_SightsDispersion = function(wep, data)
    if data and !wep.Attachments[1].Installed then
        data.add = data.add + 75
    end
end

att.GivesFlags = {"spas12_foldstock"}