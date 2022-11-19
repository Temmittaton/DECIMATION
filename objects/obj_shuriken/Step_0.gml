if (place_meeting(x, y, par_solid)){
	instance_destroy();
}
else if (place_meeting(x, y, obj_player) && (dispersion == 0)){
	obj_player.dmg = id;
	
	instance_destroy();
}