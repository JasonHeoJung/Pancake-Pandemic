target = obj_player;

move_towards_point(target.x, target.y, self.speed);
	 
//on hit flash
if (flashAlpha > 0){
	flashAlpha -= 0.5;
}
  




