if (!place_meeting(x, y + 1, par_solid)){y++;}
if (!armored){sprite_index = spr_chenille_body;}

if (udmg) {
	if (armored) {
		obj_player.yspd = -4;
		obj_player.xspd -= image_xscale/8;
		repeat(9) {
			instance_create_layer(obj_player.x, y-8, "Items", obj_sparkle);
		}
		screen_shake(8, 6);
		udmg = false;
	}
	else {
		with (head){
			instance_destroy();
		}
	}
}
else if (place_meeting(x, y, obj_player)) {
	head.stateNext = chenille_stun;
	obj_player.dmg = id;
}