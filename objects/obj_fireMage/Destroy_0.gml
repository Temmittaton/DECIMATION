for (i=0;i<512;i++){
	var _o = instance_create_layer(x, y, "Items", obj_blood)
	_o.image_blend = #ff1600;
}
audio_play_sound (sfx_soldierDead, .4, false);
audio_stop_sound (sfx_fireMage_attack);