// Damage
if (dmg){
	instance_destroy();
}
else if (pdmg){
	instance_destroy();
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

if (y>=room_height){
	instance_destroy();
}