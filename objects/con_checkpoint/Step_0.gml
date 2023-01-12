if (obj_player.x > x){
	with (obj_player){
		if (state == player_cinematic){
			stateNext = player_idle;
		}
	}
	
	if ((room != LevelSelection) && (room != Options)){
		con_saveController.respawnX = x;
		con_saveController.respawnY = y;
		con_saveController.respawnRoom = room;
	}
	
	instance_destroy();
}