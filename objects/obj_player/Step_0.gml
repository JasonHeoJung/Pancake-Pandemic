if (knockback == false){
	//move player in direction of key pressed
	if (keyboard_check(vk_left) or keyboard_check(ord("A"))){ //and not(keyboard_check(vk_right) or keyboard_check(ord("D")))) {
		image_xscale = -1;
		hspeed = -global.playerspeed;
	}

	if (keyboard_check(vk_right) or keyboard_check(ord("D"))){ //and not(keyboard_check(vk_left) or keyboard_check(ord("A")))) {
		image_xscale = 1;
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
//shooting code
if (mouse_check_button_pressed(mb_left) and alarm[1] == -1){
	var bullet = instance_create_layer(x,y,"Instances", obj_bullet);
	bullet.direction = point_direction(x,y,mouse_x,mouse_y);
	bullet.image_angle = bullet.direction;
	alarm[1] = global.playerfirerate;
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
	flashAlpha -= 0.1;
}

if (global.playerhealth <= 0){
	room_restart();
	room_goto(rm_gameover);
} 
