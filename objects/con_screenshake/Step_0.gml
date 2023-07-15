if (duration > 0){
	xOffset = irandom_range(-strength, strength);
	yOffset = irandom_range(-strength, strength);
	
	duration--;
	if (duration == 0){
		xOffset = 0;
		yOffset = 0;
	}
}
	
if (gamepad_is_connected (0)) {
	gamepad_set_vibration (0, strength * duration / 2, strength * duration / 2);
}