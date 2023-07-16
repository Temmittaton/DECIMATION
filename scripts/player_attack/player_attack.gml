function player_attack(enter) {
	if (enter) {
		image_index = 0;
		sprite_index = spr_player_attack;
		image_speed = 0.2;
		if (selectedWeapon) {
			audio_play_sound(sfx_attack_pickaxe, 1, false);
		}
		else {
			audio_play_sound(sfx_attack, 1, false);
		}
	}
	
	returnedState = player_attack;
	
	// Events
	player_move();
	
	var _list = ds_list_create();
	
	if (selectedWeapon == 0){
		var _num = collision_rectangle_list(x+4*image_xscale, y+4, x+24*image_xscale, y-4, par_ennemy, false, true, _list, false);
		
		if (_num != 0){
			for (i=0; i<_num; i++){
				variable_instance_set(_list[| i], "dmg", true);
			}
		}
	}
	else {
		var _num = collision_rectangle_list(x+4*image_xscale, y+4, x+24*image_xscale, y-8, obj_stone, false, true, _list, false);
		
		if (_num != 0){
			for (i=0; i<_num; i++){
				variable_instance_set(_list[| i], "pdmg", true);
			}
		}
		
		_num = collision_rectangle_list(x+4*image_xscale, y+4, x+24*image_xscale, y-4, par_ennemy, false, true, _list, false);
		
		if (_num != 0){
			for (i=0; i<_num; i++){
				variable_instance_set(_list[| i], "pdmg", true);
			}
		}
	}
	
	// Sprite selection
	sprite_index = weaponSprite[selectedWeapon];
	
	// Returned State Selection
	if (animation_end()){
		returnedState = player_idle;
	}
	else if (spellKey){
		if (selectedSpell == 0){
			returnedState = player_spell;
		}
		else {
			returnedState = player_fireSpell;
		}
	}
	else if (dashKeyPressed) && (dashtmr == 0){
		returnedState = player_dash;
	}
	else if (downKeyPressed) && (!place_meeting(x, y+3, par_solid)){
		returnedState = player_groundPound;
	}
	
	return returnedState;
}