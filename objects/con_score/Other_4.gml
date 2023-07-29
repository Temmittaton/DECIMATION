i = 0;
ennemies = [];

with (par_ennemy) {
	if (id.object_index != obj_barrel) {
		other.ennemies [other.i] = id;
	
		other.i++;
	}
}

total += array_length (ennemies);

if (room == ScoreRoom) {
	a = 1 / - ennemiesKilled;
	b = 1 / - score;
	t1 = ennemiesKilled / 128;
	t2 = score / 128;
	x = 0;
}