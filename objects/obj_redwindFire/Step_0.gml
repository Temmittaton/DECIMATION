if (place_meeting(x, y, par_solid)){
	repeat (4) {
		instance_create_layer (x, y, "Items", obj_fireParticle);
	}
	instance_destroy();
}
else if (place_meeting(x, y, par_ennemy)){
	if (place_meeting (x, y, obj_tree)) {
		obj_tree.hp -= .04;
		repeat (12) {
			instance_create_layer (x, y, "Controllers", obj_fireParticle);
		}
		
		instance_destroy ();
	}
	
	var _list = ds_list_create();
	
	collision_point_list(x, y, par_ennemy, false, true, _list, true);
	
	if (instance_exists(_list[| 0])){
		_list[| 0].pdmg = true;
	}
	
	repeat (6) {
		instance_create_layer (x, y, "Items", obj_fireParticle);
	}
	
	instance_destroy();
}

if (lifetime > 0){lifetime--;}
else if (lifetime == 0){instance_destroy();}

y += dis;