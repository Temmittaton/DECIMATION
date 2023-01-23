for (i=0;i<512;i++){
	var _o = instance_create_layer(x, y, "Items", obj_blood);
	_o.image_blend = #91aa07;
}

for (i = 0; i < num; i++) {
	with (inst[i]){
		instance_destroy();
	}
}