
// Selected Weapon
if ((weaponChangeKeyPressed) && (gotPickaxe)) {
	selectedWeapon++;
	if (selectedWeapon == 2) {
		selectedWeapon = 0
		audio_play_sound (sfx_attack, .6, false);
	}
	else {audio_play_sound (sfx_swapWeapons, .6, false);}
}
// Selected Spell
if ((spellChangeKeyPressed) && (gotFire)) {
	selectedSpell++;
	if (selectedSpell == 2){selectedSpell = 0}
	audio_play_sound (sfx_swapSpells, .6, false);
}

// Coldness
if (coldness > 0) {
	if (coldness > 128) {
		coldness = 128;
		
		if (invincibility == 0) {
			hp--;
			screen_shake(8, 16);
			invincibility = 20;
		}
	}
	image_blend = (c_white - coldness);
	coldness -= 0.5;
}