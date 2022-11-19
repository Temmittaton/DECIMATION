function player_pressedInput(){
	return sign(leftKeyPressed + rightKeyPressed + downKeyPressed + spellKeyPressed + interactKeyPressed + dashKeyPressed + attackKeyPressed)
}