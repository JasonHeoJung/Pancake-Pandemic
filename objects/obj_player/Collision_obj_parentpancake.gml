 if (global.playerinvincible == false){
	alarm[3] = -1;
	var prevh = global.playerhealth;
	global.playerhealth -= obj_parentpancake.damage;
	if !audio_is_playing(snd_dmg)
	{
		audio_play_sound(snd_dmg,1000, false)
	}
	if (global.playerhealth < prevh){
		global.playerinvincible = true;
		alarm[0] = global.playerinvitime;
		alarm[3] = global.playertthr;
		flashAlpha = 1;
	}
	else{
		global.playerinvincible = false;	
	}
}


 
