var _caster = collision_point(x, y, obj_iceMage, false, true);

if (instance_exists(_caster)){
	speed = _caster.image_xscale * random_range(2.5, 3.5);
}
else {
	dispersion = 200;
	lifetime = -1;
	speed = random_range(-0.1, 0.1);
	dis = 0.5;
}


image_blend = ($FFFFFFFF - irandom(1024));

dis = random_range(-1, 1);
dispersion = 0;
lifetime = 13 + irandom(7);