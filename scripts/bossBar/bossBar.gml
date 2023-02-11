function bossBar(n, pv, mpv, barColor, size, length = 1) {
	var sW = display_get_width();
	
	var t = max((pv/mpv)*(sW - 432)*length, 0);
	var s = 8*size;
	var _y = (11*size)*n-s;
	draw_sprite_stretched_ext(spr_hud_bossBar, 0, 374, _y, t, s, barColor, 0.8);
	
	draw_sprite_stretched(spr_hud_bossBar_left, 0, 374, _y, s, s);
	draw_sprite_stretched(spr_hud_bossBar_mid, 0, 374 + s, _y, (sW - 416)*length - 2*s, s);
	draw_sprite_stretched(spr_hud_bossBar_right, 0, 326+(sW - 416)*length, _y, s, s);
}