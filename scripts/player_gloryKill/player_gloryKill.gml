function player_gloryKill(enter){
	if (enter){
		sprite_index = spr_player_gloryKill;
		image_index = 0;
		image_speed = 0.6;
		xspd = 0;
		yspd = 0;
		con_lightSetup.zoom = 0.25;
	}
	yspd = 0;
	
	if (image_index >= 4) && (image_index <= 5){
		xspd = image_xscale;
	}
	else if (image_index >= 5) && (image_index <= 6){
		xspd = 4 * image_xscale;
		screen_shake(4, 8);
	}
	
	var _l = ds_list_create();
	var _c = collision_rectangle_list(x + 6*image_xscale, y - 4, x + 17*image_xscale, y + 2, par_ennemy, false, true, _l, true);
	if (_c != 0) {
		variable_instance_set(_l[| 0], "dmg", true);
	}
	
	if (animation_end()){
		xspd = 0;
		return player_idle;
	}
	
	return player_gloryKill;
}