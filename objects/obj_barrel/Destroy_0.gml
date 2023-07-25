for (var i=0;i<64;i++){
	var _o = instance_create_layer(x - 4, y - 4, "Items", obj_stone_particle);
	_o.image_blend = #251500;
	_o.image_xscale = .5;
	_o.image_yscale = .5;
}
audio_play_sound (sfx_woodBreak, 1, false);