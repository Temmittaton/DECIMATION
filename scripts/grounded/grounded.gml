// Les actifs du script ont changé pour v2.3.0 Voir
// https://help.yoyogames.com/hc/en-us/articles/360005277377 pour plus d’informations
function grounded(){
	if (place_meeting(x, y + 1, par_solid)){
		return true
	}
	return false
}