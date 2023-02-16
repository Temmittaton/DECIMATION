function cendrier_shield(enter){
	if (enter){
		sprite_index = spr_cendrier_shield;
		image_index = 0;
		image_speed = 0.3;
		if (yspd > 0){yspd = 0;}
	}
	
	if (yspd < 0){yspd = 0;}
	yspd += grav;
	superAttack++;
	
	// Damage
	var _c = collision_rectangle(x - 16, y - 12, x - 6, y + 8, obj_player, false, true);
	if (_c){
		obj_player.dmg = id;
	}
	
	_c = collision_rectangle(x + 6, y - 12, x + 16, y + 8, obj_player, false, true);
	if (_c){
		obj_player.dmg = id;
	}
	
	cendrier_mana_use(6);
	
	return cendrier_shield;
}
