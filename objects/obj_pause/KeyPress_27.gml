if (!global.gamePaused){
	if !surface_exists(surface)
	{
		surface = surface_create(room_width, room_height);
	}
	surface_copy(surface, 0, 0, application_surface);
	instance_deactivate_all(true)
	global.gamePaused = true;
}