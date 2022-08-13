
$modelname "weapons/arccw/atts/g3_optic_sg1_hsp.mdl"

$bodygroup "upper"
{
    studio "top scope sg1 hsp.smd"
}

$attachment "holosight" "holosight_sg1" 0 0 0 rotate 0 0 -90

$cdmaterials "models/weapons/arccw/ur_g3/"

$surfaceprop "weapon"
$contents "solid"

$collisionmodel "top scope sg1 hsp.smd"

$sequence "reference" {
    "top scope sg1 hsp.smd"
}