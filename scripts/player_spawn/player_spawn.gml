function player_spawn(enter){
	if (enter){
		coldness = 0;
		sprite_index = spr_player_spawn;
		image_index = 0;
		image_speed = 1;
	}
	
	// Event
	yspd = 0.5;
	
	if (animation_end()){
		return player_idle;
	}
	
	return player_spawn;
}