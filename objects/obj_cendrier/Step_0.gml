// Next state choose
if (cendrier_choose()) {
	stateNext = cendrier_choose();
}

// Change state if needed, call enter / exit
if (state != stateNext)	{
	state = stateNext;
	enter = true;
	usedMana = 0;
}

// Update state
stateNext = state(enter);
enter = false;

superAttack++;