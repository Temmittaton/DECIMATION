image_index = level-1;
alpha = 0;

if (global.clearedLevel>=level){
	sprite_index = spr_lvl_fire;
}
if (global.currentLevel == level) {
	obj_player.x = x + 8;
	obj_player.y = y - 16;
}