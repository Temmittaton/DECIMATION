t --;
y -= .5;
draw_set_valign (fa_middle);
draw_set_halign (fa_center);
draw_text_transformed_color (x, y, s, .15 + t / 60, .15 + t / 60, 0, c_red, #dd1600, c_red, #dd1600, min (1, t / 30));
if (t <= 0) {
	instance_destroy ();
}