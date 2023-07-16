function scarab_hurt(enter){
	if (enter){
		yspd = -3;
		xspd = sign(x - obj_player.x) * 4;
		sprite_index = spr_scarab_hurt;
		image_speed = 0.5;
		image_index = 0;
		audio_play_sound (sfx_turned, .7, false);
	}
	yspd += grav;
	
	return scarab_hurt;
}