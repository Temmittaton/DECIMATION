function ennemy_damage_sfx(){
	var _rand = irandom(5);
	if (_rand == 5){
		audio_play_sound(sfx_soldierDamage3, 1, false);
	}
	else if (_rand == 4){
		audio_play_sound(sfx_soldierDamage2, 1, false);
	}
	else if (_rand == 3){
		audio_play_sound(sfx_soldierDamage1, 1, false);
	}
}