function drop (_mob) {
	do  {
		_x = smoothstep(random (512) / 512) * 512;
	} until (abs (obj_player.x - _x) < 128);
	
	
	instance_create_layer (_x, 0, "Mobs", _mob);
}