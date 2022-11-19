if (flown_over()){
	image_alpha = 0.8;
}
else {
	image_alpha = 1;
}

if (clicked()) or (keyboard_check_pressed(key)){
	if (global.clearedLevel == 0){
		room_goto(Tutorial);
	}
	else {
		room_goto(LevelSelection);
	}
}