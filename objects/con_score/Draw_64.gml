if (room == ScoreRoom) {
	x ++;
	var _w = display_get_width ();
	var _h = display_get_height ();
	
	if (showedEnnemiesKilled < ennemiesKilled) {
		showedEnnemiesKilled = round (a * x * x * t1 * t1 + 2 * x * t1);
		repeat (64) {
			instance_create_layer (_w / 2 + random_range (-16, 16), _h / 2 + 96 + random_range (-16, 16), "Instances", obj_blood_hud);
		}
	}
	if (showedScore < score) {
		showedScore = round (b * x * x * t2 * t2 + 2 * x * t2);
		repeat (64) {
			instance_create_layer (_w / 2 + random_range (-16, 16), _h / 2 + random_range (-16, 16), "Instances", obj_blood_hud);
		}
	}
	
	draw_set_font (fnt_gaharu);
	draw_set_halign (fa_center);
	draw_set_valign (fa_middle);
	draw_text_transformed_color (_w / 2, _h / 2, string (showedScore), 8, 8, 0, c_red, c_red, c_red, c_red, 1);
	draw_text_transformed_color (_w / 2, _h / 2 + 92 * ratio, string (showedEnnemiesKilled) + " / " + string (total), 4, 4, 0, c_red, c_red, c_red, c_red, 1);
}