function player_groundPound(enter){
	if (enter){
		xspd = 0;
		yspd = 1;
		sprite_index = spr_player_groundPound;
		image_speed = 0.8;
	}
	
	returnedState = player_groundPound;
	
	// Events
	var _yspd = yspd + 1;
	player_move();
	yspd = _yspd;
	xspd = sign(xspd);
	
	var _list = ds_list_create();
	var _num = collision_rectangle_list(x-6*image_xscale, y, x+6*image_xscale, y+16, par_mob, false, true, _list, true);
	if (_num != 0){
		variable_instance_set(_list[| 0], "udmg", true);
	}
	
	// Returned state selection
	if (!downKeyPressed) {
		if (interactKeyPressed){
			returnedState = player_idle;
		}
		else if (attackKeyPressed) && (attackTmr == 0){
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
		else if (dashKeyPressed) && (dashtmr == 0){
			returnedState = player_dash;
		}
	}
	if (place_meeting(x, y+yspd, par_solid)){
		returnedState = player_idle;
		audio_play_sound (sfx_boom, .75, false, yspd / 8);
		screen_shake(10, yspd/2);
	}
	
	if (animation_end())	{
		image_index = 4;
	}
	
	return returnedState;
}
