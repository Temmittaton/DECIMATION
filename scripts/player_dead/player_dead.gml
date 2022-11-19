function player_dead(enter){
	if (enter){
		sprite_index = spr_player_dead;
		image_speed = 0.25;
		image_index = 0;
		xspd = 0;
		yspd = 0;
	}
	returnedState = player_dead;
	
	// Returned State selection
	if (animation_end()){
		room = respawnRoom;
		var newPlayer = instance_create_layer(respawnx, respawny, "Player", obj_player);
		show_debug_message(string(respawnx) + " " + string(respawny));
		
		newPlayer.stateNext = player_spawn;
		newPlayer.respawnx = respawnx;
		newPlayer.respawny = respawny;
		newPlayer.respawnRoom = respawnRoom;
		
		instance_destroy();
	}
	
	return returnedState;
}