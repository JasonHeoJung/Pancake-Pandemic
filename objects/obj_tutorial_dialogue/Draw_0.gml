textbox_x = camera_get_view_x(view_camera[0]) + 576;
textbox_y = camera_get_view_y(view_camera[0]) + 750;

if (setup == true)
{
	//draw the textbox background
	draw_sprite_ext(sprite_index, image_index, textbox_x , textbox_y - 10, textbox_width, textbox_height, 0, c_white, 0.8);

	//draw text
	draw_set_font(global.font_main_medium);
	draw_set_valign(fa_top);
	draw_set_halign(fa_middle);

	for (var i = 0; i < array_length(text); i ++)
	{
	draw_text(textbox_x + border + 355, textbox_y + border + line_sep*i, text[i])
	}
}
