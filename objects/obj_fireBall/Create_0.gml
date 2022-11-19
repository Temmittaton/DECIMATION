var _list = ds_list_create();
collision_point_list(x, y, obj_fireMage, false, false, _list, false);

caster = _list[| 0].id;

speed = caster.image_xscale*3;
image_xscale = caster.image_xscale;

dispersion = 0;