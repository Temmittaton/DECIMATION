function clicked() {
	if (flown_over() && (mouse_check_button_pressed(mb_left))) {
		audio_play_sound(sfx_click, 1, false);
		return true;
	}
	else {
		return false;
	}
}

function flown_over() {
	if (mouse_x >= x && mouse_x <= x + sprite_width && mouse_y >= y && mouse_y <= y + sprite_height) {
        return true;
    }
    return false;
}