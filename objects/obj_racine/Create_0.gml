if (!place_meeting(x, y, par_solid)) {instance_destroy ();}
while (place_meeting (x, y, par_solid)) {
	y--;
}
check = true;
if (x > obj_tree.x) {
	image_xscale = -1;
}