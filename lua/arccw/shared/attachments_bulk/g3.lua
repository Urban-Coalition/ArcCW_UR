--Im moving these into their own attachment files - Cylo
local makeg3 = {
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