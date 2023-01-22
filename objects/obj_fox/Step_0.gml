// Next state choose
if (state == mob_idle) && (point_distance(obj_player.x, obj_player.y, x, y)<96){
	stateNext =  mob_flee;
}

// Change state if needed, call enter / exit
if (state != stateNext)	{
	state = stateNext;
	enter = true;
}

// Update state
stateNext = state(enter);
enter = false;

if (x + xspd > room_width) or (x + xspd < 0){
	instance_destroy();
}