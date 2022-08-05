if (!shop_opened)
{
	shop_opened = true;
	global.playerspeed = 0;
}

else if (shop_opened)
{
	shop_opened = false;
	global.playerspeed = stop;
}


