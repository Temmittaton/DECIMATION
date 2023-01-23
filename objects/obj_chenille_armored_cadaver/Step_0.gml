if (animation_end()){
	for (i=0;i<64;i++){
		var _o = instance_create_layer(x, y, "Items", obj_blood)
		_o.image_blend = #91aa07;
	}
	instance_destroy();
}
else {
	if (image_index > 6){
		xspd = 0;
	}
	else if (!place_meeting(x + xspd, y-0.1, par_solid)){
		x += xspd;
	}
	if (!place_meeting(x, y + 0.1, par_solid)){
		y += 0.1;
	}
}