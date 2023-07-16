if (gamepad_button_check (con_controllerMenuSelection.device, key)){
	image_index = 1;
}
else {image_index = 0;}

draw_self();
draw_set_halign(fa_center);
draw_set_font(fnt_pixeloid);
draw_text_transformed(x+(sprite_width/2), y+28, action + " : " + keyString, 1, 1, 0);