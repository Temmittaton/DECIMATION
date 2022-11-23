// Damage
if (dmg) && (state != cendrier_shield) && (state != cendrier_shield_charge){
	instance_destroy();
}
else if (pdmg){
	pdmg = false;
	stateNext = cendrier_dash;
	repeat(9){
		instance_create_layer(x, y, "Items", obj_sparkle);
	}
	if (invincibility == 0){
		invincibility = 20;
		hp--;
		repeat(64){
			instance_create_layer(x, y, "Items", obj_blood);
		}
	}
}
else if (udmg) && (state != cendrier_shield) && (state != cendrier_shield_charge){
	obj_player.yspd = -4;
	obj_player.xspd -= image_xscale;
	repeat(9){
		instance_create_layer(obj_player.x, y-8, "Items", obj_sparkle);
	}
	screen_shake(10, 8);
	audio_play_sound(sfx_crushed, 1, false);
	instance_destroy();
}
else {dmg = 0; pdmg = 0;}

if (hp < 1) or (y>=room_height){
	instance_destroy();
}
if (invincibility > 0){invincibility--}