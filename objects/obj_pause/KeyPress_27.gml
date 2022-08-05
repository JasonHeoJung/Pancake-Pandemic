if (!global.gamePaused){
	surface_copy(surface, 0, 0, application_surface);
	instance_deactivate_all(true);
	global.gamePaused = true;
}