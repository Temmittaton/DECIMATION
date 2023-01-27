if (place_meeting(x, y, obj_player)){
	obj_player.gotPickaxe = true;
	ini_open("save.ini");
	ini_write_real("Save", "gotPickaxe", 1);
	ini_close();
	instance_destroy();
}
if (!place_meeting(x, y+1, par_solid)) {
	y++;
}