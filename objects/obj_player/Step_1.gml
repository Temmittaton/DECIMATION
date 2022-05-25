// Inputs
leftKeyPressed = keyboard_check(ord(leftKey));
rightKeyPressed = keyboard_check(ord("D"));
downKeyPressed = keyboard_check(ord("S"));
enterKeyPressed = keyboard_check_pressed(vk_enter);
interactKeyPressed = keyboard_check(ord(interactKey));
dashKeyPressed = keyboard_check_pressed(ord(dashKey));
attackKeyPressed = keyboard_check_pressed(vk_enter);

if (hp <= 0)	{
	stateNext = player_dead;
}
else if (pdmg != 0)	{
	stateNext = player_knockback;
	pdmg = 0;
	if (pdmg.x < x)	{
		knockback = 4;
	}
	else	{
		knockback = -4;
	}
}
else if (dmg != 0)	{
	stateNext = player_knockback;
	yspd = -2;
	pdmg = 0;
	if (pdmg.x < x)	{
		knockback = 6;
	}
	else	{
		knockback = -6;
	}
}

// change state if needed, call enter / exit
if (state != stateNext)	{
	state = stateNext;
	enter = true
}

// update state
stateNext = state(enter);
enter = false

// Death
/*if (hp <= 0) || (y > room_height)	{
	state = "dead"
	statetmr = 30
	xspd = 0
	yspd = 0
}
else if (state == "dead") && (statetmr == 0)	{
	x = respawnx;
	y = respawny;
	invincibility = 90;
	state = "spawn"
	statetmr = 30
}
else if (state == "spawn") && (statetmr == 0)	{
	state = "idle"
}

// Damage
if dmg != 0	{
	if (invincibility == 0)	{
		hp--;
		invincibility = 30;
	}
	if (dmg.x < x)	{
		knockback = 4
	}
	else	{
		knockback = -4
	}
	dmg = 0;
}

if pdmg != 0	{
	if (invincibility == 0)	{
		hp--;
		invincibility = 30;
	}
	if (pdmg.x < x)	{
		knockback = 6
		yspd = -2
	}
	else	{
		knockback = -6
		yspd = -2
	}
	pdmg = 0;
}

// Knockback
if (knockback != 0)	{
	knockback -= sign(knockback);
}




























