if (xspd != 0)	{image_xscale = sign(xspd);}
if (place_meeting(x, y, par_solid))	{y--;}

// Collisions horizontales
repeat(abs(xspd))	{
	if (place_meeting(x + sign(xspd), y, par_solid) && !place_meeting(x + sign(xspd), y - 1, par_solid)){
		y -= 1;
    }
    if (place_meeting(x + sign(xspd), y + 2, par_solid) && !place_meeting(x + sign(xspd), y + 1, par_solid)){
		y += 1;
    }
	if place_meeting(x+sign(xspd), y, par_solid) or (x + xspd < 0) or (x + xspd > room_width){
		xspd = 0;
	}
	else	{x += sign(xspd)*0.6;}
}

// Collisions verticales
repeat(abs(yspd)){
	if (place_meeting(x, y+sign(yspd), par_solid)){
		yspd = 0;
	}
	else	{y+=sign(yspd);}
}
