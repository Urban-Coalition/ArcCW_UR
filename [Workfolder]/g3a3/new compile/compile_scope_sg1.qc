
$modelname "weapons/arccw/atts/g3_optic_sg1.mdl"

$bodygroup "base"
{
    studio "top scope sg1.smd"
}
$bodygroup "upper"
{
    studio "top scope sg1 hsp.smd"
}

$attachment "holosight" "holosight_sg1" 0 0 0 rotate 0 0 -90

$cdmaterials "models/weapons/arccw/ur_g3/"

$surfaceprop "weapon"
$contents "solid"

$collisionmodel "top scope sg1.smd"

$sequence "reference" {
    "top scope sg1.smd"
}