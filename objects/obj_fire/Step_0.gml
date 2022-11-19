hp--;
if (hp == 0){
	instance_destroy();
}
else if (hp < 60){
	image_alpha = hp/60;
}

var _c = collision_rectangle(x-4, y-6, x+4, y, obj_player, false, true);
if (_c){
	obj_player.dmg = id;
}

if (!place_meeting(x, y+1, par_solid)){
	y++;
}