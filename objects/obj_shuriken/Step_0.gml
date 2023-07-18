if (place_meeting(x, y, par_solid) or x < 0 or x > room_width){
	instance_destroy();
	audio_stop_sound (sound);
}
else if (place_meeting(x, y, obj_player)){
	obj_player.dmg = id;
	audio_stop_sound (sound);
	instance_destroy ();
}