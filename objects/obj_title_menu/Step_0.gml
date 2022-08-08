/// @description Insert description here
// You can write your code in this editor
up_key = keyboard_check_pressed(vk_up) or keyboard_check_pressed(ord("W"));
down_key = keyboard_check_pressed(vk_down) or keyboard_check_pressed(ord("S"));
accept_key = keyboard_check_pressed(vk_space) or keyboard_check_pressed(vk_enter);

if (up_key || down_key){audio_play_sound(snd_menuOptions, 1000, false);}
if (accept_key){audio_play_sound(snd_select, 1000, false);}

//Store number of options in current menu
op_length = array_length(option[menu_level])
//Select Options in Menu
pos += down_key - up_key;
if pos >= op_length {pos = 0};
if pos < 0 {pos = op_length-1};

if accept_key {
	
	var _sml = menu_level;
	
	switch(menu_level){
		//pause menu
		case 0:
		switch(pos){
			//Start Game
			case 0: room_goto_next(); break;
			//Credits
			case 1: menu_level = 1 break;
			//Quit Game
			case 2: game_end(); break;
		}
		//Credits
		case 1:
			switch(pos){
				case 0:
					break;
				case 1:
					break;
				case 2:
					break;
				case 3:
					break;
				case 4:
					break;
				//back
				case 5:
					menu_level = 0;
					break;
			}
	}
	if _sml != menu_level{pos = 0};
		
	//correct option length
	op_length = array_length(option[menu_level])
}

// Off Sound
if (audio_sound_get_gain(snd_MCombat) <= 0)
{
	audio_stop_sound(snd_MCombat);
}