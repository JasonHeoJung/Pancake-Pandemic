if (shop_opened)
{
	draw_surface(surface, 0, 0);
	draw_set_color(c_black);
	draw_set_alpha(0.75);
	draw_rectangle(0, 0, room_width, room_height, false);
	draw_set_alpha(1.0);
	draw_set_color(c_white);
}