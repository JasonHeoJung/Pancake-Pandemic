draw_set_font(global.font_main);
draw_set_color(c_white);
draw_set_halign(fa_center);
draw_set_valign(fa_top);
draw_text(267, 250, print);

if (holdspace > 0)
{
	draw_set_alpha(Wave(0.2,0.8,1,0));
	draw_text(267, 270, "Hold space to skip");
	draw_set_alpha(1);
}

draw_sprite_ext(spr_pixel,0,0,0,room_width,room_height,0,c_black,a);