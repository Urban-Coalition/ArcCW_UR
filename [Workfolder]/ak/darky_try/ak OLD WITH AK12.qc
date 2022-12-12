$modelname "weapons\arccw\c_ur_ak.mdl"
 
$bodygroup "base" {
	studio "receiver_main.smd"
	
	studio "ak12 reciever.smd"
} 

$bodygroup "handguards" {
	studio "ak47_handguard.smd"
	studio "akm_handguard.smd"
	studio "romaniandong.smd"
	studio "ak74m_handguard_new.smd"
	studio "series_100_handguard.smd"
	studio "rpk74m_handguard.smd"
	studio "aku_handguard-barrel-trunnion.smd"
	studio "alpha_handguard.smd"
	studio "pp19_handguard-barrel.smd"
	studio "vepr_sok_handguard.smd"
	studio "ak74m_handguard_red.smd"
	studio "ak74m_handguard_od.smd"

	studio "ak12 handguard.smd"
	studio "railed handguard.smd"
}

$bodygroup "magazine" {
	studio "762_30.smd"
	studio "762_75.smd"
	studio "545_30.smd"
	studio "545_45.smd"
	studio "9x19mm.smd"
	studio "12g_20.smd"
	studio "366tkm.smd"

	studio "ak12 mag.smd"
	studio "ak308mag.smd"
	studio "545b_30.smd"

	studio "556_30.smd"
	studio "762_30_bakelite.smd"
	studio "762_30_magpul.smd"
}

$bodygroup "stock_adapt" {
	blank
	studio "stock_adapter.smd"
}

$bodygroup "sights" {
	studio "default_ak_sight_trunnion.smd"
	studio "aku_sights.smd"
	blank

	studio "ak12 sight.smd"
	studio "ak_trunnion_rail.smd"
}

$bodygroup "barrel_internal" {
	studio "default_ak_barrels.smd"
	blank
}

$bodygroup "stocks" {
	studio "type3_stock.smd"
	studio "underfolder_folded.smd"
	studio "underfolder_unfolded.smd"
	studio "aks_stock.smd"
	studio "alpha_stock.smd"
	studio "rpkm_stock.smd"
	studio "skeleton_stock.smd"
	studio "vepr_stock.smd"
	studio "akm_stock.smd"
	blank
	studio "aks_stock_folded.smd"

	studio "ak12 stock.smd"
	
	studio "74m_stock.smd"
	studio "74m_stock_folded.smd"
}

$bodygroup "barrels" {
	studio "ak_barrel.smd"
	studio "rpk_barrel_bipod.smd"
	studio "series_100_sbr.smd"
	studio "type56_barrel.smd"
	studio "vepr_barrel.smd"
	blank

	studio "ak12 barrel.smd"

	studio "rpk_barrel_bipod_deployed.smd"
}

$bodygroup "muzzles" {
	studio "ak_barrel_ak_muzzle.smd"
	studio "ak_barrel_akm_brake.smd"
	blank
	studio "ak74_compensator.smd"
	studio "ak12 dtk.smd"
}

$bodygroup "pistol_grips" {
	studio "type_3_grip.smd"
	studio "akm_pistol_grip.smd"
	studio "alpha_grip.smd"
	studio "saiga_grip.smd"
	blank

	studio "ak12 grip.smd"
}

$bodygroup "dust_covers" {
	studio "smooth_dust_cover.smd"
	studio "alpha_dust_cover.smd"
	studio "ribbed_dust_cover.smd"
	blank

	studio "ak12 dust cover.smd"
}

$bodygroup "bayonets" {
	blank
	studio "akm_bayonet.smd"
	studio "type56_bayonet_folded.smd"
	studio "type56_bayonet_unfolded.smd"
}

$bodygroup "mount" {
	blank
	studio "mount.smd"
	studio "mount_laser.smd"
}


$cdmaterials "models\weapons\arccw\shared"
$cdmaterials "models\weapons\arccw\ur_ak"
$cdmaterials "models\weapons\arccw\ud_common"
$cdmaterials "models/UC/attachments/"
$cdmaterials "models\weapons\arccw\uc_shells\"

// $texturegroup "skinfamilies"
// {
// 	{ "deagle" "deagle_plastic" "annihilator_slide"}
// 	{ "deagle_black" "deagle_plastic" "annihilator_slide_black"}
// 	{ "deagle_gold" "deagle_plastic" "annihilator_slide_gold"}
// 	{ "deagle_chrome" "deagle_plastic" "annihilator_slide_chrome"}
// }


$attachment "1" "muzzle" 0 0 0 rotate 0 90 -90
$attachment "2" "shell" 0 0 0 rotate 0 90 -90
$attachment "5" "camera" 0 0 0 rotate -90 0 0
 
$surfaceprop "default"
 
$contents "solid"
 
$illumposition 0 0 0

$bbox 0 0 0 0 0 0
 
$cbox 0 0 0 0 0 0

$poseparameter "sights" 0 1 loop 0

$sequence "ref" {
	"anims\worldmodel_idle.smd" 
}

$sequence "idle"{
	"anims\vm_ak47_idle.smd" 
	fps 30
	"ACT_VM_IDLE" 1
	loop
	node "Ready"
}

$sequence "fire" {
	"anims\vm_ak47_fire.smd"
	"anims\vm_ak47_ads_fire.smd"
	fps 30
	"ACT_VM_PRIMARYATTACK" 1
 	blend "sights" 0 1
	fadein 0.03
	fadeout 0.03
	{ event 5001 0 "1" }
}


$sequence "draw" {
	"anims\vm_ak47_draw.smd"
	fps 30
	"ACT_VM_DRAW" 1
	snap
}

$sequence "holster" {
	"anims\vm_ak47_holster.smd"
	fps 30
	"ACT_VM_HOLSTER" 1
	snap
}

$sequence "ready" {
	"anims\vm_ak47_first_draw.smd"
	fps 30
	"ACT_VM_DRAW_1" 1
	snap
}


$sequence "sprint_start"{
	"anims\vm_add_sprint_start.smd" 
	fps 40
}

$sequence "sprint_idle"{
	"anims\vm_add_sprint.smd" 
	fps 30
}

$sequence "sprint_end"{
	"anims\vm_ak47_sprint_end.smd" 
	fps 40
}

$sequence "reload" {
	"anims\vm_ak47_reload_tactical.smd"
	"anims\vm_ak47_reload_tactical_ads.smd"
 	blend "sights" 0 1
	fps 30
	"ACT_VM_RELOAD" 1
	snap
}

$sequence "jamfix" {
	"anims\vm_ak47_jamfix.smd"
	fps 30
	snap
}

$sequence "bayonet" {
	"anims\vm_ak47_bayonet.smd"
	fps 30
	snap
}

$sequence "reload_empty" {
	"anims\vm_ak47_reload_empty.smd"
	"anims\vm_ak47_reload_empty_ads.smd"
 	blend "sights" 0 1
	fps 30
	"ACT_VM_RELOAD" 1
	snap
}

$sequence "reload_drum" {
	"anims\vm_ak47_reload_drum.smd"
	fps 30
	"ACT_VM_RELOAD_1" 1
	snap
}

$sequence "reload_drum_empty" {
	"anims\vm_ak47_reload_empty_drum.smd"
	fps 30
	"ACT_VM_RELOAD_1" 1
	snap
}

$sequence "reload_9mm" {
	"anims\vm_ak47_reload_tactical_9mm.smd"
	fps 30
	"ACT_VM_RELOAD_2" 1
	snap
}

$sequence "reload_9mm_empty" {
	"anims\vm_ak47_reload_empty_9mm.smd"
	fps 30
	"ACT_VM_RELOAD_2" 1
	snap
}

$sequence "reload_10rnd" {
	"anims\vm_ak47_reload_tactical_10rnd.smd"
	fps 30
	"ACT_VM_RELOAD_3" 1
	snap
}

$sequence "reload_10rnd_empty" {
	"anims\vm_ak47_reload_empty_10rnd.smd"
	fps 30
	"ACT_VM_RELOAD_3" 1
	snap
}


$sequence "reload_308" {
	"anims\vm_ak47_reload_tactical_308.smd"
	fps 30
	"ACT_VM_RELOAD_3" 1
	snap
}

$sequence "reload_308_empty" {
	"anims\vm_ak47_reload_empty_308.smd"
	fps 30
	"ACT_VM_RELOAD_3" 1
	snap
}

$sequence "bipod_deploy" {
	"anims\vm_ak47_bipod_deploy.smd"
	fps 30
	snap
}

$sequence "bipod_undeploy" {
	"anims\vm_ak47_bipod_undeploy.smd"
	fps 30
	snap
}

// $sequence "enter_inspect" {
// 	"anims\enter_inspect.smd"
// 	"ACT_VM_IDLE" 1
// 	snap
// 	fps 60
// }

// $sequence "idle_inspect" {
// 	"anims\idle_inspect.smd"
// 	"ACT_VM_IDLE" 1
// 	snap
// 	fps 60
// }

// $sequence "exit_inspect" {
// 	"anims\exit_inspect.smd"
// 	"anims\exit_inspect_iron.smd"
// 	blend "sights" 0 1
// 	"ACT_VM_IDLE" 1
// 	snap
// 	fps 60
// }

// $sequence "enter_inspect_empty" {
// 	"anims\enter_inspect_empty.smd"
// 	"ACT_VM_IDLE" 1
// 	snap
// 	fps 60
// }

// $sequence "idle_inspect_empty" {
// 	"anims\idle_inspect_empty.smd"
// 	"ACT_VM_IDLE" 1
// 	snap
// 	fps 60
// }

// $sequence "exit_inspect_empty" {
// 	"anims\exit_inspect_empty.smd"
// 	"anims\exit_inspect_empty_iron.smd"
// 	blend "sights" 0 1
// 	"ACT_VM_IDLE" 1
// 	snap
// 	fps 60
// }

$sequence "inspect_enter" {
	"anims\ak_inspect_enter"
	fps 37
	// snap
}
$sequence "inspect_loop" {
	"anims\ak_inspect_loop"
	fps 24
	// snap
}
$sequence "inspect_exit" {
	"anims\ak_inspect_exit"
	fps 37
	// snap
}


$bonemerge "ValveBiped.Bip01_Spine4"
$bonemerge "ValveBiped.Bip01_L_Clavicle"
$bonemerge "ValveBiped.Bip01_L_UpperArm"
$bonemerge "ValveBiped.Bip01_L_Forearm"
$bonemerge "ValveBiped.Bip01_L_Hand"
$bonemerge "ValveBiped.Bip01_L_Finger4"
$bonemerge "ValveBiped.Bip01_L_Finger41"
$bonemerge "ValveBiped.Bip01_L_Finger42"
$bonemerge "ValveBiped.Bip01_L_Finger3"
$bonemerge "ValveBiped.Bip01_L_Finger31"
$bonemerge "ValveBiped.Bip01_L_Finger32"
$bonemerge "ValveBiped.Bip01_L_Finger2"
$bonemerge "ValveBiped.Bip01_L_Finger21"
$bonemerge "ValveBiped.Bip01_L_Finger22"
$bonemerge "ValveBiped.Bip01_L_Finger1"
$bonemerge "ValveBiped.Bip01_L_Finger11"
$bonemerge "ValveBiped.Bip01_L_Finger12"
$bonemerge "ValveBiped.Bip01_L_Finger0"
$bonemerge "ValveBiped.Bip01_L_Finger01"
$bonemerge "ValveBiped.Bip01_L_Finger02"
$bonemerge "ValveBiped.Bip01_R_Clavicle"
$bonemerge "ValveBiped.Bip01_R_UpperArm"
$bonemerge "ValveBiped.Bip01_R_Forearm"
$bonemerge "ValveBiped.Bip01_R_Hand"
$bonemerge "ValveBiped.Bip01_R_Wrist"
$bonemerge "ValveBiped.Bip01_R_Finger4"
$bonemerge "ValveBiped.Bip01_R_Finger41"
$bonemerge "ValveBiped.Bip01_R_Finger42"
$bonemerge "ValveBiped.Bip01_R_Finger3"
$bonemerge "ValveBiped.Bip01_R_Finger31"
$bonemerge "ValveBiped.Bip01_R_Finger32"
$bonemerge "ValveBiped.Bip01_R_Finger2"
$bonemerge "ValveBiped.Bip01_R_Finger21"
$bonemerge "ValveBiped.Bip01_R_Finger22"
$bonemerge "ValveBiped.Bip01_R_Finger1"
$bonemerge "ValveBiped.Bip01_R_Finger11"
$bonemerge "ValveBiped.Bip01_R_Finger12"
$bonemerge "ValveBiped.Bip01_R_Finger0"
$bonemerge "ValveBiped.Bip01_R_Finger01"
$bonemerge "ValveBiped.Bip01_R_Finger02"

$collisionmodel "wmcol.smd"
{
	$mass 35
	$concave
}