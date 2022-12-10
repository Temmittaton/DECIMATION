// Next state choose
if (scarab_choose()){
	stateNext = scarab_choose();
}

// Change state if needed, call enter / exit
if (state != stateNext)	{
	state = stateNext;
	enter = true;
}

// Update state
stateNext = state(enter);
enter = false;
