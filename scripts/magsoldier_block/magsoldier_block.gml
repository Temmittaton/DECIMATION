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
		sprite_index = spr_magsoldier_stun;
		image_speed = 0.075;
	}
	
	// Action
	yspd+=grav;
	
	return magsoldier_block;
}