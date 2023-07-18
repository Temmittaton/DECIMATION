if instance_exists(obj_player){
	if (con_controllerMenuSelection.device != noone) {
		weaponSprite = spr_hud_weaponSelector_controller;
		spellSprite = spr_hud_manabar_controller;
	}
	else {
		weaponSprite = spr_hud_weaponSelector;
		spellSprite = spr_hud_manaBar;
	}
	
	// Health Bar
	draw_sprite_stretched(spr_hud_healthbar, obj_player.hp, xOffset, yOffset, 32*hudScale, 32*hudScale);
	
	// Weapon Selector
	if (obj_player.gotPickaxe){
		draw_sprite_stretched(weaponSprite, global.selectedWeapon, xOffset + (32*hudScale), yOffset+24, 24*hudScale, 16*hudScale);
	}
	
	// Mana
	for (i = 0; i<obj_player.mana/10; i++){
		draw_sprite_ext(spr_hud_mana, 0, xOffset+36, yOffset+(32*hudScale)+96-i*6, hudScale, hudScale, 0, c_white, 0.8);
	}
	
	// Mana Bar
	draw_sprite_stretched(spellSprite, 0, xOffset+24, yOffset+(32*hudScale), 22*hudScale, 20*hudScale);
	
	if (!obj_player.gotFire){
		draw_sprite_stretched(spr_hud_spell, 0, 108, 230, 48, 90);
	}
	else if (global.selectedSpell == 0){
		draw_sprite_stretched(spr_hud_spell, 1, 108, 230, 48, 90);
	}
	else if (global.selectedSpell == 1){
		draw_sprite_stretched(spr_hud_spell, 2, 108, 230, 48, 90);
	}
}