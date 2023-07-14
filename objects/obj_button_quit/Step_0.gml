function Click () {
	game_end ();
}

if (flown_over()){
	image_alpha = 0.8;
}
else {
	image_alpha = 1;
}

if (clicked()){
	Click ();
}