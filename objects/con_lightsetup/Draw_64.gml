if (blood > 0) {
	draw_sprite_ext (spr_bloodScreen, 0, 0, 0, RATIO, RATIO, 0, c_white, blood / 40);
	blood--;
}
