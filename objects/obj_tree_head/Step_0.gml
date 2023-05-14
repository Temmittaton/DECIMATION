x += spd;
spd -= sign(spd);
if (place_meeting(x, y, obj_player)) {
	obj_player.dmg = id;
}
else if (place_meeting(x, y, par_solid)) {
	spd = 0;
}
if (animation_end()) {
	obj_tree.image_speed = 0.8;
	instance_destroy();
}