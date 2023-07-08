//if (keyboard_check_pressed(ord("R"))){game_restart()}

// Selected Weapon
if (keyboard_check_pressed(vk_tab) && (gotPickaxe)){
	selectedWeapon++;
	if (selectedWeapon == 2){selectedWeapon = 0}
	audio_play_sound(sfx_swapWeapons, .6, false);
}
// Selected Spell
if (keyboard_check_pressed(vk_alt) && (gotFire)){
	selectedSpell++;
	if (selectedSpell == 2){selectedSpell = 0}
	audio_play_sound(sfx_swapSpells, .6, false);
}

// Coldness
if (coldness > 0){
	if (coldness > 128){
		coldness = 128;
		
		if (invincibility == 0){
			hp--;
			screen_shake(8, 16);
			invincibility = 20;
		}
	}
	image_blend = c_white - coldness;
	coldness -= 0.5;
}