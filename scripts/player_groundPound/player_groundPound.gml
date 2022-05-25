// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function player_groundPound(enter){
	if (enter){
		xspd = 0;
	}
	
	returnedState = player_groundPound;
	
	// Events
	yspd += 2;
	
	// Returned state selection
	if (attackKeyPressed) && (attackTmr == 0){
		returnedState = player_attack;
	}
	else if (dashKeyPressed) && (dashtmr == 0){
		returnedState = player_dash;
	}
	else if (place_meeting(x, y+1, par_solid)){
		returnedState = player_idle;
	}
	
	// Animation
	if (returnedState == player_groundPound){sprite_index = spr_player_groundPound;image_speed = 0.8;}
	
	if (animation_end())	{
		image_index = 4;
	}
	
	return returnedState;
}
