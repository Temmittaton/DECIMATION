if (!check){
	x += xs;
	y += ys;
	ys += 0.5;
	if (place_meeting(x, y, par_solid)){
		check = true;
		xs = 0;
	}
}
else if (xs > 180){
	instance_destroy();
}
else {
	image_alpha = clamp(xs - 120, 0, 1);
}