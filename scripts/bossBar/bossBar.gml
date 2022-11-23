function bossBar(n, pv, mpv, barColor){
	draw_set_color(c_grey);
	draw_rectangle(374, 32*n, display_get_width()-32, 32*n + 32, false);
	
	draw_set_color(barColor);
	
	var t = (pv/mpv)*(display_get_width() - 422);
	draw_rectangle(388, 30*n + 4, 384 + t, 30*n + 20, false);
	
	draw_set_color(c_white);
}