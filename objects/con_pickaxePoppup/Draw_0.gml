if (gamepad_is_connected (con_controllerMenuSelection.device)) {
	sprite = spr_poppup_pickaxe_controller;
}
else {
	sprite = spr_poppup_pickaxe;
}

draw_sprite (sprite, 0, obj_player.x, obj_player.y - 8);

hp--;
if (hp == 0) {
	instance_destroy ();
}