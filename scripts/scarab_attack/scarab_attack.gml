function scarab_attack(enter){
	if (enter){
		image_index = 0;
		image_speed = 0.25;
		sprite_index = spr_scarab_attack;
	}
	
	// Attack
	var _c = collision_rectangle(x - 12 * image_xscale, y - 4, x - 4 * image_xscale, y + 4, obj_player, false, true);
	if (_c){
		obj_player.dmg = id;
	}
	
	return scarab_attack;
}