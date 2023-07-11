function drop (_mob) {
	var _x = smoothstep(random (512) / 512) * 512;
	
	instance_create_layer (_x, 0, "Mobs", _mob);
}