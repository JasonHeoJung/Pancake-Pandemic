if (global.shopOpened)
{
	global.shopOpened = false;
	global.playerspeed = savedspeed;
	instance_activate_object(obj_Wave);
	instance_activate_object(obj_pause);
}
