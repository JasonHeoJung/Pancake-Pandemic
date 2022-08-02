target = obj_player;

if (dead == false){
	move_towards_point(target.x, target.y, 4);
} 
//on hit flash
if (flashAlpha > 0){
	flashAlpha -= 0.5;
}
  