draw_sprite_ext(spr_logo, subImg, 960, 540, 8, 8, 0, c_white, 1);
subImg+=spd;
if (subImg>31) or (keyboard_check(vk_anykey)) or (mouse_check_button(mb_any)) {
	room = Menu;
}