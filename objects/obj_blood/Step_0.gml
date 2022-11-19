px = obj_player.x;
py = obj_player.y;

if (check){
	if (direction<270) && (direction>90){
		direction++;
	}
	else {
		direction--;
	}
	repeat(3){
		if (place_meeting(x, y, par_solid)){
			break;
		}
		y++;
	}
	
	if (place_meeting(x, y, par_solid)){
		check = false;
		speed = 0;
	}
}
else if (point_distance(x, y, px, py)<64){
	move_towards_point(px, py, 3);
	if (point_distance(x, y, px, py)<6){
		obj_player.mana+=0.2;
		instance_destroy();
	}
}