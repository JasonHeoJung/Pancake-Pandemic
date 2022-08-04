// Inherit the parent event
event_inherited();

// Shotgun Bullets
if (mouse_check_button_pressed(mb_left) and alarm[0] == -1){
	//angle between pellets
	var anglebetweenpellets = self.pelletspread/self.pelletcount;
	//inital pellet angle 
	var bulletangle = point_direction(obj_player.x,obj_player.y,mouse_x,mouse_y) + self.pelletspread/2 + anglebetweenpellets;
	//loop to create pellets
	for (var i = 0; i < 5; i++)
	{
		var bullet = instance_create_layer(x,y,"Instances", obj_bullet);
		bulletangle -= anglebetweenpellets 
		bullet.direction = bulletangle;
		bullet.image_angle = bullet.direction;	
	}
	alarm[0] = self.firerate;
}


 