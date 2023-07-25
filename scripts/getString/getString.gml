function getString (key) {
	switch (key) {
		case (vk_enter):
			return "Enter";
			break;
		case (vk_space):
			return "Space";
			break;
		case (vk_shift):
			return "Shift";
			break;
		case (vk_lshift):
			return "Left Shift";
			break;
		case (vk_alt):
			return "Alt";
			break;
		case (vk_lalt):
			return "Left Alt";
			break;
		case (vk_control):
			return "Control";
			break;
		case (vk_delete):
			return "Delete";
			break;
		case (vk_left):
			return "Left";
			break;
		case (vk_right):
			return "Right";
			break;
		case (vk_up):
			return "Up";
			break;
		case (vk_down):
			return "Down";
			break;
		case (vk_tab):
			return "Tab";
			break;
	}
	return "Not Supported :(";
}