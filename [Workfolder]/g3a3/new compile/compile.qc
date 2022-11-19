
$modelname "weapons/arccw/c_ur_g3.mdl"

$bodygroup "base" // id 0
{
    studio "base def.smd" // 0
    studio "base hk33.smd" // 1
}

$bodygroup "upper" // id 1
{
    studio "upper def.smd" // 0
    studio "upper psg.smd" // 1
}

$bodygroup "barrel" // id 2
{
    studio "barrel def.smd" // 0
    studio "barrel k.smd" // 1
    studio "barrel 51.smd" // 2
    studio "barrel psg.smd" // 3
    studio "barrel 33.smd" // 4
}

$bodygroup "grip" //  id 3
{
    studio "grip def.smd" // 0
    studio "grip sef.smd" // 1
    studio "grip psg.smd" // 2
}

$bodygroup "mag" //  id 4
{
    studio "mag def.smd" // 0
    studio "mag psg.smd" // 1
    studio "mag drum.smd" // 2
    studio "mag hk33 20rnd.smd" // 3
    studio "mag hk33 30rnd.smd" // 4
    studio "mag hk33 40rnd.smd" // 5
}

$bodygroup "stock" //  id 5
{
    studio "stock def.smd" // 0
    studio "stock sg.smd" // 1
    studio "stock collapsable.smd" // 2
    studio "stock collapsed.smd" // 3
    studio "stock psg.smd" // 4
    studio "stock rucar.smd" // 5
    blank // 6
}

$bodygroup "hg" //  id 6
{
    studio "hg def.smd" // 0
    studio "hg slim.smd" // 1
    studio "hg pica.smd" // 2

    studio "hg k def.smd" // 3
    studio "hg k slim.smd" // 4
    studio "hg k pica.smd" // 5

    studio "hg 51.smd" // 6
    studio "hg 51 slim.smd" // 7
    studio "hg 51 pica.smd" // 8
    studio "hg 51 mlok.smd" // 9
    studio "hg 51 flash.smd" // 10
    blank // 11
}

$bodygroup "underbarrel" //  id 7
{
    blank // 0
    studio "underbarrel bayonet.smd" // 1
    studio "underbarrel bayonet k.smd" // 2
    studio "underbarrel bipod.smd" // 3
    studio "underbarrel bipod k.smd" // 4
}

$bodygroup "hg mount" //  id 8
{
    blank // 0
    studio "hg rail def.smd" // 1
    studio "hg rail slim.smd" // 2
}

$bodygroup "muzzle" //  id 9
{
    studio "muzzle def.smd" // 0
    studio "muzzle k.smd" // 1
    studio "muzzle 51.smd" // 2
    blank // 3
    studio "muzzle 33.smd" // 4
}

$bodygroup "optic" //  id 10
{
    blank // 0
    studio "top rail.smd" // 1
}


$attachment "1" "barrel" 0 0 0 rotate -90 0 0
$attachment "2" "bolt" -1 0 0 rotate -10 140 180
$attachment "3" "camera" 0 0 0 rotate -90 0 0

$cdmaterials "models/weapons/arccw/ur_g3/"
$cdmaterials "models/weapons/arccw/ur_mp5NEW/"
$cdmaterials "models/weapons/arccw/ud_common/"
$cdmaterials "models\weapons\arccw\ur_aw"
$cdmaterials "models\weapons\arccw\uc_shells"

$texturegroup "skinfamilies" {
	{ "MI_G3family" "MI_G3_Shorts" }  			    // black        id 0
	{ "MI_G3family_wood" "MI_G3_Shorts" }  	        // wood cetme   id 1
	{ "MI_G3family_olive" "MI_G3_Shorts_olive" }  	// olive        id 2
	{ "MI_G3family_tan" "MI_G3_Shorts_tan" }  		// tan          id 3
	{ "MI_G3family_custom" "MI_G3_Shorts_custom" }  // custom       id 3
}


$surfaceprop "weapon"
$contents "solid"

$collisionmodel "collision.smd"

$poseparameter "sights" 0 1 loop 0
$poseparameter "short" 0 1 loop 0
// $poseparameter "scoped" 0 1 loop 0

$sequence "idle" {
    "anims/idle.smd"
    "anims/idle_iron.smd"
	blend "sights" 0 1
    snap
    fps 30
}

$sequence "ready" {
    "anims/readyy.smd"
    snap
    fps 30
}

$sequence "draw" {
    "anims/draw.smd"
    snap
    fps 30
}

$sequence "holster" {
    "anims/holster.smd"
    snap
    fps 30
}

$sequence "jamfix" {
    "anims/jamfix.smd"
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
    "anims/reload_empty.smd" // ref
    "anims/reload_empty_iron.smd" // sights
    "anims/reload_empty_short.smd" // short
    "anims/reload_empty_iron_short.smd" // sights short

	blend "sights" 0 1
	blend "short" 0 1
    snap
    fps 30
}
$sequence "reload_empty_scope" {
    "anims/reload_empty_scope.smd"
    "anims/reload_empty_iron_scope.smd"
    "anims/reload_empty_scope_short.smd"
    "anims/reload_empty_iron_scope_short.smd"
	blend "sights" 0 1
	blend "short" 0 1
    snap
    fps 30
}


$sequence "reload_10rnd" {
    "anims/reload_10rnd.smd"
    "anims/reload_iron.smd"
	blend "sights" 0 1
    snap
    fps 30
}
$sequence "reload_empty_10rnd" {
    "anims/reload_empty_10rnd.smd"
    "anims/reload_empty_iron.smd"
    "anims/reload_empty_short_10rnd.smd"
    "anims/reload_empty_iron_short.smd"
	blend "sights" 0 1
	blend "short" 0 1
    snap
    fps 30
}
$sequence "reload_empty_scope_10rnd" {
    "anims/reload_empty_scope_10rnd.smd"
    "anims/reload_empty_iron_scope.smd"
    "anims/reload_empty_scope_short_10rnd.smd"
    "anims/reload_empty_iron_scope.smd"
	blend "sights" 0 1
	blend "short" 0 1
    snap
    fps 30
}


$sequence "reload_30rnd" {
    "anims/reload_30rnd.smd"
    "anims/reload_iron.smd"
	blend "sights" 0 1
    snap
    fps 30
}
$sequence "reload_empty_30rnd" {
    "anims/reload_empty_30rnd.smd"
    "anims/reload_empty_iron.smd"
    "anims/reload_empty_short_30rnd.smd"
    "anims/reload_empty_iron_short.smd"
	blend "sights" 0 1
	blend "short" 0 1
    snap
    fps 30
}
$sequence "reload_empty_30rnd_rare" {
    "anims/reload_empty_30rnd_rare.smd"
    "anims/reload_empty_iron.smd"
    "anims/reload_empty_short_30rnd_rare.smd"
    "anims/reload_empty_iron_short.smd"
	blend "sights" 0 1
	blend "short" 0 1
    snap
    fps 30
}
$sequence "reload_empty_scope_30rnd" {
    "anims/reload_empty_scope_30rnd.smd"
    "anims/reload_empty_iron_scope.smd"
    "anims/reload_empty_scope_short_30rnd.smd"
    "anims/reload_empty_iron_scope.smd"
	blend "sights" 0 1
	blend "short" 0 1
    snap
    fps 30
}

$sequence "reload_50rnd" {
    "anims/reload_50rnd.smd"
    "anims/reload_iron.smd"
	blend "sights" 0 1
    snap
    fps 30
}
$sequence "reload_empty_50rnd" {
    "anims/reload_empty_50rnd.smd"
    "anims/reload_empty_iron.smd"
    "anims/reload_empty_short_50rnd.smd"
    "anims/reload_empty_iron_short.smd"
	blend "sights" 0 1
	blend "short" 0 1
    snap
    fps 30
}
$sequence "reload_empty_scope_50rnd" {
    "anims/reload_empty_scope_50rnd.smd"
    "anims/reload_empty_iron_scope.smd"
    "anims/reload_empty_scope_short_50rnd.smd"
    "anims/reload_empty_iron_scope.smd"
	blend "sights" 0 1
	blend "short" 0 1
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


$sequence "inspect_enter" {
	"anims\g3inspect_enter"
	fps 37
	// snap
}
$sequence "inspect_loop" {
	"anims\g3inspect_loop"
	fps 24
	// snap
}
$sequence "inspect_exit" {
	"anims\g3inspect_exit"
	fps 37
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