function grounded() {
	if (place_meeting(x, y + 2, par_solid)) {
		return true;
	}
	return false;
}