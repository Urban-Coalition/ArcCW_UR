
$modelname "weapons/arccw/c_ur_mp5.mdl"
 
$bodygroup "1" {
	studio "stock_solid.smd"
	studio "stock_sliding_adapter.smd"
	studio "stock_cap.smd"
	studio "stock_tube.smd"
	studio "stock_wood.smd"
	studio "stock_pdw_ext.smd"
	studio "stock_pdw_in.smd"

	studio "stock_kurzcap.smd"
}

$bodygroup "2" {
	blank
	studio "stock_sliding_ext.smd"
	studio "stock_sliding_in.smd"
}

$bodygroup "3" {
	studio "mag.smd"
	studio "mag_ext.smd"
	studio "mag_waffle.smd"
	studio "mag_short.smd"
}

$bodygroup "4" {
	blank
	studio "rails.smd"
}

$bodygroup "5" {
	studio "barrel.smd"
	studio "barrel_sd.smd"
	studio "barrel_long.smd"
	studio "barrel_kurz.smd"
}

$bodygroup "6" {
	studio "handguard.smd"
	studio "handguard_tac.smd"
	studio "handguard_old.smd"
	blank
	studio "handguard_kurz.smd"
}

$bodygroup "7" {
	blank
	studio "rails_sd.smd"
}

$bodygroup "upper" {
	studio "receiver_upper_a4.smd"
	studio "receiver_upper_kurz.smd"
}

$bodygroup "lower" {
	studio "receiver_lower_a4.smd"
	studio "receiver_lower_a1.smd"
	studio "receiver_lower_semi.smd"
}

//  				ARC9
$cdmaterials "models\weapons\arccw\ur_mp5"
$cdmaterials "models\weapons\arccw\ur_mp5\bocw"
$cdmaterials "models\weapons\arccw\ud_m16"
$cdmaterials "models\weapons\arccw\ud_common"

$attachment "1" "barrel" 0 0 0 rotate -90 0 0
$attachment "2" "bolt" 0.00 -0.75 -1.00 rotate -10 140 180
$attachment "3" "camera" 0 0 0 rotate -90 0 0
$attachment "4" "barrel" 0 0 5 rotate -90 0 0

$surfaceprop "weapon"
 
$contents "solid"
 
$illumposition 0 0 0

$poseparameter "sights" 0 1 loop 0

// So the WM has only 1 visible mag

$sequence "ref" {
	"anims\ref.smd"
	fps 30
	"ACT_VM_IDLE" 1
	snap
}

$sequence "idle" {
	"anims\idle.smd"
	"anims\idle_iron.smd"
	blend "sights" 0 1
	fps 30
	"ACT_VM_IDLE" 1
	loop
	snap
	node "Ready"
}

$sequence "ready" {
	"anims\ready.smd"
	fps 30
	"ACT_VM_DRAW" 1
	snap
}

$sequence "draw" {
	"anims\draw.smd"
	fps 30
	"ACT_VM_DRAW" 1
	snap
}

$sequence "holster" {
	"anims\holster.smd"
	fps 30
	"ACT_VM_HOLSTER" 1
	snap
}

$sequence "fire" {
	"anims\fire.smd"
	"anims\fire_iron.smd"
	blend "sights" 0 1
	fps 30
	"ACT_VM_PRIMARYATTACK" 1
	fadein 0.03
	fadeout 0.03
}

$sequence "fix" "anims\fix.smd" {
	fps 30
	"ACT_VM_IDLE" 1
	snap
}

$sequence "reload" {
	"anims\reload.smd"
	"anims\reload_iron.smd"
	fps 30
	"ACT_VM_RELOAD" 1
	blend "sights" 0 1
	snap
}

$sequence "reload_empty" {
	"anims\reload_empty.smd"
	"anims\reload_empty_iron.smd"
	fps 30
	"ACT_VM_RELOAD" 1
	blend "sights" 0 1
	snap
}

$sequence "reload_10mm" {
	"anims\reload_10mm.smd"
	"anims\reload_iron.smd"
	fps 30
	"ACT_VM_RELOAD" 1
	blend "sights" 0 1
	snap
}

$sequence "reload_empty_10mm" {
	"anims\reload_empty_10mm.smd"
	"anims\reload_empty_iron.smd"
	fps 30
	"ACT_VM_RELOAD" 1
	blend "sights" 0 1
	snap
}

$sequence "reload_ext" {
	"anims\reload_ext.smd"
	"anims\reload_iron.smd"
	fps 30
	"ACT_VM_RELOAD" 1
	blend "sights" 0 1
	snap
}

$sequence "reload_empty_ext" {
	"anims\reload_empty.smd"
	"anims\reload_empty_iron.smd"
	fps 30
	"ACT_VM_RELOAD" 1
	blend "sights" 0 1
	snap
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

$collisionmodel "mp5_col.smd"
{
	$mass 35
	$concave
}