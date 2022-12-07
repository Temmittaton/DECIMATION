function cendrier_shield_charge(enter){
	if (enter){
		xspd = 0;
		sprite_index = spr_cendrier_shield_charge;
		image_index = 0;
		image_speed = 0.75;
	}
	
	if (yspd < 0){yspd = 0;}
	yspd += grav;
	
	// Damage
	var _c = collision_rectangle(x - 16, y - 12 + (10 - image_index*2), x - 6, y + 8, obj_player, false, true);
	if (_c){
		obj_player.dmg = id;
	}
	
	_c = collision_rectangle(x + 6, y - 12 + (10 - image_index*2), x + 16, y + 8, obj_player, false, true);
	if (_c){
		obj_player.dmg = id;
	}
	
	cendrier_mana_use(8);
	
	return cendrier_shield_charge;
}