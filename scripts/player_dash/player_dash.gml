// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function player_dash(enter){
	if (enter)	{
		sprite_index = 0;
		image_speed = 1.5;
		dash = image_xscale*2;
		yspd = 0;
		xspd = 0;
	}
	
	returnedState = player_dash;
	
	// Action
	xspd += dash;
	instance_create_layer(x, y, "Lights", obj_light_red);
	
	// Animation
	sprite_index = spr_player_dash;
	
	// Returned State selection
	if (attackKeyPressed) && (attackTmr == 0){
		returnedState = player_attack;
	}
	else if (downKeyPressed) && (!place_meeting(x, y+3, par_solid)){
		returnedState = player_groundPound;
	}
	else if (place_meeting(x+sign(dash), y, par_solid)) or (animation_end())	{
		returnedState = player_idle;
		dashtmr = 30;
		dash = 0
	}
	
	return returnedState;
}