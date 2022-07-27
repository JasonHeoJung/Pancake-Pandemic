/// @description Insert description here
// You can write your code in this editor
up_key = keyboard_check_pressed(vk_up);
down_key = keyboard_check_pressed(vk_down);
accept_key = keyboard_check_pressed(vk_space);

//Select Options in Menu
pos += down_key - up_key;
if pos >= op_length {pos = 0};
if pos < 0 {pos = op_length-1};

if accept_key {
	switch(pos){
		//Start Game
		case 0:
			room_goto_next();
			break;
			
		//Settings
		case 1:
			break;
				
		//Quite Game
		case 2:
			game_end();
			break;
	}
}