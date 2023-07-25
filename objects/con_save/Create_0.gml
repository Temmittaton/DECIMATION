ini_open("save.ini");
if (!file_exists("save.ini")) {
    ini_write_real ("Controls", "keyboardType", 0);
    ini_write_real ("Controls", "left", $51);
    ini_write_real ("Controls", "right", $44);
    ini_write_real ("Controls", "interact", $5A);
    ini_write_real ("Controls", "crouch", $53);
    ini_write_real ("Controls", "attack", vk_enter);
    ini_write_real ("Controls", "spell", vk_shift);
    ini_write_real ("Controls", "switchWeapon", vk_tab);
    ini_write_real ("Controls", "switchSpell", vk_lalt);
    ini_write_real ("Controls", "dash", $41);
    ini_write_real ("Controls", "jump", vk_space);

    ini_write_real ("Save", "clearedLevel", 0);
    ini_write_real ("Save", "gotPickaxe", 0);
    ini_write_real ("Save", "gotFire", 0);
}
global.clearedLevel = ini_read_real("Save", "clearedLevel", 0);
global.currentLevel = 0;

if instance_exists(obj_player) {
    obj_player.leftKey = ini_read_real("Controls", "left", "Error");
    obj_player.interactKey = ini_read_real("Controls", "interact", "Error");
    obj_player.dashKey = ini_read_real("Controls", "dash", "Error");
}

ini_close();

// Player Respawn
global.respawnX = 0;
global.respawnY = 0;
global.respawnRoom = noone;