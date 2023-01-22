if (pdmg){
	if (obj_player.image_index + obj_player.image_speed >= obj_player.image_number-1){
		instance_destroy();
	}
	else {pdmg = false;}
}