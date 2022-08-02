var _angle = point_direction(x, y, target.x, target.y);

if ( _angle >= 0 && _angle <= 90 || _angle >= 270 && _angle <= 360){
	image_xscale = 1;
}
else{
	image_xscale = -1;
}

if (PancakeHp <= 0 && alarm[11] == -1){
	sprite_index = spr_death;
	alarm[11] = 50;
	dead = true;
}

if (dead == true){
	speed = 0;
	obj_parentpancake.damage = 0;
}





