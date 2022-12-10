function scarab_hurt(enter){
	if (enter){
		yspd = -3;
		xspd = sign(x - obj_player.x) * 2;
		sprite_index = spr_scarab_hurt;
		image_speed = 0.3;
		image_index = 0;
	}
	yspd += grav;
	
	return scarab_hurt;
}