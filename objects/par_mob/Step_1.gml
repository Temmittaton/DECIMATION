// Damage
if (dmg){
	ennemy_damage_sfx();
	instance_destroy();
}
else if (pdmg){
	pdmg = false;
	stateNext = mob_knockback;
	repeat(9){
		instance_create_layer(x, y, "Items", obj_sparkle);
	}
	if (invincibility == 0){
		invincibility = 20;
		hp--;
		repeat(64){
			instance_create_layer(x, y, "Items", obj_blood);	
		}
		audio_play_sound(sfx_hitPickaxe, 1, false);
		ennemy_damage_sfx();
	}
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

if (hp < 1) or (y>=room_height){
	instance_destroy();
}
if (invincibility > 0){invincibility--}