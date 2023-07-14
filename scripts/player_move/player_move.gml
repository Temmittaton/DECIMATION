function player_move() {
	xspd = (rightKeyPressed-leftKeyPressed)*walkspd;
	
	// Jump
	if (place_meeting(x, y+2, par_solid)) && (jumpKeyPressed)	{
		yspd = -8;
	}

	// Gravité
	yspd += grav;
}