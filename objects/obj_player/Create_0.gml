hp = 3;
maxmana = 150;
mana = maxmana;
coldness = 0;
coyote = 0;

enter = false;
state = noone;
if (global.respawnRoom != room){
	stateNext = player_cinematic;
}
else {
	stateNext = player_spawn;
}

xspd = 1.5;
yspd = 0;
walkspd = 2;
grav = 0.5;
knockback = 0;
invincibility = 0;
dmg = 0;

dash = 0;
dashtmr = 0;
attackTmr = 0;

ini_open("save.ini");
gotPickaxe = bool(ini_read_real("Save", "gotPickaxe", 0));
gotFire = bool(ini_read_real("Save", "gotFire", 0));

leftKey = ini_read_string("Controls", "left", "Error");
interactKey = ini_read_string("Controls", "interact", "Error");
dashKey = ini_read_string("Controls", "dash", "Error");
ini_close();

if (!variable_global_exists ("selectedWeapon")) {
	global.selectedWeapon = 0;
}
if (!variable_global_exists ("selectedSpell")) {
	global.selectedSpell = 0;
}

weaponSprite = [spr_player_attack, spr_player_pickaxe];
