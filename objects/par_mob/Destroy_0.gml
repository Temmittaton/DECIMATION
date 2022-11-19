for (i=0;i<512;i++){
	instance_create_layer(x, y, "Items", obj_blood)
}
if (udmg){
	instance_create_layer(x, y, "Items", obj_soldier_cadaver);
}
