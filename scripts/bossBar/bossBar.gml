function bossBar(n, pv, mpv, barColor){
	draw_sprite_stretched(spr_hud_bossBar_fond, 0, 374, 64*n - 48, 1194, 48);
	
	draw_set_color(barColor);
	
	var t = (pv/mpv)*(1170);
	draw_rectangle(386, 64*n - 36, 386 + t, 64*n - 12, false);
	
	draw_set_color(c_white);
}