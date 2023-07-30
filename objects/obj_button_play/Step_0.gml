function Click () {
	if (global.clearedLevel == 0){
		room_goto(Cinematic);
	}
	else {
		room_goto(LevelSelection);
	}
}

if (flown_over()){
	image_alpha = 0.8;
}
else {
	image_alpha = 1;
}

if (clicked()) or (keyboard_check_pressed(key)) {
	Click ();
}