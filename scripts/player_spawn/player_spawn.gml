// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function player_spawn(enter){
	if (enter)
	{
		image_index = spr_player_spawn;
		mana = maxmana;
		x = respawnx;
		y = respawny;
	}
	
	if (animation_end())	
	{
		return player_idle;
	}
	
	return player_spawn;
}