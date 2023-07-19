gpu_set_blendmode_ext(bm_one, bm_zero);

var xZoom = (SCREEN_WIDTH/2) * (1-zoom) - (SCREEN_WIDTH/2);
var yZoom = (SCREEN_HEIGHT/2) * (1-zoom) - (SCREEN_HEIGHT/2);

draw_surface_ext(application_surface, con_screenShake.xOffset + xZoom, con_screenShake.yOffset + yZoom, k * (zoom+1), k * (zoom+1), 0, c_white, 1);
gpu_set_blendmode(bm_normal);

if (fade > 0) {
	draw_set_color(c_black);
	draw_set_alpha(fade/30);
	draw_rectangle(0, 0, SCREEN_WIDTH, SCREEN_HEIGHT, false);
	fade--;
	draw_set_color(c_white);
	draw_set_alpha(1);
}

draw_sprite_stretched(spr_hud_cadre, 0, 0, 0, SCREEN_WIDTH, SCREEN_HEIGHT);

if (zoom > 0){zoom -= 0.05;}

// Pause menu
if (pause > 0) {
	draw_sprite_ext(spr_pauseMenu_cadre, 0, pause, 0, RATIO, RATIO, 0, c_white, 1);
	draw_sprite_ext(spr_pauseMenu_cadre, 0, SCREEN_WIDTH - pause, 0, -RATIO, RATIO, 0, c_white, 1);
	draw_sprite_ext(spr_pauseMenu_fire, 0, pause, SCREEN_HEIGHT, RATIO, RATIO + sin(time)/64, 0, c_white, 0.75);
	draw_sprite_ext(spr_pauseMenu_redwind, 0, SCREEN_WIDTH - pause, 0, RATIO, RATIO, 0, c_white, 1);
	
	with (menuButton) {DrawQuitToMenuButton ();}
	with (levelButton) {DrawQuitLevelButton ();}
	with (unpauseButton) {DrawUnpauseButton ();}
}