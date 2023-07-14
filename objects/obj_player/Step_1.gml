// Inputs
leftKeyPressed = keyboard_check(ord(leftKey));
rightKeyPressed = keyboard_check(ord("D"));
downKeyPressed = keyboard_check(ord("S"));
spellKey = sign(keyboard_check(vk_shift) + keyboard_check_pressed(vk_lshift));
interactKeyPressed = keyboard_check(ord(interactKey));
dashKeyPressed = keyboard_check_pressed(ord(dashKey));
attackKeyPressed = keyboard_check_pressed(vk_enter);
jumpKeyPressed = keyboard_check_pressed (vk_space);
weaponChangeKeyPressed = keyboard_check_pressed (vk_tab);
spellChangeKeyPressed = keyboard_check_pressed (vk_alt);

if (gamepad_is_connected(0)) {
	leftKeyPressed = bool(max(0, -gamepad_axis_value (0, gp_axislh)));
	rightKeyPressed = bool(max(0, gamepad_axis_value (0, gp_axislh)));
	downKeyPressed = bool(max(0, gamepad_axis_value (0, gp_axislv)));
	spellKey = gamepad_button_check (0, gp_shoulderlb);
	interactKeyPressed = bool(max(0, -gamepad_axis_value (0, gp_axislv)));
	dashKeyPressed = gamepad_button_check_pressed (0, gp_shoulderrb);
	attackKeyPressed = gamepad_button_check_pressed (0, gp_face3);
	jumpKeyPressed = gamepad_button_check_pressed (0, gp_face1);
	weaponChangeKeyPressed = gamepad_button_check_pressed (0, gp_padr);
	spellChangeKeyPressed = gamepad_button_check_pressed (0, gp_padl);
}

if (!instance_exists(dmg)) {dmg = 0;}

if (hp <= 0) or (y>=room_height) {
	stateNext = player_dead;
}
else if (dmg != 0) {
	if ((dmg.x) > x) {
		knockback = -4;
	}
	else {
		knockback = 4;
	}
	dmg = 0;
	stateNext = player_knockback;
	audio_stop_sound (sfx_spell);
	audio_stop_sound (sfx_fire);
	if (invincibility == 0) {
		screen_shake(15, 16);
		invincibility = 45;
		hp--;
	}
}

// change state if needed, call enter / exit
if (state != stateNext)	{
	state = stateNext;
	enter = true;
}

// update state
stateNext = state(enter);
enter = false;