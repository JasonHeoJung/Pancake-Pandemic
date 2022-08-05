if (global.gamePaused){
	draw_surface(surface, 0, 0);
	draw_set_color(c_black);
	draw_set_alpha(0.75);
	draw_rectangle(0, 0, room_width, room_height, false);
	draw_set_alpha(1.0);
	draw_set_color(c_white);
	draw_set_font(global.font_main_big);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	
	draw_text(room_width * 0.5, room_height * 0.5 - 100, "...Game Paused...")
	
	for (var i = 0; i < array_length(pauseOption); i++)
	{
		var _print = "";
		var _c = c_white;
		if (i == pauseOptionSelected)
		{
			_print += "> " + pauseOption[i] + " <";
			_c = c_yellow
		}
		else
		{
			_print += pauseOption[i];
			draw_set_alpha(0.7);
		}
		draw_text_color(room_width * 0.5, room_height * 0.5 + 70 + (i * 70),_print,_c,_c,_c,_c, 1);
		draw_set_alpha(1);
	}
}