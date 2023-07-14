function screen_shake(duration, strengh, _x = -1){
	con_screenShake.duration = duration;
	con_screenShake.strength = strengh;
	
	/*if (gamepad_is_connected (0)) {
		if (_x == -1) {
			gamepad_set_vibration (0, strengh, strength);
			return noone;
		}
		//gamepad_set_vibration (0, );
	}*/
}