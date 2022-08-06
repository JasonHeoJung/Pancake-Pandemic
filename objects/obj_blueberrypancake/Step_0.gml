 /// @description 
// You can write your code in this editor

//move towards player

target = obj_player;

if (point_distance(x,y, target.x,target.y) >= 400){
	move_towards_point(target.x, target.y, self.speed);
}
else
{
	speed = 0;
	if (alarm[0] == -1){
		alarm[0] = 50
	}
}

//flash fade away
if (flashAlpha > 0){
	flashAlpha -= 0.5;
}