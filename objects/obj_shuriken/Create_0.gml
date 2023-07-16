speed = 3;
if (obj_cendrier.image_xscale == 1){
	direction = 0;
}
else {
	direction = 180;
}
image_xscale = sign(obj_cendrier.image_xscale);
sound = audio_play_sound (sfx_shuriken, .4, true);