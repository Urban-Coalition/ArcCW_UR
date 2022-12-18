$modelname "weapons\arccw\c_ur_m1911.mdl"
 
$bodygroup "frame" { // 0
	studio "default.smd"
	studio "compact.smd"
}
$bodygroup "slide" { // 1
	studio "slide.smd"
	studio "slide compact.smd"
	studio "slide m45.smd"
	studio "slide m45 custom.smd"
}
$bodygroup "shared" { // x
	studio "shared.smd"
}
$bodygroup "mag" { // 3
	studio "mag def.smd"
	studio "mag ext.smd"
}
$bodygroup "hammer" { // 4
	studio "hammer.smd"
	studio "hammer comp.smd"
}
$bodygroup "trigger" { // 5
	studio "trigger.smd"
	studio "trigger comp.smd"
}
$bodygroup "grip" { // 6
	studio "grip black.smd"
	studio "grip snake.smd"
	studio "grip pachmayr.smd"
}
$bodygroup "topmount" { // 7
	blank
	studio "mount optic.smd"
}
$bodygroup "tacmount" { // 8
	blank
	studio "mount tac.smd"
}

$bodygroup "bullers" { // 9
	studio "bullers.smd"
}


// $cdmaterials "models\weapons\arccw\shared"
$cdmaterials "models\weapons\arccw\ur_m1911"
// $cdmaterials "models\weapons\arccw\uc_common"
$cdmaterials "models\weapons\arccw\uc_shells\"

$collisionmodel "default.smd"

$texturegroup "skinfamilies"
{
    { m1911_exploded }
 	{ m1911_alsid }
 	{ m1911_exploded_tan }
 	{ m1911_exploded_custom }
}


$attachment "1" "vm_barrel" 0 0 0 rotate 0 90 -90  //taken from ak qc (its wbtwr too)
$attachment "2" "vm_pivot" 0.00 0.9 0.90 rotate 0 140 180
$attachment "5" "camera" 0 0 0 rotate -90 0 0
 
$surfaceprop "default"
 
$contents "solid"
 
$illumposition 0 0 0

$bbox 0 0 0 0 0 0
 
$cbox 0 0 0 0 0 0

$poseparameter "sights" 0 1 loop 0
$sequence "ref"{
	"anims\wmfix.smd" 
	fps 30
}
$sequence "idle"{
	"anims\vm_m1911_idle.smd" 
	// "anims\idle_iron.smd"
	fps 30
	"ACT_VM_IDLE" 1
 	blend "sights" 0 1
	loop
	snap
	node "Ready"
}

$sequence "idle_empty"{
	"anims\vm_m1911_idle_empty.smd" 
	// "anims\idle_iron_empty.smd"
	fps 30
	"ACT_VM_IDLE" 1
 	blend "sights" 0 1
	loop
	snap
	node "Ready"
}

$sequence "idle_jam"{
	"anims\vm_m1911_idle_jam.smd" 
	fps 30
	"ACT_VM_IDLE" 1
 	blend "sights" 0 1
	loop
	snap
	node "Ready"
}

$sequence "fire" {
	"anims\vm_m1911_fire.smd"
	"anims\vm_m1911_fire_ads.smd"
	fps 30
	"ACT_VM_PRIMARYATTACK" 1
 	blend "sights" 0 1
	fadein 0.02
	fadeout 0.0
	{ event 5001 0 "1" }
}

$sequence "fire_empty" {
	"anims\vm_m1911_fire_empty.smd"
	// "anims\fire_iron_empty.smd"
	fps 30
	"ACT_VM_PRIMARYATTACK" 1
 	blend "sights" 0 1
	fadein 0.02
	fadeout 0.0
	{ event 5001 0 "1" }
}

$sequence "fire_jam" {
	"anims\vm_m1911_fire_jam.smd"
	fps 30
	"ACT_VM_PRIMARYATTACK" 1
 	blend "sights" 0 1
	fadein 0.02
	fadeout 0.0
	{ event 5001 0 "1" }
}

$sequence "draw" "anims\vm_m1911_draw.smd" {
	fps 30
	"ACT_VM_DRAW" 1
	snap
}

$sequence "draw_empty" "anims\vm_m1911_draw_empty.smd" {
	fps 30
	"ACT_VM_DRAW" 1
	snap
}

$sequence "draw_jam" "anims\vm_m1911_draw_jam.smd" {
	fps 30
	"ACT_VM_DRAW" 1
	snap
}

$sequence "holster" "anims\vm_m1911_holster.smd" {
	fps 30
	"ACT_VM_DRAW" 1
	snap
}

$sequence "holster_empty" "anims\vm_m1911_holster_empty.smd" {
	fps 30
	"ACT_VM_DRAW" 1
	snap
}

$sequence "holster_jam" "anims\vm_m1911_holster_jam.smd" {
	fps 30
	"ACT_VM_DRAW" 1
	snap
}

$sequence "reload" {
	"anims\vm_m1911_reload_tactical.smd"
	// "anims\reload_iron.smd"
	blend "sights" 0 1
	fps 30
	"ACT_VM_RELOAD" 1
	snap
}

$sequence "reload_empty" {
	"anims\vm_m1911_reload_empty.smd"
	// "anims\reload_empty_iron.smd"
	blend "sights" 0 1
	fps 30
	"ACT_VM_RELOAD" 1
	snap
}


$sequence "reload_ext" {
	"anims\vm_m1911_reload_tactical_ext.smd"
	// "anims\reload_iron.smd"
	// blend "sights" 0 1
	fps 30
	"ACT_VM_RELOAD" 1
	snap
}

$sequence "reload_empty_ext" {
	"anims\vm_m1911_reload_empty_ext.smd"
	// "anims\reload_empty_iron.smd"
	// blend "sights" 0 1
	fps 30
	"ACT_VM_RELOAD" 1
	snap
}

$sequence "enter_inspect" {
	"anims\vm_m1911_inspect.smd"
	"ACT_VM_IDLE" 1
	frame 0 18
	fadein 0
	fadeout 0.2
	fps 32
}

$sequence "idle_inspect" {
	"anims\vm_m1911_inspect.smd"
	"ACT_VM_IDLE" 1
	frame 18 120
	fps 30
}

$sequence "exit_inspect" {
	"anims\vm_m1911_inspect.smd"
	"ACT_VM_IDLE" 1
	frame 120 168
	fadein 0.2
	fadeout 0
	fps 32
}

$sequence "enter_inspect_jam" {
	"anims\vm_m1911_inspect_jam2.smd"
	"ACT_VM_IDLE" 1
	frame 0 18
	fadein 0
	fadeout 0.2
	fps 32
}

$sequence "idle_inspect_jam" {
	"anims\vm_m1911_inspect_jam2.smd"
	"ACT_VM_IDLE" 1
	frame 18 120
	fps 30
}

$sequence "exit_inspect_jam" {
	"anims\vm_m1911_inspect_jam2.smd"
	"ACT_VM_IDLE" 1
	frame 120 168
	fadein 0.2
	fadeout 0
	fps 32
}

$sequence "enter_inspect_empty" {
	"anims\vm_m1911_inspect_empty.smd"
	"ACT_VM_IDLE" 1
	frame 0 18
	fadein 0
	fadeout 0.2
	fps 30
}

$sequence "idle_inspect_empty" {
	"anims\vm_m1911_inspect_empty.smd"
	"ACT_VM_IDLE" 1
	frame 18 120
	snap
	fps 30
}

$sequence "exit_inspect_empty" {
	"anims\vm_m1911_inspect_empty.smd"
	"ACT_VM_IDLE" 1
	frame 120 168
	fadein 0.2
	fadeout 0
	fps 32
}

$sequence "fix" {
	"anims\vm_m1911_fix.smd"
	"ACT_VM_IDLE" 1
	fadein 0
	fadeout 0.2
	fps 30
}

$sequence "fix_empty" {
	"anims\vm_m1911_fix_empty.smd"
	"ACT_VM_IDLE" 1
	fadein 0
	fadeout 0.2
	fps 30
}

// $include "wbtrfix2.qci"            idk how to make it work

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