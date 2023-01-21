function iceMage_attack(enter){
	if (enter){
		if (obj_player.x < x){
			xspd = -chaseSpeed;
		}
		else {
			xspd = chaseSpeed;
		}
		xspd = 0;
		sprite_index = spr_iceMage_attack;
		image_index = 0;
		image_speed = 0.175;
		
		if (obj_player.x < x){image_xscale = -1;}
		else {image_xscale = 1;}
	}
	
	if (image_index >= 4){
		repeat (64){
			instance_create_layer(x + 4 * image_xscale, y, "Projectiles", obj_iceParticle);
		}
	}
	
	return iceMage_attack;
}
