if (place_meeting(x, y, obj_player)){
	obj_player.gotFire = true;
	ini_open("save.ini");
	ini_write_real("Save", "gotFire", 1);
	ini_close();
	instance_destroy();
}

u += 0.05;
y = _y + sin(u) * 2;
size += sin(u) * 64;