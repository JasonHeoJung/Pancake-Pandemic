// Inherit the parent event
event_inherited();

//Sniper Bullets
if (mouse_check_button(mb_left) and alarm[0] == -1){
	var bullet = instance_create_layer(x,y,"Instances", obj_bullet);
	bullet.direction = point_direction(obj_player.x,obj_player.y,mouse_x,mouse_y);
	bullet.image_angle = bullet.direction;
	alarm[0] = self.firerate;
}
