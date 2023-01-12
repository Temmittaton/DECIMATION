if (obj_player.x > x){
	with (obj_player){
		stateNext = player_cinematic;
		xspd = 1.5;
	}
	
	if (obj_player.x + obj_player.xspd >= room_width){
		if (target == LevelSelection) && (global.currentLevel == global.clearedLevel+1){
			global.clearedLevel++;
		}
		
		con_saveController.respawnRoom = 0;
		con_saveController.respawnX = 0;
		con_saveController.respawnY = 0;
		
		room_goto(target);
	}
}
