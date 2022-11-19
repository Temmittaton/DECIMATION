gpu_set_blendmode_ext(bm_one, bm_zero);
draw_surface_ext(application_surface,con_screenShake.xOffset,con_screenShake.yOffset,cameraSize,cameraSize,0,c_white,1);
gpu_set_blendmode(bm_normal);

if (fade > 0){
	draw_set_color(c_black);
	draw_set_alpha(fade/30);
	draw_rectangle(0, 0, display_get_width(), display_get_height(), false);
	fade--;
	draw_set_color(c_white);
	draw_set_alpha(1);
}