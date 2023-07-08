for (var i=0;i<512;i++){
	var _o = instance_create_layer(x, y, "Items", obj_blood)
	_o.image_blend = #ff1600;
}
if (udmg){
	instance_create_layer(x, y, "Items", obj_soldier_cadaver);
	for (var i=0;i<32;i++) {
		instance_create_layer(x, y, "Items", obj_sparkle);
	}
}
audio_play_sound (sfx_soldierDead, .4, false);