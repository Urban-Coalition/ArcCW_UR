$modelname "weapons\arccw\c_ur_aw.mdl"
 
$bodygroup "base" {
	studio "main.smd"
}
$bodygroup "body" {  // index 1
	studio "l_awp.smd"  	// id 0
	studio "l_awm.smd"  	// id 1
	studio "l_at.smd"   	// id 2
	studio "l_atm.smd"  	// id 3
} 
$bodygroup "barrel" {  // index 2
	studio "b_def.smd"  		// id 0
	studio "b_long.smd"  		// id 1
	studio "b_short.smd"  		// id 2
	studio "b_silenced.smd"  	// id 3
}
$bodygroup "magazine" {  // index 3
	studio "m_308_5.smd"  	// id 0
	studio "m_308_10.smd"  	// id 1
	studio "m_338_5.smd"  	// id 2
	studio "m_338_10.smd"  	// id 3
}
$bodygroup "stock" {  // index 4
	studio "aw_stock.smd"  			// id 0
	studio "at_stock.smd"  			// id 1
	studio "ru_stock.smd"  			// id 2
	studio "ru_stock_rubber.smd"  	// id 3
	studio "non_fold_stock.smd"  	// id 4
	blank  							// id 5
}
$bodygroup "fold_stock_part" {  // index 5
	studio "fold_stock_part.smd"  		// id 0
	blank  								// id 1
}
$bodygroup "rail_bottom" {  // index 6
    blank  							// id 0
	studio "r_bottom.smd"  			// id 1
}
$bodygroup "rail_top" {  // index 7
    blank  						// id 0
	studio "r_top.smd"  		// id 1
}
$bodygroup "sights" {  // index 8
	studio "magpul_sights.smd"	  		// id 0
	studio "magpul_sights_flip.smd"  	// id 1
	studio "compact_sights.smd"  		// id 2
	studio "compact_sights_flip.smd"  	// id 3
    blank  								// id 4
}
$bodygroup "bullets" {  // index 9
	studio "bullet_308.smd"  	// id 0
	studio "bullet_338.smd"  	// id 1
}


$cdmaterials "models\weapons\arccw\ur_aw"
$cdmaterials "models\weapons\arccw\ud_common"
$cdmaterials "models\weapons\arccw\uc_shells"


$texturegroup "skinfamilies" {
	{ "ur_aw_stock" }  			// green skin  id 0 
	{ "ur_aw_stock_black" }  	// black skin  id 1
	{ "ur_aw_stock_tan" }  		// tan skin    id 2
	{ "ur_aw_stock_custom" }  		// custom skin    id 3
}


$attachment "1" "muzzle" 0 0 0 rotate 0 -90 0
$attachment "2" "tag_weapon" 0.00 -5.50 1.70 rotate 0 -180 -0
$attachment "5" "camera" 0 0 0 rotate -90 0 0
 
// $surfaceprop "default"
 
// $contents "solid"
 
$illumposition 0 0 0

// $bbox 0 0 0 0 0 0
 
$cbox 0 0 0 0 0 0

$poseparameter "sights" 0 1 loop 0


$sequence "idle" "talonAnims/idle.smd" {
	fps 30
	loop
	snap
	"ACT_VM_IDLE" 1
	node "Ready"
}

$sequence "idle_empty" "talonAnims/idle_empty.smd" {
	fps 30
	loop
	snap
	"ACT_VM_IDLE_EMPTY" 1
	node "Ready"
}

$sequence "draw" "talonAnims/draw.smd" {
	fps 30
	snap
	"ACT_VM_DRAW" 1
}

$sequence "holster" "talonAnims/holster.smd" {
	fps 30
	snap
	"ACT_VM_HOLSTER" 1
}

$sequence "draw_empty" "talonAnims/draw_empty.smd" {
	fps 30
	snap
	"ACT_VM_DRAW_EMPTY" 1
}

$sequence "holster_empty" "talonAnims/holster_empty.smd" {
	fps 30
	snap
	"ACT_VM_HOLSTER_EMPTY" 1
}

$sequence "fire" {
	"talonAnims/fire.smd"
	"talonAnims/idle.smd"
	blend "sights" 0 1
	fps 30
	"ACT_VM_PRIMARYATTACK" 1
	fadein 0.03
	fadeout 0.5
	{ event 5001 0 "1" }
}

$sequence "cycle" {
	"talonAnims/cycle.smd"
	"talonAnims/cycle_irons.smd"
	blend "sights" 0 1
	fps 30
	"ACT_VM_IDLE" 1
	fadein 0.3
	fadeout 0
}



$sequence "reload" "talonAnims/reload.smd" {
	fps 30
	"ACT_VM_RELOAD" 1
	snap
}
$sequence "reload_empty" "talonAnims/reload_empty.smd" {
	fps 30
	"ACT_VM_RELOAD" 1
	snap
}


$sequence "reload_magnum" "talonAnims/reload_magnum.smd" {
	fps 30
	"ACT_VM_RELOAD" 1
	snap
}
$sequence "reload_empty_magnum" "talonAnims/reload_empty_magnum.smd" {
	fps 30
	"ACT_VM_RELOAD" 1
	snap
}



$sequence "reload_exte" "talonAnims/reload_ext.smd" {
	fps 30
	"ACT_VM_RELOAD" 1
	snap
}
$sequence "reload_empty_exte" "talonAnims/reload_empty_ext.smd" {
	fps 30
	"ACT_VM_RELOAD" 1
	snap
}





$sequence "reload_exte_magnum" "talonAnims/reload_magnum_ext.smd" {
	fps 30
	"ACT_VM_RELOAD" 1
	snap
}

$sequence "reload_empty_exte_magnum" "talonAnims/reload_empty_magnum_ext.smd" {
	fps 30
	"ACT_VM_RELOAD" 1
	snap
}


$sequence "inspect_enter" {
	"talonAnims\inspect_enter.smd"
	fps 30
	// snap
}
$sequence "inspect_loop" {
	"talonAnims\inspect_idle.smd"
	fps 30
	// snap
}
$sequence "inspect_exit" {
	"talonAnims\inspect_end.smd"
	fps 30
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
	$mass 45
	$concave
}