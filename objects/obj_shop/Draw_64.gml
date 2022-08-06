if (shop_opened = true)
{
	draw_set_font(global.font_main_big);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	
	draw_text(room_width * 0.5, room_height * 0.5 - 100, "Shop")
	
	for (var i = 0; i < array_length(weapons); i++)
	{
		var _print = "";
		var _cost = "";
		var _c = c_white;
		if (i == weaponsSelect)
		{
			_cost = cost[i]
			_print += "> " + weapons[i] + " <";
			_c = c_yellow
		}
		else
		{
			_print += weapons[i];
			draw_set_alpha(0.7);
		}
		draw_text_color(room_width * 0.5, room_height * 0.5 + 70 + (i * 70),_print,_c,_c,_c,_c, 1);
		draw_text_color(room_width * 0.5 + 300, room_height * 0.5 + 70,_cost,_c,_c,_c,_c, 1);
		draw_text_color(room_width * 0.5 + 300, room_height * 0.5 + 70 + 70,msg,_c,_c,_c,_c, 1);
		draw_set_alpha(1);
	}
}
