$modelname "weapons/arccw\c_ur_mp5.mdl"
 
$bodygroup "iron" "ironSIGHT"

$bodygroup "1" {
	studio "mp5UPPER"
	studio "mp5sdUPPER"
	studio "mp5kUPPER"
	studio "swordUPPER"
}

$bodygroup "2" {
	studio "fourLOWER"
	studio "sefLOWER"
}

$bodygroup "3" {
	studio "fixedSTOCK"
	studio "collapseSTOCK"
	studio "collapseSTOCKcoll"
	studio "pdwSTOCK"
	studio "pdwSTOCKfold"
	studio "tacticSTOCK"
	studio "tacticSTOCKfold"
	studio "futureSTOCK"
	studio "futureSTOCKcoll"
	studio "futureSTOCKfold"
	studio "buttSTOCK"
}

$bodygroup "4" {
	studio "standardHG"
	studio "flashHG"
	studio "flashmlokHG"
	studio "slimHG"
	studio "picaHG" // picatinny rail
	studio "mlokHG"
	studio "kurzgripHG"
	studio "kurzslimHG"
	studio "kurzmlokHG"
}

$bodygroup "5" {
	studio "standardMAG"
	studio "smallMAG"
	studio "straightMAG"
	studio "drumMAG"
}

$bodygroup "6" {
	blank
	studio "mp5RAIL"
}

//  				ARC9
$cdmaterials "models\weapons\arc9\ur_mp5"
$cdmaterials "models\weapons\arc9\ur_mp5\bocw"
$cdmaterials "models\weapons\arc9\ud_m16"
$cdmaterials "models\weapons\arc9\ud_common"


// 					ARCCW
// $cdmaterials "models\weapons/arc9\ur_mp5"
// $cdmaterials "models\weapons/arc9\ur_mp5\bocw"
// $cdmaterials "models\weapons/arc9\ud_common"

// $texturegroup "skinfamilies"
// {
// 	{ "m16_barrel_classic" }
// 	{ "m16_barrel_classic_wood" }
// }

$attachment "1" "barrel" 0 0 0 rotate -90 0 0
$attachment "2" "bolt" 0.00 -0.75 -1.00 rotate -10 140 180
$attachment "3" "camera" 0 0 0 rotate -90 0 0
$attachment "4" "barrel" 0 0 5 rotate -90 0 0

$surfaceprop "weapon"
 
$contents "solid"
 
$illumposition 0 0 0

$cbox 0 0 0 0 0 0

$poseparameter "sights" 0 1 loop 0
$poseparameter "firemode" 1 3 loop 0

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

// EMPTY KURZ RELOADS GO HERE C:

$sequence "reload_empty" {
	"anims\reload_empty_kurz.smd"
	"anims\reload_empty_iron_kurz.smd"
	fps 30
	"ACT_VM_RELOAD" 1
	blend "sights" 0 1
	snap
}

$sequence "reload_empty_kurz_10mm" {
	"anims\reload_empty_kurz_10mm.smd"
	"anims\reload_empty_iron_kurz.smd"
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