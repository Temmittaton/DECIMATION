ini_open("save.ini");
if !file_exists("save.ini"){
	ini_write_real("Controls", "keyboardType", 0);
	ini_write_string("Controls", "left", "Q");
	ini_write_string("Controls", "right", "D");
	ini_write_string("Controls", "interact", "Z");
	ini_write_string("Controls", "crouch", "S");
	ini_write_real("Controls", "attack", vk_enter);
	ini_write_real("Controls", "spell", vk_shift);
	ini_write_real("Controls", "switch weapon", vk_tab);
	ini_write_real("Controls", "switch spell", vk_lalt);
	ini_write_string("Controls", "dash", "A");
	ini_write_real("Controls", "jump", vk_space);
	
	ini_write_real("Save", "clearedLevel", 0);
	ini_write_real("Save", "gotPickaxe", 0);
	ini_write_real("Save", "gotFire", 0);
}
global.clearedLevel = ini_read_real("Save", "clearedLevel", 0);
global.currentLevel = 0;

if instance_exists(obj_player){
	obj_player.leftKey = ini_read_real("Controls", "left", "Error");
	obj_player.interactKey = ini_read_real("Controls", "interact", "Error");
	obj_player.dashKey = ini_read_real("Controls", "dash", "Error");
}

ini_close();

// Player Respawn
respawnX = 0;
respawnY = 0;
respawnRoom = 0;