$modelname "weapons\arccw\atts\uc_ubgl_hk79_3.mdl"

$bodygroup "studio" {
	studio "hk79.smd"
}
$bodygroup "pro" {
	studio "hk79_ris.smd"
	studio "hk79_pro.smd"
}
$origin 0 0 0
$cdmaterials "models\weapons\arccw\uc_hk79"
$cdmaterials "models\weapons\arccw\ud_m16"
$surfaceprop "weapon"
$contents "solid"

$attachment "1" "hk79_root" 0 14 0.5 rotate 0 90 -180 // Muzzle
$attachment "2" "root"   0 -0.693337 5.991150 rotate 0 0 0     // VM movement, offset to be at world origin
$attachment "3" "camera" 0 0 0 rotate 0 0 0     // Camera rotation (only rotation!)

$collisionmodel "hk79.smd"

$sequence "idle" {
	"anims/idle.smd"
	fps 30
}
$sequence "idle_armed" {
	"anims/idle_armed.smd"
	fps 30
}
$sequence "reload" {
	"anims/reload.smd"
	fadein 0.1
	fadeout 0.1
	fps 30
}
$sequence "fire" {
	"anims/fire.smd"
	fadein 0.03
	fadeout 0.2
	fps 30
}
$sequence "to_armed" {
	"anims/to_armed.smd"
	fadein 0.1
	fadeout 0.1
	fps 30
}
$sequence "to_idle" {
	"anims/to_idle.smd"
	fadein 0.1
	fadeout 0.1
	fps 30
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