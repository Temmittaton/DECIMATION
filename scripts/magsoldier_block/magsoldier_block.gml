function magsoldier_block (enter) {
	if (enter) {
		xspd = 0;
		if (obj_player.x < x) {
			image_xscale = -1;
		}
		else {
			image_xscale = 1;
		}
		if (obj_player.state != player_groundPound && !audio_is_playing (sfx_magBlock)) {
			audio_play_sound(sfx_magBlock, 1, false);
		}
	}
	
	// Action
	yspd+=grav;
	
	//Animation
	sprite_index = spr_magsoldier_stun;
	image_speed = 0.1;
	
	return magsoldier_block;
}