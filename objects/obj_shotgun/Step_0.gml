// Inherit the parent event
event_inherited();

// Shotgun Bullets
if (mouse_check_button(mb_left) and alarm[0] == -1){
	//angle between pellets
	var anglebetweenpellets = self.pelletspread/self.pelletcount;
	//inital pellet angle 
	var bulletangle = point_direction(obj_player.x,obj_player.y,mouse_x,mouse_y) + self.pelletspread/2 + anglebetweenpellets;
	//loop to create pellets
	for (var i = 0; i < 5; i++)
	{
		var bullet = instance_create_layer(x,y,"Instances", obj_bullet);
		global.syrupcount -= self.pelletcost;
		bulletangle -= anglebetweenpellets 
		bullet.direction = bulletangle;
		bullet.image_angle = bullet.direction;	
		audio_play_sound(snd_Shoot,1000,false);
		audio_sound_gain(snd_Shoot, 0.5, 0);
	}
	alarm[0] = self.firerate;
}


 