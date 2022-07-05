
$modelname "weapons/arccw/c_ur_329pd.mdl"

$bodygroup "ref"
{
    studio "v_sw329.smd"
}

$bodygroup "barrel"
{
    studio "barrel_normal.smd"
    studio "barrel_m29.smd"
    blank
}

$attachment "1" "body" 8.50 3.00 0.00 rotate 0 0 0
$attachment "2" "chamber" -2.00 0.00 -0.00 rotate 0 -180 0

$cdmaterials "models/weapons/arccw/ur_329pd"
$surfaceprop "weapon"
$contents "solid"

// Separate speedloader first.
// $collisionmodel "v_sw329.smd"

$poseparameter "sights" 0 1 loop 0

$sequence "idle" {
    "anims/idle.smd"
    fadein 0.2
    fadeout 0.2
    fps 60
}

$sequence "reload" {
    "anims/reload_v2.smd"
    fadein 0.2
    fadeout 0.2
    fps 60
}

$sequence "trigger" {
    "anims/trigger.smd"
    "anims/trigger_ads.smd"
	blend "sights" 0 1
    fps 60
    fadein 0.05
    fadeout 0.2
}

$sequence "fire" {
    "anims/fire.smd"
    fps 60
    snap
}

$sequence "draw" {
    "anims/draw.smd"
    fps 60
    snap
}

$sequence "holster" {
    "anims/holster.smd"
    fadein 0.2
    fadeout 0.2
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