if (xspd != 0)	{
	image_xscale = sign(xspd);
}

// Collisions horizontales
repeat(abs(xspd))	{
	if (place_meeting(x + sign(xspd), y, par_solid) && !place_meeting(x + sign(xspd), y - 1, par_solid)){
		y -= 1;
    }
    if (place_meeting(x + sign(xspd), y + 2, par_solid) && !place_meeting(x + sign(xspd), y + 1, par_solid)){
		y += 1;
    }
	if place_meeting(x+sign(xspd), y, par_solid){
		xspd = 0;
	}
	else	{x += sign(xspd);}
}

// Collisions verticales
repeat(abs(yspd)){
	if (place_meeting(x, y+sign(yspd), par_solid)){
		yspd = 0;
	}
	else	{y+=sign(yspd);}
}
