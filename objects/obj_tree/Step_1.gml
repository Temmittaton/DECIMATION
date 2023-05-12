// Damage
if (dmg) && (state == cendrier_shield) or (state == cendrier_shield_charge) or (state == cendrier_dash){
	dmg = 0;
}
else if (dmg) {
	if (invincibility == 0) {
		hp--;
		invincibility = 45;
	}
	dmg = false;
}
else if (pdmg) {
	if (invincibility == 0) {
		hp--;
		invincibility = 45;
	}
	pdmg = false;
}
else if (udmg) {
	obj_player.yspd = -4;
	obj_player.xspd -= image_xscale;
	repeat(9){
		instance_create_layer(obj_player.x, y-8, "Items", obj_sparkle);
	}
	screen_shake(10, 8);
	
	udmg = false;
}

if (hp < 1) or (y>=room_height){
	instance_destroy();
}
if (invincibility > 0){invincibility--}