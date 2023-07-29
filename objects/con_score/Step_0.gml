if (room != ScoreRoom) {
	for (var i = 0; i < array_length (ennemies); i++) {
		if (ennemies [i] == noone) {
			continue;
		}
		if (!instance_exists (ennemies [i])) {
			
			ennemiesKilled ++;
			ennemies [i] = noone;
		}
	}
}