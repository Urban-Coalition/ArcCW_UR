
$modelname "weapons/arccw/atts/g3_optic_psg_hsp.mdl"

$bodygroup "upper"
{
    studio "top scope psg hsp.smd"
}

$attachment "holosight" "holosight_psg" 0 0 0 rotate 0 0 -90

$cdmaterials "models/weapons/arccw/ur_g3/"

$surfaceprop "weapon"
$contents "solid"

$collisionmodel "top scope psg hsp.smd"

$sequence "reference" {
    "top scope psg hsp.smd"
}