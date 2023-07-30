sprite_index = sprites [i];
if (animation_end ()) {
	i ++;
	image_index = 0;
}
if (i >= 3) {
	room_goto (Tutorial);
}