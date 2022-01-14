local presetData = {
    ["arccw_ur_ak"] = {
        ["AKM"] = 
            "\n"
            .."\n"
            .."ur_ak_muzzle_akm\n"
            .."\n"
            .."\n"
            .."\n"
            .."\n"
            .."ur_ak_grip_akm\n"
            .."ur_ak_stock_akn\n"
            .."ur_ak_cover_ribbed",
        ["AK-74"] = 
            "\n"
            .."\n"
            .."ur_ak_muzzle_ak74\n"
            .."ur_ak_cal_545\n"
            .."\n"
            .."\n"
            .."\n"
            .."ur_ak_grip_akm\n"
            .."ur_ak_stock_akn\n"
            .."ur_ak_cover_ribbed",
        ["AKS-74U"] = 
            "\n"
            .."ur_ak_barrel_krinkov\n"
            .."\n"
            .."ur_ak_cal_545\n"
            .."\n"
            .."\n"
            .."\n"
            .."ur_ak_grip_akm\n"
            .."ur_ak_stock_aks\n"
            .."ur_ak_cover_ribbed",
        ["PP-19"] = 
            "\n"
            .."ur_ak_barrel_vityaz\n"
            .."\n"
            .."ur_ak_cal_9mm\n"
            .."\n"
            .."\n"
            .."\n"
            .."ur_ak_grip_alpha\n"
            .."ur_ak_stock_aks\n"
            .."ur_ak_cover_alpha\n",
        ["RPKM"] = 
            "\n"
            .."ur_ak_barrel_rpk\n"
            .."\n"
            .."\n"
            .."ur_ak_mag_762_75,1,-1\n"
            .."\n"
            .."\n"
            .."ur_ak_grip_akm\n"
            .."ur_ak_stock_rpk\n"
            .."ur_ak_cover_ribbed",
        ["VEPR .366"] = 
            "\n"
            .."ur_ak_barrel_vepr\n"
            .."\n"
            .."ur_ak_cal_366\n"
            .."\n"
            .."\n"
            .."\n"
            .."\n"
            .."ur_ak_stock_vepr",
    },
} -- The things I have to go through for readability :defeat:


for wep,data in pairs(presetData) do
    local filePath = "arccw_presets/"..wep

    if !file.Exists(filePath,"DATA") then -- This will only do anything if the weapon's preset folder doesn't already exist
        print("Urban Renewal: Writing default presets for "..wep)
        file.CreateDir("arccw_presets/"..wep)

        for name,atts in pairs(data) do
            file.Write(filePath.."/"..name..".txt",atts)
        end
    end
end

-- TODO: Make preset generation prompted instead of automatic