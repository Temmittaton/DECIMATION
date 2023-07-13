// Inputs
leftKeyPressed = keyboard_check(ord(leftKey));
rightKeyPressed = keyboard_check(ord("D"));
downKeyPressed = keyboard_check(ord("S"));
spellKey = sign(keyboard_check(vk_shift) + keyboard_check_pressed(vk_lshift));
interactKeyPressed = keyboard_check(ord(interactKey));
dashKeyPressed = keyboard_check_pressed(ord(dashKey));
attackKeyPressed = keyboard_check_pressed(vk_enter);

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