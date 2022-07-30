if (state == playing){
	surface_copy(surface, 0, 0, application_surface);
	instance_deactivate_all(true);
	state = paused;
}
else if (state == paused){
	instance_activate_all();
	state = playing;
}




