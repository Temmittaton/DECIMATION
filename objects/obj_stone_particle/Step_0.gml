if (check) {
	x += xs;
	y += ys;
}


if (place_meeting (x, y, par_solid)) {
	check = false;
}
else {
	ys += 0.1;
}

if (ys > 16){
	instance_destroy();
}