image_angle += 0.2;
if (image_angle > 360){image_angle = 0}
image_xscale = hp/3;
image_yscale = hp/3;

repeat(abs(xspd)){
	if (place_meeting(x + sign(xspd), y, par_solid)){
		hp--;
		if (hp <= 0){instance_destroy();}
		xspd = -xspd;
	}
	else {x += sign(xspd);}
}

repeat(abs(yspd)){
	if (place_meeting(x, y + sign(yspd), par_solid)){
		hp--;
		if (hp <= 0){instance_destroy();}
		yspd = -yspd;
		if (sign(yspd) == -1){
			instance_create_layer(x, y, "Projectiles", obj_fire);
		}
	}
	else {y += sign(yspd);}
}

var _c = collision_circle(x, y, 3*image_xscale, obj_player, false, false);
if (_c){
	obj_player.dmg = id;
}