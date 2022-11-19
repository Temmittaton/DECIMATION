if (place_meeting(x, y, obj_player)){
	obj_player.gotFire = true;
	instance_destroy();
}

u += 0.05;
y = _y + sin(u) * 2;