if (shop_opened)
{
	shop_opened = false;
	global.playerspeed = stop;
	instance_activate_object(obj_pause);
}
