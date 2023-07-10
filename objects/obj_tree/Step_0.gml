// Next state choose
if (tree_choose()) {
	stateNext = tree_choose();
}

// Change state if needed, call enter / exit
if (state != stateNext)	{
	state = stateNext;
	enter = true;
}

// Update state
stateNext = state(enter);
enter = false;

yspd += grav;
hp = min (hp, 16);