function GetInputs () {
	ini_open("save.ini");
	gotPickaxe = bool(ini_read_real("Save", "gotPickaxe", 0));
	gotFire = bool(ini_read_real("Save", "gotFire", 0));

	leftKey = ini_read_real ("Controls", "left", 0);
	interactKey = ini_read_real ("Controls", "interact", 0);
	rightKey = ini_read_real ("Controls", "right", 0);
	downKey = ini_read_real ("Controls", "crouch", 0);
	dashKey = ini_read_real ("Controls", "dash", 0);
	attackKey = ini_read_real ("Controls", "attack", 0);
	spell_key = ini_read_real ("Controls", "spell", 0);
	switchWeaponsKey = ini_read_real ("Controls", "switchWeapon", 0);
	switchSpellsKey = ini_read_real ("Controls", "switchSpell", 0);
	jumpKey = ini_read_real ("Controls", "jump", 0);
	ini_close();
}