if (armored){
	instance_create_layer(x, y, "Mobs", obj_chenille_armored_cadaver);
}
else {
	instance_create_layer(x, y, "Mobs", obj_chenille_cadaver);
}
ennemyKilled (200);