function mob_stun(enter){
	if (enter){
		xspd = 0;
		if (!variable_instance_exists(self, "stunSprite")){
			sprite_index = spr_soldier_stun;
			image_speed = 0.8;
		}
		else {
			sprite_index = stunSprite;
			image_speed = 0.1;
		}
	}
	
	return mob_stun;
}