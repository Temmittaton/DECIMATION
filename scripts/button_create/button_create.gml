function button_create(obj, posX, posY, scale){
	var _button = instance_create_layer(posX, posY, "Controllers", obj);
	_button.image_xscale = scale;
	_button.image_yscale = scale;
	return _button;
}