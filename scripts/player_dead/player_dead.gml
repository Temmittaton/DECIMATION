function player_dead(enter){
	if (enter){
		sprite_index = spr_player_dead;
		image_speed = 0.25;
		image_index = 0;
		xspd = 0;
		yspd = 0;
	}
	
	// Returned State selection
	if (animation_end()){
		room_goto(global.respawnRoom);
		
		instance_destroy();
	}
	
	return player_dead;
}