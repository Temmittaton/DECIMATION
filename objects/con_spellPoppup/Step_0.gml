if (gamepad_is_connected (0)) {
	sprite = spr_poppup_spell_controller;
}
else {
	sprite = spr_poppup_spell;
}

draw_sprite (sprite, 0, obj_player.x, obj_player.y - 8);

hp--;