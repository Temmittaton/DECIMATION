hp--;
if (hp == 0){
	instance_destroy();
}
else if (hp < 15){
	image_alpha = hp/15;
}
else {
	var _c = collision_rectangle(x-4, y-6, x+4, y, obj_player, false, true);
	if (_c && hp > 60){
		obj_player.dmg = id;
	}
}