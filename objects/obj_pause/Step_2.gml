if (global.gamePaused)
{
	keyUp = keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W"));
	keyDown = keyboard_check_pressed(vk_down) || keyboard_check_pressed(ord("S"));
	if (keyUp || keyDown){audio_play_sound(snd_menuOptions, 1000, false);}
	
	pauseOptionSelected += (keyDown - keyUp);
	if (pauseOptionSelected >= array_length(pauseOption)) pauseOptionSelected = 0;
	if (pauseOptionSelected < 0) pauseOptionSelected = array_length(pauseOption) -1;
	
	keyActivate = keyboard_check_pressed(vk_space) || keyboard_check_pressed(vk_enter);
	if (keyActivate){audio_play_sound(snd_select, 1000, false);}
	if (keyActivate)
	{
		switch (pauseOptionSelected)
		{
			case 0: //Continue
			{
				global.gamePaused = false;
				instance_activate_all();
				instance_deactivate_object(obj_Weapon);
			}break;
			case 1:
			{
				surface_free(surface);
				room_goto(rm_title_screen);
			}break;
		}
	}
}