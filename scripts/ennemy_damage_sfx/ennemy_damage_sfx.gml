function ennemy_damage_sfx(){
	var _rand = irandom(90);
	if (_rand < 30){
		audio_play_sound(sfx_soldierDamage3, 1, false);
	}
	else if (_rand < 60){
		audio_play_sound(sfx_soldierDamage2, 1, false);
	}
	else {
		audio_play_sound(sfx_soldierDamage1, 1, false);
	}
}