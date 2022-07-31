
$modelname "weapons/arccw/c_ur_g3a3.mdl"

$bodygroup "ref"
{
    studio "base.smd"
}

$bodygroup "1"
{
    studio "mag_20.smd"
}

$bodygroup "2"
{
    studio "stock.smd"
}

$bodygroup "3"
{
    studio "bipod.smd"
}

$attachment "1" "barrel" 0 0 0 rotate -90 0 0
$attachment "2" "bolt" -1 0 0 rotate -10 140 180
$attachment "3" "camera" 0 0 0 rotate -90 0 0

$cdmaterials "models/weapons/arccw/ur_g3a3"
$surfaceprop "weapon"
$contents "solid"

$collisionmodel "base.smd"

$poseparameter "sights" 0 1 loop 0

$sequence "idle" {
    "anims/idle.smd"
    "anims/idle_iron.smd"
	blend "sights" 0 1
    snap
    fps 30
}

$sequence "reload" {
    "anims/reload.smd"
    "anims/reload_iron.smd"
	blend "sights" 0 1
    snap
    fps 30
}


$sequence "reload_empty" {
    "anims/reload_empty.smd"
    "anims/reload_empty_iron.smd"
	blend "sights" 0 1
    snap
    fps 30
}

$sequence "reload_empty_scope" {
    "anims/reload_empty_scope.smd"
    "anims/reload_empty_iron_scope.smd"
	blend "sights" 0 1
    snap
    fps 30
}

$sequence "fire_01" {
    "anims/fire_01.smd"
    "anims/fire_iron.smd"
	blend "sights" 0 1
    fps 30
	fadein 0.03
	fadeout 0.03
}

$sequence "fire_02" {
    "anims/fire_02.smd"
    "anims/fire_iron.smd"
	blend "sights" 0 1
    fps 30
	fadein 0.03
	fadeout 0.03
}

$sequence "fire_03" {
    "anims/fire_03.smd"
    "anims/fire_iron.smd"
	blend "sights" 0 1
    fps 30
	fadein 0.03
	fadeout 0.03
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