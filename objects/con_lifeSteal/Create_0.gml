if (obj_player.mana <= 0) {
	instance_destroy ();
}
else {
	life = obj_player.mana;
	obj_player.mana = 0;
	check = true;
	n = life;
}