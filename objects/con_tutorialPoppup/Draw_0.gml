_x = obj_player.x;
_y = obj_player.y;

if (gamepad_is_connected (con_controllerMenuSelection.device)) {
	sprite = spr_tutorial_poppup_controller;
}
else {
	sprite = spr_tutorial_poppup;
}

if ((_x > 64) && (_x < 224)) || ((_x > 495) && (_x < 575)) {
	draw_sprite_ext(sprite, 0, _x, _y-8, 1, 1, 0, c_white, 1);
}
else if ((_x > 288) && (_x < 464)) {
	draw_sprite_ext(sprite, 1, _x, _y-8, 1, 1, 0, c_white, 1);
}
else if ((_x > 702) && (_x < 862)) {
	if (k) {
		draw_sprite_ext(sprite, 4, _x, _y-8, 1, 1, 0, c_white, 1);
	}
	else {
		draw_sprite_ext(sprite, 3, _x, _y-8, 1, 1, 0, c_white, 1);
	}
}
else if ((_x > 912) && (_x < 1054)) {
	draw_sprite_ext(sprite, 2, _x, _y-8, 1, 1, 0, c_white, 1);
}