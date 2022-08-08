// Inherit the parent event
event_inherited();

//Pistol Bullets
if (mouse_check_button(mb_left) and alarm[0] == -1){
	var bullet = instance_create_layer(x,y,"Instances", obj_bullet);
	bullet.direction = point_direction(obj_player.x,obj_player.y,mouse_x,mouse_y);
	bullet.image_angle = bullet.direction;
	audio_play_sound(snd_Shoot,1000,false);
	audio_sound_gain(snd_Shoot, 0.5, 0);
	global.syrupcount -= self.bulletcost;
	alarm[0] = self.firerate;
}

