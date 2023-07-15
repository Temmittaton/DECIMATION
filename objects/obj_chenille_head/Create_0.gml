enter = false;
state = noone;
stateNext = mob_idle;

xspd = 0;
yspd = 0;
hp = 1;

dmg = false;
pdmg = false;
udmg = false;
invincibility = 0;

knockback = 0;
grav = 0.5;

num = irandom_range(6, 10);
var _a = irandom_range(1, num-1);
inst = [];

for (i = 0; i < num; i++) {
	inst[i] = instance_create_layer(x - (i * image_xscale * 2), y, "Mobs", obj_chenille_body);
	inst[i].head = self;
	if (i == _a) {
		inst[i].armored = false;
	}
}