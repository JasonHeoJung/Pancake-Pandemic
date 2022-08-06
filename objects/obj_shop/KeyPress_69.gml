if (!shop_opened)
{
	shop_opened = true;
	global.playerspeed = 0;
	instance_deactivate_object(obj_pause);
}

else if (shop_opened)
{
	shop_opened = false;
	global.playerspeed = stop;
	instance_activate_object(obj_pause);
}


