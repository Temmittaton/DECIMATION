function scarab_upsideDown(enter){
	if (enter){
		xspd = 0;
		sprite_index = spr_scarab_upsideDown;
		image_speed = 0.1;
	}
	
	var _c = collision_rectangle(x - 8, y - 4, x + 8, y + 2, obj_player, false, true);
	if (_c){
		obj_player.yspd = -4;
		instance_destroy();
	}
	
	return scarab_upsideDown;
}