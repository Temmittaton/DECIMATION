// Damage
if (dmg or pdmg or udmg){
	instance_destroy();
}

if (hp < 1) or (y>=room_height){
	instance_destroy();
}