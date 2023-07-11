// Change state if needed, call enter / exit
if (state != stateNext)	{
	state = stateNext;
	enter = true;
}

// Update state
stateNext = state(enter);
enter = false;

if (collision_rectangle(x - 8, y - 6, x + 8, y - 2, obj_player, false, true)) && (obj_player.yspd > 1){
	instance_create_layer(x, y, "Items", obj_ant_cadaver);
	obj_player.yspd = -2;
	screen_shake(8, 4);
	audio_play_sound(sfx_crushed, 1, false);
	instance_destroy();
}
else if ((place_meeting(x, y, obj_player)) && (state == ennemy_chase)){
	obj_player.dmg = id;
}

if (state == ennemy_chase) {
	image_blend = c_red;
}