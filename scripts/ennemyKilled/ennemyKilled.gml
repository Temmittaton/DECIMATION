function ennemyKilled (n) {
	score += n;
	if (obj_player.state == player_gloryKill or obj_player.state == player_gloryKill2) {
		score += 50;
	}
	else if (obj_player.state == player_groundPound) {
		score += 25;
	}
}