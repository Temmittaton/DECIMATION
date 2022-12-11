function player_gloryKill2(enter){
	if (enter){
		sprite_index = spr_player_gloryKill2;
		image_index = 0;
		image_speed = 0.3;
		xspd = 0;
		yspd = 0;
		x -= 4;
	}
	
	if (animation_end()){
		x += 6 * image_xscale;
		return player_idle;
	}
	
	return player_gloryKill2;
}