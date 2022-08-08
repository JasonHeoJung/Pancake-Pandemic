if (global.playerinvincible == false){
	global.playerhealth -= global.enemydmg * 50;	
	alarm[0] = global.playerinvitime;
	alarm[3] = global.playertthr;
	flashAlpha = 1;
	global.playerinvincible = true;
	if !audio_is_playing(snd_dmg)
	{
		audio_play_sound(snd_dmg,1000, false)
	}
}

if (alarm[2] == -1){
	alarm[2] = 15;
	dir = point_direction(obj_explosion.x, obj_explosion.y, x, y);
	xx = x + lengthdir_x(100, dir);
	yy = y + lengthdir_y(100, dir);
	move_towards_point(xx,yy,10);
	knockback = true;
}
