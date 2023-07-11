if (place_meeting (x, y, par_solid)) {
	xs = 0;
	if (place_meeting (x, y + 1, par_solid)) {
		ys = 0;
	}
	else {
		ys += .1;
	}
}
else {
	ys += 0.1;
	y += ys;
	x += xs;
}