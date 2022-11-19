function caster_chase(enter) {
	if (enter) {
		if (obj_player.x < x) {
			xspd = -chaseSpeed;
		}
		else {
			xspd = chaseSpeed;
		}
		if (point_distance(x, y, obj_player.x, obj_player.y) < 64) {
			xspd = -xspd;
		}
		image_index = 0;
	}
	
	if (animation_end()){
		if (obj_player.x < x){
			xspd = -chaseSpeed;
		}
		else{
			xspd = chaseSpeed;
		}
		image_index = 0;
	}
	
	// Action
	if (place_meeting(x+xspd*2, y, par_solid)) && (!place_meeting(x+xspd*2, y, obj_slope)) && (place_meeting(x, y+2, par_solid)){
		yspd = -4;
	}
	if (place_meeting(x, y+2, par_solid)) && (!place_meeting(x+xspd, y+4, par_solid)){
		yspd = -4;
	}
	
	yspd+=grav;
	
	//Animation
	sprite_index = chaseSprite;
	image_speed = 0.12;
	
	return caster_chase;
}