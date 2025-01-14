if (spawned){
	with instance_create_layer(x, y, "interacts", interactspawn){
		image_xscale = 0.5
		image_yscale = 0.5
	}
	instance_destroy(self)
}