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
		var _list = ds_list_create();
		var _num = collision_rectangle_list(x+8*image_xscale, y+4, x+20*image_xscale, y+7, obj_player, false, true, _list, false);
		if (_num != 0){
			for (i=0; i<_num; i++){
				variable_instance_set(_list[| i], "dmg", id);
			}
		}
	}
	
	if (animation_end()){
		returnedState = mob_idle;
	}
	
	yspd+=grav;
	
	return returnedState;
}