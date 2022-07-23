/// @description Insert description here
// You can write your code in this editor

//move player in direction of key pressed
if (keyboard_check(vk_left) or keyboard_check(ord("A"))){ //and not(keyboard_check(vk_right) or keyboard_check(ord("D")))) {
	image_xscale = -2.5;
	hspeed = -5;
}

if (keyboard_check(vk_right) or keyboard_check(ord("D"))){ //and not(keyboard_check(vk_left) or keyboard_check(ord("A")))) {
	image_xscale = 2.5;
	hspeed = 5;
}


if (keyboard_check(vk_up) or keyboard_check(ord("W"))){
	vspeed = -5;
}


if (keyboard_check(vk_down) or keyboard_check(ord("S"))){
	vspeed = 5;
}

//stop player from moving in direction if button released
if (keyboard_check_released(vk_left) or keyboard_check_released(ord("A")) or  keyboard_check_released(vk_right) or keyboard_check_released(ord("D"))){
	hspeed = 0;	
}

if (keyboard_check_released(vk_up) or keyboard_check_released(ord("W")) or keyboard_check_released(vk_down) or keyboard_check_released(ord("S"))){
	vspeed = 0;
}

//stop player from moving if nothing is presesed
//if (keyboard_check(vk_nokey)) {
//	hspeed = 0;
//	vspeed = 0;
//}



          