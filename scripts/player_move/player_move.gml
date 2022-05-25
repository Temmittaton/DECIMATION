// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function player_move(){
	xspd = (rightKeyPressed-leftKeyPressed)*walkspd;

	// Jump
	if (place_meeting(x, y+1, par_solid)) && (keyboard_check_pressed(vk_space))	{
		yspd = -9;
	}
	
	// Gravité
	yspd += grav;
}