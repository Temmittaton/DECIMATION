if (place_meeting(x, y, par_solid)){
	instance_destroy();
}
else if (place_meeting(x, y, obj_player) && (dispersion == 0)){
	var _list = ds_list_create();
	
	collision_rectangle_list(x-2, y-2, x+2, y+2, obj_player, false, true, _list, false);
	
	obj_player.dmg = id;
	
	dispersion = 3;
}

if (dispersion > 1){dispersion--;}
else if (dispersion == 1){instance_destroy();}