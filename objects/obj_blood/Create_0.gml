var rand = irandom_range(0,360);
if (rand<160){
	sprite_index = spr_blood1;
}
else {
	sprite_index = spr_blood2;
}

speed = random_range(2,4);
direction = rand;
check = true;