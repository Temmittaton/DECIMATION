// Next state choose
if (soldier_choose()){
	stateNext = soldier_choose();
}

// Change state if needed, call enter / exit
if (state != stateNext)	{
	state = stateNext;
	enter = true;
}

// Update state
stateNext = state(enter);
enter = false;

show_debug_message(chaseSpeed);