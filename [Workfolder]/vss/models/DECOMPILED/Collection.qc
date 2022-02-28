$modelname "test.mdl"

$model test "Collection.smd"

$cdmaterials "models/vss"

$sequence "idle" "Collection" {
	fps 30
}

$collisionmodel "Collection.smd"
{
	$mass 95
	$inertia 1
	$damping 0.1
	$rotdamping 0.2
	$rootbone " "
}