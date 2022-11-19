function bossBar(n, pv, mpv, barColor){
	draw_set_color(c_grey);
	draw_rectangle(374, 30*n, display_get_width()-50, 30*n + 24, false);
	
	draw_set_color(barColor);
	
	var t = (pv/mpv)*(display_get_width()-444);
	draw_rectangle(384, 30*n + 4, t, 30*n + 20, false);
	
	draw_set_color(c_white);
}