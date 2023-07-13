if (place_meeting (x, y, par_solid)) {
	xs = 0;
	ys = 0;
}
else {
	ys += 0.1;
	y += ys;
	x += xs;
}