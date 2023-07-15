// Damage
if (dmg) {
	if (state != scarab_upsideDown && state != scarab_hurt) {
		stateNext = mob_stun;
	}
	else {
		yspd = -4;
		chase (obj_player);
		xspd *= -8;
	}
	dmg = 0;
}
else if (pdmg) {
	pdmg = false;
	stateNext = scarab_hurt;
}
else if (udmg) {
	if (state != scarab_upsideDown && state != scarab_hurt) {
		stateNext = mob_stun;
	}
	else {
		instance_destroy ();
	}
	obj_player.yspd = -4;
	obj_player.xspd -= image_xscale;
	repeat(9) {
		instance_create_layer(obj_player.x, y-8, "Items", obj_sparkle);
	}
	screen_shake(5, 8);
	udmg = false;
}

if (hp < 1) or (y>=room_height) {
	instance_destroy();
}
if (invincibility > 0){invincibility--}