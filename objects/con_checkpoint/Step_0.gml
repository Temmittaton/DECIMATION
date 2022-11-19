if (obj_player.x>x){
	obj_player.respawnx = x;
	obj_player.respawny = y;
	obj_player.respawnRoom = room;
	
	with (obj_player){
		if (state == player_cinematic){
			stateNext = player_idle;
		}
	}
	
	instance_destroy();
}