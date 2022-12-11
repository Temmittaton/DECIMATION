function player_gloryKill(enter){
	if (enter){
		sprite_index = spr_player_gloryKill;
		image_index = 0;
		image_speed = 0.6;
		xspd = 0;
		yspd = 0;
	}
	
	if (animation_end()){
		x += 17 * image_xscale;
		return player_idle;
	}
	
	return player_gloryKill;
}