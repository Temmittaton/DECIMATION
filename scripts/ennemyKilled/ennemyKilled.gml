function ennemyKilled (n) {
	var _s = n;
	if (obj_player.state == player_gloryKill or obj_player.state == player_gloryKill2) {
		_s += 50;
	}
	else if (obj_player.state == player_groundPound) {
		_s += 25;
	}
	
	score += _s;
	var _e = instance_create_layer (x, y, "Items", obj_score);
	_e.s = _s;
	_e.t = _s * .25 + 25;
}