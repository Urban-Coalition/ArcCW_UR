$modelname "weapons/arccw\c_ur_mp5.mdl"

$bodygroup "0" { 
	studio "ironSIGHT.smd"
	studio "scalarSIGHT.smd"
	studio "altSIGHT.smd"
	blank
}
 
$bodygroup "1" {
	studio "mp5UPPER.smd"
	studio "mp5sdUPPER.smd"
	studio "mp5kUPPER.smd"
	studio "swordUPPER.smd"
}

$bodygroup "2" {
	studio "fourLOWER.smd"
	studio "sefLOWER.smd"
}

$bodygroup "3" {
	studio "fixedSTOCK.smd"
	studio "collapseSTOCK.smd"
	studio "collapseSTOCKcoll.smd"
	studio "pdwSTOCK.smd"
	studio "pdwSTOCKfold.smd"
	studio "tacticSTOCK.smd"
	studio "tacticSTOCKfold.smd"
	studio "futureSTOCK.smd"
	studio "futureSTOCKcoll.smd"
	studio "futureSTOCKfold.smd"
	studio "buttSTOCK.smd"
}

$bodygroup "4" {
	studio "standardHG.smd"
	studio "flashHG.smd"
	studio "flashmlokHG.smd"
	studio "slimHG.smd"
	studio "picaHG.smd" // picatinny rail
	studio "mlokHG.smd"
	studio "kurzgripHG.smd"
	studio "kurzslimHG.smd"
	studio "kurzmlokHG.smd"
	blank
	studio "eodHG.smd"
}

$bodygroup "5" {
	studio "standardMAG.smd"
	studio "smallMAG.smd"
	studio "straightMAG.smd"
	studio "drumMAG.smd"
}

$bodygroup "6" {
	blank
	studio "mp5RAIL2.smd"
}

$bodygroup "boolet" {
	studio "boolet.smd"
	studio "boolet4drum.smd"
}

$cdmaterials "models\weapons\arccw\ur_mp5NEW"
$cdmaterials "models\weapons\arccw\ud_m16\scalerworks"
$cdmaterials "models\weapons\arc9\ud_common"

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

$sequence "reload_drum" {
	"anims\reload_drum.smd"
	fps 30
	"ACT_VM_RELOAD" 1
	blend "sights" 0 1
	snap
}

$sequence "reload_empty_drum" {
	"anims\reload_empty_drum.smd"
	fps 30
	"ACT_VM_RELOAD" 1
	blend "sights" 0 1
	snap
}

// EMPTY KURZ RELOADS GO HERE C:

$sequence "reload_empty_kurz" {
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







$sequence "inspect_enter" {
	"anims\mp5inspect_enter"
	fps 37
	// snap
}
$sequence "inspect_loop" {
	"anims\mp5inspect_loop"
	fps 24
	// snap
}
$sequence "inspect_exit" {
	"anims\mp5inspect_exit"
	fps 37
	// snap
}


$sequence "sprint_enter" {
	"anims\a9_sprint_start"
	fps 60
	// snap
}
$sequence "sprint_loop" {
	"anims\a9_sprint_loop"
	fps 60
	// snap
}
$sequence "sprint_exit" {
	"anims\a9_sprint_end"
	fps 60
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

$bonemerge "bullet1"
$bonemerge "bullet2"
$bonemerge "bullet3"

$collisionmodel "mp5_col.smd"
{
	$mass 35
	$concave
}