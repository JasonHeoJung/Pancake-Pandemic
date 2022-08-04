if (mouse_check_button_pressed(mb_left) and alarm[0] == -1){
	var bullet = instance_create_layer(x,y,"Instances", obj_bullet);
	bullet.direction = point_direction(obj_player.x,obj_player.y,mouse_x,mouse_y);
	bullet.image_angle = bullet.direction;
	alarm[0] = self.firerate;
}

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




