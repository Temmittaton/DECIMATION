// Damage
if (dmg or pdmg or udmg){
	ennemy_damage_sfx();
	instance_destroy();
}

if (hp < 1) or (y>=room_height){
	instance_destroy();
}