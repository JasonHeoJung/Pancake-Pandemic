if (!global.shopOpened)
{
	surface = surface_create(room_width, room_height);
	surface_copy(surface, 0, 0, application_surface);
	instance_deactivate_object(obj_Wave);
	instance_deactivate_object(obj_pause);
	global.playerspeed = 0
	global.shopOpened = true;
}

else if (global.shopOpened)
{
	global.shopOpened = false;
	global.playerspeed = savedspeed;
	instance_activate_object(obj_Wave);
	instance_activate_object(obj_pause);
}
