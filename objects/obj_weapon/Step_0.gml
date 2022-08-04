var angle = point_direction(obj_player.x,obj_player.y,mouse_x, mouse_y);

if (angle <= 90 or angle >= 270){ 
	image_angle = angle;
	image_xscale = 1;
}
else{
	image_xscale = -1;
	image_angle = angle - 180;
}

x = obj_player.x + lengthdir_x(70,angle);
y = obj_player.y + lengthdir_y(70,angle);





