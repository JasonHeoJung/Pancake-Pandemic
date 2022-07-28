/// @description Insert description here
// You can write your code in this editor

target = obj_player;

if (distance_to_object(obj_player) > 10){
	move_towards_point(target.x, target.y, 3);
}
else{
	speed = 0;
}	


//on hit flash
if (flashAlpha > 0){
	flashAlpha -= 0.5;
}
  