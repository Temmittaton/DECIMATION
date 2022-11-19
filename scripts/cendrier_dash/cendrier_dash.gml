function cendrier_dash(enter){
	if (enter){
		yspd = 0;
		sprite_index = spr_cendrier_dash;
		image_index = 0;
		image_speed = 0.3;
		if (x < obj_player.x){
			xspd = 4;
		}
		else {
			xspd = -4;
		}
	}
	// Damage
	if (collision_rectangle(x-8, y-8, x+8, y+8, obj_player, false, true)){
		obj_player.dmg = id;
	}
	yspd += grav;
	
	return cendrier_dash;
}