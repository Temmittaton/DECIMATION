if (obj_player.x > x) && (bossBeaten){
	with (obj_player){
		stateNext = player_cinematic;
		xspd = 1.5;
	}
	
	if (obj_player.x + obj_player.xspd >= room_width){
		if (target == ScoreRoom) && (global.currentLevel == global.clearedLevel+1){
			global.clearedLevel++;
		}
		
		room_goto(target);
	}
}