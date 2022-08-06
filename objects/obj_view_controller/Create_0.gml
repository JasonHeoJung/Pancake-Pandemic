var_room_startig_wport = view_wport[0];
var_room_startig_hport = view_hport[0];

view_visible[0] = true;

view_wport[0] = display_get_width();
view_hport[0] = display_get_height();

window_set_size(1920, 1080)

global.var_aspect_ratio_x = abs((var_room_startig_wport/view_wport[0]) - 1)
global.var_aspect_ratio_y = abs((var_room_startig_hport/view_hport[0]) - 1)

window_center()

if (view_wport[0] != surface_get_width(application_surface) || view_hport[0] != surface_get_height(application_surface))
{
	surface_resize(application_surface,view_wport[0],view_hport[0]);
}