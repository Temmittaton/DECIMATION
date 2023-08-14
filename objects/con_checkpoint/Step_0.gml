if (obj_player.x > x) && (abs (y - obj_player.y) < 128) {
	with (obj_player) {
		if (state == player_cinematic) {
			stateNext = player_idle;
		}
	}
	
	if ((room != LevelSelection) && (room != Options)) {
		global.respawnX = x;
		global.respawnY = y;
		global.respawnRoom = room;
	}
	
	with (con_score) {
		eK = ennemiesKilled;
	}
	
	instance_destroy();
}