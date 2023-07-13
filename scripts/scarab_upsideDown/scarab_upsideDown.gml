function scarab_upsideDown(enter) {
	if (enter){
		xspd = 0;
		sprite_index = spr_scarab_upsideDown;
		image_speed = 0.1;
	}
	
	if (xspd != 0 && place_meeting (x + xspd, y, par_solid)) {
		instance_destroy ();
	}
	
	yspd += grav;
	
	var _c = collision_rectangle(x - 10, y - 4, x + 10, y + 2, obj_player, false, true);
	if (_c){
		obj_player.yspd = -4;
		instance_destroy();
	}
	else if (place_meeting (x, y, obj_player)) {
		yspd = -2;
		if (x < obj_player.x) {
			xspd = -8;
		}
		else {xspd = 8;}
	}
	
	return scarab_upsideDown;
}