if (duration > 0){
	xOffset = irandom_range(-strength, strength);
	yOffset = irandom_range(-strength, strength);
	
	duration--;
	if (duration == 0){
		xOffset = 0;
		yOffset = 0;
	}
}