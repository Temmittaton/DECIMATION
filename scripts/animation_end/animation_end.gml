function animation_end()
{
	if (image_speed > 0)
	{
	    if (image_index + image_speed >= image_number-1){
			return true;
		}
	}
	return false;
}