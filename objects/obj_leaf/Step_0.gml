if (place_meeting (x, y, par_solid)) {
	xs = 0;
	ys = 0;
	tmr ++;
	if (tmr < 31) {
		image_alpha = 30 / tmr;
		if (tmr == 0) {
			instance_destroy ();
		}
	}
}
else {
	ys += 0.1;
	y += ys;
	x += xs;
}