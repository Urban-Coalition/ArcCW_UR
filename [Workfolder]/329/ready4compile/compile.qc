
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

// always make the speedloader last
$bodygroup "speedloader"
{
    studio "speedloader.smd"
}

$attachment "1" "body" 8.50 3.00 0.00 rotate 0 0 0
$attachment "2" "chamber" -2.00 0.00 -0.00 rotate 0 -180 0
$attachment "3" "camera" 0 0 0 rotate -90 0 0

$cdmaterials "models/weapons/arccw/ur_329pd"
$surfaceprop "weapon"
$contents "solid"

$collisionmodel "v_sw329.smd"

$poseparameter "sights" 0 1 loop 0

$sequence "ref" {
    "anims/wmfix.smd"
    fps 60
}

$sequence "idle" {
    "anims/idle.smd"
    "anims/idle.smd"
	blend "sights" 0 1
    fadein 0.1
    fadeout 0.1
    fps 60
}

$sequence "idle_cocked" {
    "anims/idle_cocked.smd"
    "anims/idle_cocked.smd"
	blend "sights" 0 1
    fadein 0.1
    fadeout 0.1
    fps 60
}

$sequence "reload" {
    "anims/reload.smd"
    "anims/reload.smd"
	blend "sights" 0 1
    snap
    snap
    fps 60
}

$sequence "reload_cocked" {
    "anims/reload_cocked.smd"
    "anims/reload_cocked.smd"
	blend "sights" 0 1
    snap
    snap
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
    "anims/fire_iron.smd"
	blend "sights" 0 1
    fps 60
    snap
}

$sequence "dryfire" {
    "anims/dryfire.smd"
    fps 60
    snap
}

$sequence "dryfire_sact" {
    "anims/dryfire_sact.smd"
    fps 60
    snap
}

$sequence "draw" {
    "anims/draw.smd"
    "anims/draw.smd"
	blend "sights" 0 1
    fps 60
    snap
}

$sequence "draw_cocked" {
    "anims/draw_cocked.smd"
    "anims/draw_cocked.smd"
	blend "sights" 0 1
    fps 60
    snap
}

$sequence "holster" {
    "anims/holster.smd"
    "anims/holster.smd"
	blend "sights" 0 1
    fadein 0.2
    fadeout 0.2
    fps 60
}

$sequence "holster_cocked" {
    "anims/holster_cocked.smd"
    "anims/holster_cocked.smd"
	blend "sights" 0 1
    fadein 0.2
    fadeout 0.2
    fps 60
}


$sequence "cocking" {
    "anims/cocking.smd"
    "anims/cocking.smd"
	blend "sights" 0 1
    fadein 0.05
    fadeout 0.2
    fps 60
}
$sequence "decocking" {
    "anims/decocking.smd"
    "anims/decocking.smd"
	blend "sights" 0 1
    fadein 0.05
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