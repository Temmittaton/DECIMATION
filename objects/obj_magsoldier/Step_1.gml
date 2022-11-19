// Damage
if (dmg){
	if (image_xscale == 1){
		if (obj_player.x > x){
			stateNext = magsoldier_block;
			enter = true;
			screen_shake(5, 4);
		}
		else {
			screen_shake(5, 8);
			instance_destroy();
		}
	}
	else {
		if (obj_player.x > x){
			screen_shake(5, 8);
			instance_destroy();
		}
		else {
			stateNext = magsoldier_block;
			enter = true;
			screen_shake(5, 4);
		}
	}
	dmg = false;
}
else if (pdmg){
	if (image_xscale == 1){
		if (obj_player.x > x){
			stateNext = magsoldier_block;
			screen_shake(5, 8);
		}
		else {
			if (invincibility == 0){
				hp--;
				invincibility = 20;
				repeat(9){
					instance_create_layer(x, y, "Items", obj_blood);
				}
			}
			stateNext = magsoldier_block;
			screen_shake(5, 4);
		}
	}
	else {
		if (obj_player.x > x){
			if (invincibility == 0){
				hp--;
				invincibility = 20;
				repeat(9){
					instance_create_layer(x, y, "Items", obj_blood);
				}
			}
			stateNext = magsoldier_block;
			screen_shake(5, 4);
		}
		else {
			stateNext = magsoldier_block;
			screen_shake(5, 8);
		}
	}
	pdmg = false;
}
else if (udmg){
	stateNext = magsoldier_block;
	obj_player.yspd = -4;
	obj_player.xspd -= image_xscale;
	repeat(9){
		instance_create_layer(obj_player.x, y-8, "Items", obj_sparkle);
	}
	
	screen_shake(5, 8);
	udmg = false;
}

if (hp < 1) or (y>=room_height){
	instance_destroy();
}
if (invincibility > 0){invincibility--}