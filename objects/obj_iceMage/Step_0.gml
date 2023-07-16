// Next state choose
if (iceMage_choose()){
	stateNext = iceMage_choose();
}

// Change state if needed, call enter / exit
if (state != stateNext)	{
	state = stateNext;
	enter = true;
}

// Update state
stateNext = state(enter);
enter = false;

if (state != iceMage_attack) {
	audio_stop_sound (sfx_iceMage_attack);
}