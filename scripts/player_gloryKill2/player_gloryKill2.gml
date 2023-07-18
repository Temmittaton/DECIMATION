function player_gloryKill2(enter){
	if (enter){
		sprite_index = spr_player_gloryKill2;
		image_index = 0;
		image_speed = 0.15;
		xspd = 0;
		yspd = 0;
		x -= 8*image_xscale;
		con_lightSetup.zoom = 0.25;
		audio_play_sound (sfx_gloryKillIce, 1, false);
	}
	yspd = 0;
	
	if (image_index == 5){
		screen_shake(16, 8);
	}
	
	if (attackKeyPressed) && (attackTmr == 0){
		returnedState = player_attack;
	}
	else if (spellKey){
		if (global.selectedSpell == 0){
			returnedState = player_spell;
		}
		else {
			returnedState = player_fireSpell;
		}
	}
	else if (dashKeyPressed) && (dashtmr == 0)	{
		returnedState = player_dash;
	}
	else if (downKeyPressed) && (!place_meeting(x, y+3, par_solid)){
		returnedState = player_groundPound;
	}
	else if (animation_end()){
		x += 8 * image_xscale;
		screen_shake(4, 12);
		return player_idle;
	}
	
	return player_gloryKill2;
}