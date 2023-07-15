if (!instance_exists (obj_tree)) {
	instance_destroy ();
}
else {
	image_xscale = obj_tree.image_xscale;
	spd = image_xscale * 12;
	obj_tree.x -= image_xscale * 8;
}