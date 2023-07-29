for (i=0;i<512;i++){
	var _o = instance_create_layer(x, y, "Items", obj_blood)
	_o.image_blend = #7a9c0b;
}
with (obj_ant){
	stateNext = ennemy_chase;
}
instance_create_layer(x, y, "Items", obj_ant_cadaver);
ennemyKilled (75);