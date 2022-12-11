if (a == 0){
	instance_destroy();
}
else if (a < 61){
	image_alpha = a/60;
}
a--;
if (!place_meeting(x, y + 1, par_solid)){y++};