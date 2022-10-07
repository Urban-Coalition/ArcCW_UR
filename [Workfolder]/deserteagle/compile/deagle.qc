$modelname "weapons\arccw\c_ud_deagle.mdl"
 
$bodygroup "base" {
	studio "deserteagle.smd"
	studio "deserteagle_blackbase.smd"
} 
$bodygroup "barrel" {
	studio "barrel.smd"
	studio "barrel_modern.smd"
	studio "barrel_long.smd"
	studio "barrel_police.smd"
	studio "barrel_compensated.smd"
	studio "barrel_compact.smd"
	studio "barrel_annihilator.smd"
}
$bodygroup "magazine" {
	studio "mag_7.smd"
	studio "mag_10.smd"
}
$bodygroup "tritium" {
    blank
	studio "tritium.smd"
	studio "tritium_long.smd"
	studio "tritium_police.smd"
	studio "tritium_compact.smd"
	studio "tritium_annihilator.smd"
}
$bodygroup "grip" {
	studio "grip_plastic.smd"
	studio "grip_wooden.smd"
	studio "grip_rubber.smd"
}
$bodygroup "rail" {
    blank
	studio "lower_rail.smd"
	studio "lower_rail_anil.smd"
}
$bodygroup "bullets" {
	studio "bullets_50ae.smd"
	studio "bullets_44mag.smd"
	studio "bullets_357mag.smd"
	studio "bullets_410b.smd"
	blank
}


$cdmaterials "models\weapons\arccw\shared"
$cdmaterials "models\weapons\arccw\ur_deagle"
$cdmaterials "models\weapons\arccw\ud_common"


$texturegroup "skinfamilies"
{
	{ "deagle" "deagle_plastic" "annihilator_slide"}
	{ "deagle_black" "deagle_plastic" "annihilator_slide_black"}
	{ "deagle_gold" "deagle_plastic" "annihilator_slide_gold"}
	{ "deagle_chrome" "deagle_plastic" "annihilator_slide_chrome"}
}


$attachment "1" "Barrel" 0 0 0 rotate -90 0 0
$attachment "2" "Brass" 0 0 0 rotate -10 140 180
$attachment "5" "Camera" 0 0 0 rotate -90 0 0
 
$surfaceprop "default"
 
$contents "solid"
 
$illumposition 0 0 0

$bbox 0 0 0 0 0 0
 
$cbox 0 0 0 0 0 0

$poseparameter "sights" 0 1 loop 0

$sequence "idle"{
	"anims\idle.smd" 
	"anims\idle_iron.smd"
	fps 60
	"ACT_VM_IDLE" 1
 	blend "sights" 0 1
	loop
	snap
	node "Ready"
}

$sequence "idle_empty"{
	"anims\idle_empty.smd" 
	"anims\idle_iron_empty.smd"
	fps 60
	"ACT_VM_IDLE" 1
 	blend "sights" 0 1
	loop
	snap
	node "Ready"
}

$sequence "idle_jammed"{
	"anims\idle_jammed.smd" 
	fps 60
	"ACT_VM_IDLE" 1
	loop
	snap
	node "Ready"
}

$sequence "fire_01" {
	"anims\fire_01.smd"
	"anims\fire_iron.smd"
	fps 60
	"ACT_VM_PRIMARYATTACK" 1
 	blend "sights" 0 1
	fadein 0.03
	fadeout 0.03
	{ event 5001 0 "1" }
}

$sequence "fire_02" {
	"anims\fire_02.smd"
	"anims\fire_iron.smd"
	fps 60
	"ACT_VM_PRIMARYATTACK" 1
 	blend "sights" 0 1
	fadein 0.03
	fadeout 0.03
	{ event 5001 0 "1" }
}

$sequence "fire_03" {
	"anims\fire_03.smd"
	"anims\fire_iron.smd"
	fps 60
	"ACT_VM_PRIMARYATTACK" 1
 	blend "sights" 0 1
	fadein 0.03
	fadeout 0.03
	{ event 5001 0 "1" }
}

$sequence "fire_empty" {
	"anims\fire_empty.smd"
	"anims\fire_iron_empty.smd"
	fps 60
	"ACT_VM_PRIMARYATTACK" 1
 	blend "sights" 0 1
	fadein 0.03
	fadeout 0.03
	{ event 5001 0 "1" }
}

$sequence "fire_jammed" {
	"anims\fire_jammed.smd"
	fps 60
	"ACT_VM_PRIMARYATTACK" 1
	fadein 0.03
	fadeout 0.03
	{ event 5001 0 "1" }
}

$sequence "ready" {
	"anims\ready.smd"
	"anims\ready_iron.smd"
 	blend "sights" 0 1
	fps 60
	"ACT_VM_DRAW" 1
	snap
}

$sequence "reload" {
	"anims\reload.smd"
	"anims\reload_iron.smd"
	blend "sights" 0 1
	fps 60
	"ACT_VM_RELOAD" 1
	snap
}

$sequence "reload_empty" {
	"anims\reload_empty.smd"
	"anims\reload_empty_iron.smd"
	blend "sights" 0 1
	fps 60
	"ACT_VM_RELOAD" 1
	snap
}

$sequence "reload_exte" {
	"anims\reload_exte.smd"
	"anims\reload_iron_exte.smd"
	blend "sights" 0 1
	fps 60
	"ACT_VM_RELOAD" 1
	snap
}

$sequence "reload_empty_exte" {
	"anims\reload_empty_exte.smd"
	"anims\reload_empty_iron_exte.smd"
	blend "sights" 0 1
	fps 60
	"ACT_VM_RELOAD" 1
	snap
}

$sequence "unjam" {
	"anims\unjam.smd"
	snap
	fps 60
}

$sequence "enter_inspect" {
	"anims\enter_inspect.smd"
	"ACT_VM_IDLE" 1
	snap
	fps 60
}

$sequence "idle_inspect" {
	"anims\idle_inspect.smd"
	"ACT_VM_IDLE" 1
	snap
	fps 60
}

$sequence "exit_inspect" {
	"anims\exit_inspect.smd"
	"anims\exit_inspect_iron.smd"
	blend "sights" 0 1
	"ACT_VM_IDLE" 1
	snap
	fps 60
}

$sequence "enter_inspect_empty" {
	"anims\enter_inspect_empty.smd"
	"ACT_VM_IDLE" 1
	snap
	fps 60
}

$sequence "idle_inspect_empty" {
	"anims\idle_inspect_empty.smd"
	"ACT_VM_IDLE" 1
	snap
	fps 60
}

$sequence "exit_inspect_empty" {
	"anims\exit_inspect_empty.smd"
	"anims\exit_inspect_empty_iron.smd"
	blend "sights" 0 1
	"ACT_VM_IDLE" 1
	snap
	fps 60
}


$sequence "enter_inspect_jammed" {
	"anims\enter_inspect_jammed.smd"
	"ACT_VM_IDLE" 1
	snap
	fps 60
}

$sequence "idle_inspect_jammed" {
	"anims\idle_inspect_jammed.smd"
	"ACT_VM_IDLE" 1
	snap
	fps 60
}

$sequence "exit_inspect_jammed" {
	"anims\exit_inspect_jammed.smd"
	"ACT_VM_IDLE" 1
	snap
	fps 60
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