$modelname "weapons\arccw\c_ur_pm.mdl"
 
$bodygroup "1" {
	studio "pm_frame.smd" // pm 
	studio "pm_frame_modern.smd" // pmm
	studio "pm_frame_silent.smd" // pb
	studio "pm_frame_auto.smd" // aps
}
$bodygroup "2" {
	studio "pm_barrel.smd" // pm
	studio "pm_barrel_modern.smd" // pmm
	studio "pm_barrel_silent.smd" // pb
	studio "pm_barrel_auto.smd" // aps
} 
$bodygroup "3" {
	studio "pm_mag_8.smd" // pm
	studio "pm_mag_12.smd" // pmm
	studio "pm_mag_8_silent.smd" // pb
	studio "pm_mag_20_auto.smd" // aps
}
$bodygroup "4" {
	studio "pm_grip.smd" // pm
	studio "pm_grip_modern.smd" // pmm
	studio "pm_grip_silent.smd" // pb
	studio "pm_grip_auto.smd" // aps
}
$bodygroup "5" {
	blank
	studio "pm_pbsilencer.smd" // pb suppressor, can be removed
	studio "pm_barrel_autosilent.smd" // aps suppressor, dunno whether or not it should be its own att or a bg
}

$bodygroup "6" { 
	blank
	studio "mount tac.smd" 
}

$cdmaterials "models\weapons\arccw\shared"
$cdmaterials "models\weapons\arccw\ur_m1911"
$cdmaterials "models\weapons\arccw\ur_pm"
$cdmaterials "models\weapons\arccw\ud_common"


$attachment "1" "flashbone" 0 0 0 rotate 0 90 -90  
$attachment "2" "brassbone" 0 0 0 rotate 45 180 0
$attachment "3" "camera" 0 0 0 rotate -90 0 0
 
$surfaceprop "default"
 
$contents "solid"
 
$illumposition 0 0 0

$bbox 0 0 0 0 0 0
 
$cbox 0 0 0 0 0 0

$poseparameter "sights" 0 1 loop 0

$sequence "idle"{
	"anims\idle.smd" 
	fps 30
	"ACT_VM_IDLE" 1
 	blend "sights" 0 1
	loop
	snap
	node "Ready"
}

$sequence "idle_empty"{
	"anims\idle_empty.smd" 
	fps 30
	"ACT_VM_IDLE" 1
 	blend "sights" 0 1
	loop
	snap
	node "Ready"
}

$sequence "holster"{
	"anims\holster.smd" 
	fps 30
	"ACT_VM_IDLE" 1
 	blend "sights" 0 1
	node "Ready"
}

$sequence "holster_empty"{
	"anims\holster_empty.smd" 
	fps 30
	"ACT_VM_IDLE" 1
 	blend "sights" 0 1
	node "Ready"
}

$sequence "draw"{
	"anims\draw.smd" 
	fps 30
	"ACT_VM_IDLE" 1
 	blend "sights" 0 1
	node "Ready"
}

$sequence "draw_empty"{
	"anims\draw_empty.smd" 
	fps 30
	"ACT_VM_IDLE" 1
 	blend "sights" 0 1
	node "Ready"
}

$sequence "fire" {
	"anims\fire.smd"
	fps 30
	"ACT_VM_PRIMARYATTACK" 1
 	blend "sights" 0 1
	fadein 0.02
	fadeout 0.0
	{ event 5001 0 "1" }
}

$sequence "fire_empty" {
	"anims\fire_empty.smd"
	fps 30
	"ACT_VM_PRIMARYATTACK" 1
 	blend "sights" 0 1
	fadein 0.02
	fadeout 0.0
	{ event 5001 0 "1" }
}

$sequence "fire_stock" {
	"anims\fire_stock.smd"
	fps 30
	"ACT_VM_PRIMARYATTACK" 1
 	blend "sights" 0 1
	fadein 0.02
	fadeout 0.0
	{ event 5001 0 "1" }
}

$sequence "fire_empty_stock" {
	"anims\fire_empty_stock.smd"
	fps 30
	"ACT_VM_PRIMARYATTACK" 1
 	blend "sights" 0 1
	fadein 0.02
	fadeout 0.0
	{ event 5001 0 "1" }
}

// $sequence "ready" {
// 	"anims\ready.smd"
//  blend "sights" 0 1
// 	fps 60
// 	"ACT_VM_DRAW" 1
// 	snap
// }

$sequence "reload" {
	"anims\reload.smd"
	blend "sights" 0 1
	fps 30
	"ACT_VM_RELOAD" 1
}

$sequence "reload_empty" {
	"anims\reload_empty_old.smd"
	blend "sights" 0 1
	fps 30
	"ACT_VM_RELOAD" 1
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