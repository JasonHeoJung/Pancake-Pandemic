// Inherit the parent event
event_inherited();

self.firerate = 40 * global.playerfirerate;
self.weapondamage = 10 * global.playerbulletdmg;

if (mouse_check_button(mb_left) and alarm[0] == -1){
	count = self.reps;
	var bullet = instance_create_layer(x,y,"Instances", obj_bullet);
	bullet.direction = point_direction(obj_player.x,obj_player.y,mouse_x,mouse_y);
	bullet.image_angle = bullet.direction;
	audio_play_sound(snd_Shoot,1000,false);
	audio_sound_gain(snd_Shoot, 0.8, 0);
	global.syrupcount -= self.bulletcost;
	alarm[0] = self.firerate;	
	alarm[1] = 5;
}