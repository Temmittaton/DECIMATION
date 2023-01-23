// Next state choose
if (chenille_choose()){
	stateNext = chenille_choose();
}

// Change state if needed, call enter / exit
if (state != stateNext)	{
	state = stateNext;
	enter = true;
}

// Update state
stateNext = state(enter);
enter = false;

var _c = [x, y];

for (i = 0; i < num; i++) {
	var __c = [inst[i].x, inst[i].y];
	
	if (point_distance(_c[0], _c[1], __c[0], __c[1]) > 8) {
		inst[i].x += (_c[0] - __c[0]) / 4;
		inst[i].y += (_c[1] - __c[1]) / 4;
	}
	_c = __c;
}