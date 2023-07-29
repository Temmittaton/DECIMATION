if (keyboard_check_pressed(ord("K"))) {
	room_goto(ScoreRoom);
}

if (obj_player.x > x) {
	with (obj_player) {
		stateNext = player_cinematic;
		xspd = 1.5;
	}
	
	if (obj_player.x + obj_player.xspd >= room_width){
		if (target == LevelSelection) && (global.currentLevel == global.clearedLevel+1) {
			global.clearedLevel++;
		}
		
		room_goto(target);
	}
}