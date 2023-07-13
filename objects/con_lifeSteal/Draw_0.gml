if (check) {
	y += .25;
	if (n <= 0) {
		x = obj_tree.x;
		y = obj_tree.y;
		while (!collision_point (x, y - 4, par_solid, true, true)) {
			y ++;
		}
		check = false;
		m = 2;
	}
	n += m;
}
else {
	x = obj_tree.x;
	y = max (y - .25, obj_tree.y - 12);
	n += m;
	obj_tree.hp += life / 50;
	if (m != -1 && n >= life) {
		m = -1;
	}
	else if (m == -1 && n <= 0) {
		instance_destroy ();
	}
}

repeat (round (n/2)) {
	var _angle = random (2 * pi);
	var _dist = random_range (6, 12);
	var _col = #00ffe9 + random_range (-4, 4);
	
	draw_point_color (x + cos (_angle) * _dist, y + sin (_angle) * _dist, _col);
}