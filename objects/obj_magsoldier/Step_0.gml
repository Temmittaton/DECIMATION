// Next state choose
if (magsoldier_choose()) {
	stateNext = magsoldier_choose();
}

// Change state if needed, call enter / exit
if (state != stateNext)	{
	state = stateNext;
	enter = true;
}
else {
	enter = false;
}

// Update state
stateNext = state(enter);
enter = false;
