if (obj_player.x > x){
	with (obj_player){
		if (state == player_cinematic){
			stateNext = player_idle;
		}
	}
	
	if ((room != LevelSelection) && (room != Options)){
		global.respawnX = x;
		global.respawnY = y;
		global.respawnRoom = room;
	}
	
	instance_destroy();
}