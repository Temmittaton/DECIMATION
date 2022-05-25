// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function animation_end()
{
	if image_speed > 0
	{
	    if (image_index + image_speed >= image_number-1){
			return true;
		}
	}
	return false;
}