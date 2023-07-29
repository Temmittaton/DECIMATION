for (i=0;i<512;i++){
	var _o = instance_create_layer(x, y, "Items", obj_blood)
	_o.image_blend = #ff1600;
}
instance_create_layer(x, y, "Items", obj_pickaxe);
ennemyKilled (90);