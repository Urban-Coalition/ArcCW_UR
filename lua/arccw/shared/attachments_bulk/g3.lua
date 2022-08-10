
local makeg3 = {
	-- Barrels
	["barrel_26"] = {
		PrintName = "PSG-1",
		Slot = "ur_g3_barrel",
	},
	["barrel_12"] = {
		PrintName = "G3KA4",
		Slot = "ur_g3_barrel",
	},
	["barrel_8"] = {
		PrintName = "HK51",
		Slot = "ur_g3_barrel",
	},
	-- Magazines
	["mag_10"] = {
		PrintName = "7.62mm 10-Round",
		Slot = "ur_g3_mag",
	},
	["mag_50"] = {
		PrintName = "Drum 50-Round",
		Slot = "ur_g3_mag",
	},
	-- Magazines
	["hg_slim"] = {
		PrintName = "G3 Slim Handguard",
		Slot = "ur_g3_handguard",
	},
	["hg_pica"] = {
		PrintName = "G3 Pica Handguard",
		Slot = "ur_g3_handguard",
	},
	["hg_51_mlok"] = {
		PrintName = "HK33 MLOK Handguard",
		Slot = "ur_g3_handguard",
	},
	["hg_51_flash"] = {
		PrintName = "HK33 Flashlight Handguard",
		Slot = "ur_g3_handguard",
	},
}

for index, data in pairs(makeg3) do

	local att = data

	att.Icon = nil
	att.Description = "autoloaded fast"
	att.Desc_Pros = {}
	att.Desc_Cons = {}
	att.AutoStats = true

	ArcCW.LoadAttachmentType( att, "ur_g3_" .. index )

end