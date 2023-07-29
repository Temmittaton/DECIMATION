function Click () {
	ini_open ("save.ini");
	
	global.clearedLevel = 0;
    ini_write_real ("Save", "clearedLevel", 0);
	ini_write_real ("Save", "gotFire", 0);
	ini_write_real ("Save", "gotPickaxe", 0);
	
	ini_close ();
}

if (flown_over ()) {
	sprite_index = spr_clear_save2;
}
else {
	sprite_index = spr_clear_save;
}

if (clicked ()) {
	Click ();
}