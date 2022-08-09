count -= 1;
if (count > 0){
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
		audio_play_sound(snd_Shoot,1000,false);
		audio_sound_gain(snd_Shoot, 0.8, 0);
	}
	alarm[0] = self.firerate
	alarm[1] = 5;	
}





