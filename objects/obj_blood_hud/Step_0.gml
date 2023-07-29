x += xspd;
y += yspd;
yspd += .5;
if (y > room_height) {
	instance_destroy ();
}