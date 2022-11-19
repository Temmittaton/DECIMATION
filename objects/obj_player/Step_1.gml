// Inputs
leftKeyPressed = keyboard_check(ord(leftKey));
rightKeyPressed = keyboard_check(ord("D"));
downKeyPressed = keyboard_check(ord("S"));
spellKeyPressed = sign(keyboard_check_pressed(vk_shift) + keyboard_check_pressed(vk_lshift));
interactKeyPressed = keyboard_check(ord(interactKey));
dashKeyPressed = keyboard_check_pressed(ord(dashKey));
attackKeyPressed = keyboard_check_pressed(vk_enter);

if (hp <= 0) or (y>=room_height){
	stateNext = player_dead;
}
else if (dmg != 0){
	if ((dmg.x) > x){
		knockback = -4;
	}
	else {
		knockback = 4;
	}
	dmg = 0;
	if (invincibility == 0){
		screen_shake(15, 16);
		stateNext = player_knockback;
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