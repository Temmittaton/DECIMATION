if (place_meeting(x, y, par_solid)){
	instance_destroy();
}
else if (place_meeting(x, y, obj_player) && (dispersion == 0)){
	var _list = ds_list_create();
	
	collision_rectangle_list(x-2, y-2, x+2, y+2, obj_player, false, true, _list, false);
	
	obj_player.coldness += 0.25;
	
	dispersion = 200;
	lifetime = -1;
	speed = random_range(-0.1, 0.1);
	dis = 0.5;
}

if (dispersion > 1){dispersion--;}
else if (dispersion == 1){instance_destroy();}

if (lifetime > 0){lifetime--;}
else if (lifetime == 0){instance_destroy();}

y += dis;