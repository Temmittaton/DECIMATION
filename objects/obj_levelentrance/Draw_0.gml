var _px = obj_player.x;
var _py = obj_player.y;

if (_px > x) && (_px < x+sprite_width){
	image_blend = make_colour_rgb(255, 200, 200);
	
	draw_sprite_ext(spr_lvl_poppup, level-1, _px, _py-8, 1, 1, 0, c_white, alpha);
	
	if (global.clearedLevel+1<level){
		draw_sprite_ext(spr_lvl_lock, 0, _px, _py-8, 1, 1, 0, c_white, alpha-0.2);
		if (keyboard_check_pressed(vk_enter)){
			screen_shake(10, 4);
			audio_play_sound(sfx_error, 1, false);
		}
	}
	else if (global.clearedLevel>=level){
		if (keyboard_check(vk_enter)){
			room = target;
			global.currentLevel = level;
		}
	}
	else {
		if (keyboard_check(vk_enter)){
			room = target;
			global.currentLevel = level;
		}
	}
	if (alpha < 1.2){
		alpha += 0.08;
	}

}
else {
	image_blend = c_white;
	alpha = 0;
}

draw_self();