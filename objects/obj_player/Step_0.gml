if (knockback == false){
	//move player in direction of key pressed
	if (keyboard_check(vk_left) or keyboard_check(ord("A"))){ //and not(keyboard_check(vk_right) or keyboard_check(ord("D")))) {
		hspeed = -global.playerspeed;
 	}

	if (keyboard_check(vk_right) or keyboard_check(ord("D"))){ //and not(keyboard_check(vk_left) or keyboard_check(ord("A")))) {
		hspeed = global.playerspeed;	
	}


	if (keyboard_check(vk_up) or keyboard_check(ord("W"))){
		vspeed = -global.playerspeed;
	}


	if (keyboard_check(vk_down) or keyboard_check(ord("S"))){
		vspeed = global.playerspeed;
	}

	//stop player from moving in direction if button released
	if (keyboard_check_released(vk_left) or keyboard_check_released(ord("A")) or  keyboard_check_released(vk_right) or keyboard_check_released(ord("D"))){
		hspeed = 0;	
	}

	if (keyboard_check_released(vk_up) or keyboard_check_released(ord("W")) or keyboard_check_released(vk_down) or keyboard_check_released(ord("S"))){
		vspeed = 0;
	}
}
 
//animation code
if (speed > 0){
	sprite_index = spr_PlayerMoving;
	image_speed = 0.5;
}
else {
	sprite_index = spr_PlayerIdle;
}

//on hit flash
if (flashAlpha > 0){
	flashAlpha -= 0.05;
}

if (global.playerhealth <= 0){
	room_restart();
	room_goto(rm_gameover);
} 

//direction character is facing
var _dir = point_direction(x,y,mouse_x,mouse_y);

if (_dir <= 90 or _dir >= 270){ 
	image_xscale = 1;
}
else{
	image_xscale = -1;
}

