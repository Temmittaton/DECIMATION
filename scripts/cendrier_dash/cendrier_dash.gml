function cendrier_dash (enter) {
	if (enter) {
		yspd = 0;
		sprite_index = spr_cendrier_dash;
		image_index = 0;
		image_speed = 1.5;
		if (x < obj_player.x) {
			xspd = 16;
		}
		else {
			xspd = -16;
		}
	}
	xspd -= sign(xspd) * .1;
	
	instance_create_layer (x + random_range (-4, 4), y + 16, "Items", obj_fire2);
	
	// Damage
	if (collision_rectangle(x-8, y-8, x+8, y+8, obj_player, false, true)) {
		obj_player.dmg = id;
	}
	yspd += grav;
	
	cendrier_mana_use(1);
	
	return cendrier_dash;
}