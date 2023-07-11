if (point_distance (obj_player.x, obj_player.y, x, y) < 256){
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