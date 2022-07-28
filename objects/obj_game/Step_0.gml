if (keyboard_check_pressed(ord("P"))){
	paused = true;
	if paused == false{
		instance_activate_all();
		surface_free(paused_surf);
			paused_surf = -1;
	}	
}

if paused == true
{
	alarm[0]++;
	alarm[1]++;
}

