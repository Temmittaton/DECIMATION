// Next state choose
if (fireMage_choose()){
	stateNext = fireMage_choose();
}

// Change state if needed, call enter / exit
if (state != stateNext)	{
	state = stateNext;
	enter = true;
}

// Update state
show_debug_message(string(state))
stateNext = state(enter);
enter = false;
