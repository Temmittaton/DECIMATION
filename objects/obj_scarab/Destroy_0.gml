for (i=0;i<1024;i++){
	var _o = instance_create_layer(x, y, "Items", obj_blood)
	_o.image_blend = #7a9c0b;
}
instance_create_layer(x, y, "Items", obj_scarab_cadaver);
audio_play_sound (sfx_crushed, .8, false);
ennemyKilled (200);