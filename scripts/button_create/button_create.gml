function button_create(obj, posX, posY, scale){
	var _button = instance_create_layer(vx + posX, vy + posY, "Controllers", obj);
	_button.image_xscale = scale;
	_button.image_yscale = scale;
}