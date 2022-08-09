var _angle = point_direction(x, y, target.x, target.y);

if ( _angle >= 0 and _angle <= 90 or _angle >= 270 and _angle <= 360){
	image_xscale = 1;
}
else{
	image_xscale = -1;
}

if (PancakeHp <= 0 and alarm[11] == -1){
	sprite_index = spr_death;
	alarm[11] = 50;
	dead = true;
}

if (dead == true){
	speed = 0;
	self.damage = 0;
}




