function player_gloryKill(enter){
	if (enter){
		sprite_index = spr_player_gloryKill;
		image_index = 0;
		image_speed = 0.6;
		xspd = 0;
		yspd = 0;
	}
	
	if (image_index >= 4) && (image_index <= 5){
		xspd = 2 * image_xscale;
	}
	else if (image_index >= 5) && (image_index <= 6){
		xspd = 8 * image_xscale;
		screen_shake(4, 8);
	}
	
	if (animation_end()){
		xspd = 0;
		return player_idle;
	}
	
	return player_gloryKill;
}