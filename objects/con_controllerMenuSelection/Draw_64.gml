if (check) {
	/*if (room != Menu) && (light) {
		if (con_lightSetup.paused) {
			buttons [0] = instance_find (obj_button_quitToMenu, 0);
			buttons [1] = instance_find (obj_button_quitLevel, 0);
			buttons [2] = instance_find (obj_button_unpause, 0);
		}
	}*/
	
	if (room != Menu) && (light) {
		if (con_lightSetup.paused) {
			var _x = buttons [button].x + buttons [button].sprite_width * buttons [button].image_xscale * 3;
			var _y = buttons [button].y + buttons [button].sprite_height * buttons [button].image_yscale * 1.5;
		
			draw_sprite_ext (spr_sword, 0, _x, _y, .25, .25, 0, c_white, 1);
	
			if (gamepad_button_check_pressed (device, gp_face2)) {
				buttons [button].click = true;
			}
		}
	}
}