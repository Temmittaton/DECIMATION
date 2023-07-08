if (place_meeting(x, y, par_solid)){
	instance_destroy();
}
else if (place_meeting(x, y, par_ennemy)){
	var _list = ds_list_create();
	var _num = collision_rectangle_list(x-2, y-2, x+2, y+2, par_ennemy, false, true, _list, false);
	if (_num != 0){
		for (i=0; i<_num; i++){
			variable_instance_set(_list[| i], "pdmg", true)
		}
	}
	
	audio_play_sound (sfx_spell_explodes, .8, false);
	instance_destroy();
}