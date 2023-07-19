function timers_decrement () {
	if (dashtmr>0){dashtmr--;}
	if (invincibility>0){invincibility--;}
	if (mana>maxmana){mana = maxmana;}
	//if (coyote>0){coyote--;}
}