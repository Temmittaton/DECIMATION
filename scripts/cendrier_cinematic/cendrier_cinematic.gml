function cendrier_cinematic(enter){
	if (point_distance(x, y, obj_player.x, obj_player.y) < 64){
		xspd = 0;
	}
	
	yspd += grav;
	
	//Animation
	 if (xspd != 0){
		sprite_index = spr_cendrier_walk;
		image_speed = 0.2;
	}
	else {
		sprite_index = spr_cendrier_cinematic;
		image_speed = 0.2;
	}
	
	return cendrier_cinematic;
}