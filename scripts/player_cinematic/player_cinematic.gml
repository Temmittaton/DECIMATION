function player_cinematic(enter){
	if (enter)	{
		image_speed = 0.015;
		sprite_index = spr_player_idle;
	}
	
	// Gravité
	yspd += grav;
	
	if (xspd != 0){
		sprite_index = spr_player_walk;
		image_speed = 0.08;
	}
	else {
		image_speed = 0.03;
		sprite_index = spr_player_idle;
	}
	
	return player_cinematic;
}