function player_spawn(enter){
	if (enter){
		color = c_red;
		x = con_saveController.respawnX;
		y = con_saveController.respawnY;
		sprite_index = spr_player_spawn;
		image_index = 0;
		image_speed = 0.75;
		xspd = 0;
	}
	
	// Event
	yspd = 0.5;
	str = image_index / 4;
	size = image_index * 2;
	
	if (animation_end()){
		color = c_white;
		str = -0.5;
		size = 16;
		return player_idle;
	}
	
	return player_spawn;
}