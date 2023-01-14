if (place_meeting(x, y, par_solid)){
	instance_destroy();
}
else if (place_meeting(x, y, par_ennemy)){
	var _list = ds_list_create();
	
	collision_point_list(x, y, par_ennemy, false, true, _list, true);
	
	if (instance_exists(_list[| 0])){
		_list[| 0].pdmg = true;
	}
	
	instance_destroy();
}

if (lifetime > 0){lifetime--;}
else if (lifetime == 0){instance_destroy();}

y += dis;