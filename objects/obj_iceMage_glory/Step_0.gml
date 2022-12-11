if (animation_end()){
	for (i=0;i<512;i++){
		var _o = instance_create_layer(x, y, "Items", obj_blood)
		_o.image_blend = #ff1600;
	}
	instance_destroy();
}
else if (!place_meeting(x, y + 1, par_solid)){
	y++;
}

if (image_index >= 8){
	repeat(8){
		var _o = instance_create_layer(x, y, "Items", obj_blood);
		_o.image_blend = #ff1600;
	}
}