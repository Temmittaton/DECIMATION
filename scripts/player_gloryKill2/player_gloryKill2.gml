function player_gloryKill2(enter){
	if (enter){
		sprite_index = spr_player_gloryKill2;
		image_index = 0;
		image_speed = 0.15;
		xspd = 0;
		yspd = 0;
		x -= 8*image_xscale;
		con_lightSetup.zoom = 0.25;
	}
	yspd = 0;
	
	if (image_index == 5){
		screen_shake(16, 8);
	}
	
	if (animation_end()){
		x += 8 * image_xscale;
		screen_shake(4, 12);
		return player_idle;
	}
	
	return player_gloryKill2;
}