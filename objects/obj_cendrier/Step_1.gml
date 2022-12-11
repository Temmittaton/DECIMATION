// Damage
if (dmg) && (state == cendrier_shield) or (state == cendrier_shield_charge){
	dmg = 0;
}
else if (dmg){
	instance_destroy();
}
else if (pdmg){
	stateNext = cendrier_shield_charge;
	pdmg = false;
}
else if (state == cendrier_shield) or (state == cendrier_shield_charge) or (state == cendrier_dash){
	udmg = 0;
}
else if (udmg){
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