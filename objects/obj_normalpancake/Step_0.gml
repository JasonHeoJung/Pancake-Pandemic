/// @description Insert description here
// You can write your code in this editor

target = obj_player;
move_towards_point(target.x, target.y, 3);

//on hit flash
if (flashAlpha > 0){
	flashAlpha -= 0.5;
}
