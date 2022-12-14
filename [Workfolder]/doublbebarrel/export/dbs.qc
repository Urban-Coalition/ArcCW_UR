$modelname "weapons\arccw\c_ur_dbs.mdl"

// Bodygroups
$bodygroup "studio" {
	studio "body.smd"
}

$bodygroup "1" {
	studio "barrel long.smd"
	studio "barrel mid.smd"
	studio "barrel sw.smd"
	studio "barrel swplus.smd"
	studio "barrel compact.smd"
}

$bodygroup "2" {
	studio "stock.smd"
	studio "stock sw.smd"
}

$bodygroup "3" {
	studio "underbarrel.smd"
	studio "underbarrel swplus.smd"
}

$bodygroup "boolet" {
	studio "12ga.smd"
}


$cdmaterials "models\weapons\arccw\ur_dbs"
$cdmaterials "models\weapons\arccw\uc_shells\"

$attachment "1" "muzzle_long" 0 0 0 rotate 0 0 0
$attachment "2" "muzzle_mid" 0 0 0 rotate 0 0 0
$attachment "3" "muzzle_compact" 0 0 0 rotate 0 0 0
$attachment "4" "muzzle_sw" 0 0 0 rotate 0 0 0
$attachment "5" "muzzle_swplus" 0 0 0 rotate 0 0 0

$attachment "6" "shell1" 0 0 0 rotate 0 90 -30
$attachment "7" "camera" 0 0 0 rotate -90 0 0

// Surface properties and other stuff
$surfaceprop "weapon"
 
$contents "solid"
 
$illumposition 0 0 0

$cbox 0 0 0 0 0 0

// Animations

// $poseparameter "sights" 0 1 loop 0
$poseparameter "long" 0 1 loop 0

$sequence "idle" {
	"anims\idle.smd"
	fps 30
	"ACT_VM_IDLE" 1
	loop
	node "Ready"
}

$sequence "draw" {
	"anims\draw.smd"
	fps 30
	"ACT_VM_DRAW" 1
}

$sequence "deploy" {
	"anims\deploy.smd"
	fps 30
	"ACT_VM_DEPLOY" 1
}


$sequence "holster" {
	"anims\holster.smd"
	fps 30
	"ACT_VM_HOLSTER" 1
}

$sequence "fire" {
	"anims\firefirst.smd"
	fps 30
	"ACT_VM_PRIMARYATTACK" 1
	fadein 0.03
	fadeout 0.03
}
$sequence "fire_empty" {
	"anims\firesecond.smd"
	fps 30
	"ACT_VM_PRIMARYATTACK" 1
	fadein 0.03
	fadeout 0.03
}
$sequence "fireboth" {
	"anims\fireboth.smd"
	fps 30
	"ACT_VM_PRIMARYATTACK" 1
	fadein 0.03
	fadeout 0.03
}

$sequence "reload" {
	"anims\tac_manual.smd"
	fps 30
	"ACT_VM_RELOAD" 1
	snap
}
$sequence "reload_empty" {
	"anims\empty_manual_long.smd"
	fps 30
	"ACT_VM_RELOAD" 1
	blend "long" 0 1
	snap
}


// Bonemerges
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



$collisionmodel "collisi.smd"
{
	$mass 24
	$concave
}