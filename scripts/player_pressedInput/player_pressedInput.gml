function player_pressedInput () {
	return sign(leftKeyPressed + rightKeyPressed + downKeyPressed + interactKeyPressed + dashKeyPressed + attackKeyPressed + jumpKeyPressed);
}