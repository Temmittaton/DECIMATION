if (animation_end()){
	for (i=0;i<128;i++){
		var _o = instance_create_layer(x, y, "Items", obj_blood)
		_o.image_blend = #91aa07;
	}
	instance_destroy();
}