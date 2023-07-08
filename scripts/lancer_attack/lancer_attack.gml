function lancer_attack(enter){
	if (enter){
		xspd = 0;
		if (obj_player.x < x){
			image_xscale = -1;
		}
		else {
			image_xscale = 1;
		}
		sprite_index = spr_lancer_attack;
		image_index = 0;
		image_speed = 0.15;
	}
	returnedState = lancer_attack;
	
	// Action
	if (image_index>3){
		if (image_index < 3.16 && image_index > 3) {
			audio_play_sound (sfx_magAttack, .5, false, .3);
		}
		if (collision_rectangle(x+8*image_xscale, y+4, x+20*image_xscale, y+7, obj_player, false, true)) {
			obj_player.dmg = id;
			audio_play_sound (sfx_soldierAttack, .5, false);
		}
	}
	
	if (animation_end()){
		returnedState = mob_idle;
	}
	
	yspd+=grav;
	
	return returnedState;
}