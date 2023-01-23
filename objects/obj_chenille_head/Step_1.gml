// Damage
if (dmg) {
	stateNext = chenille_stun;
	dmg = false;
}
else if (pdmg) {
	stateNext = chenille_stun;
	pdmg = false;
}
else if (udmg) {
	obj_player.yspd = -4;
	obj_player.xspd -= image_xscale;
	repeat(9) {
		instance_create_layer(obj_player.x, y-8, "Items", obj_sparkle);
	}
	screen_shake(8, 6);
	udmg = false;
}

if (hp < 1) or (y>=room_height) {
	instance_destroy();
}
if (invincibility > 0) {invincibility--}