function player_move(){
	xspd = (rightKeyPressed-leftKeyPressed)*walkspd;
	
	// Jump
	if (place_meeting(x, y+1, par_solid)) && (keyboard_check_pressed(vk_space))	{
		yspd = -8;
	}

	// Gravité
	yspd += grav;
}