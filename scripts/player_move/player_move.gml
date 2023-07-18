function player_move() {
	xspd = (rightKeyPressed-leftKeyPressed)*walkspd;
	
	coyote = place_meeting(x, y+2, par_solid) * 8;
	
	// Jump
	if (coyote) && (jumpKeyPressed)	{
		yspd = -8;
	}
	/*if (place_meeting (x, y + 4, obj_slope) && jumpKeyPressed) {
		yspd = -8;
	}*/

	// Gravité
	yspd += grav;
}