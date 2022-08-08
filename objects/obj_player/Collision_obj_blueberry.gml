if (global.playerinvincible == false){
	global.playerhealth -= global.enemydmg * 5;	
	alarm[0] = global.playerinvitime;
	alarm[3] = global.playertthr;
	flashAlpha = 1;
	global.playerinvincible = true;
	if !audio_is_playing(snd_dmg)
	{
		audio_play_sound(snd_dmg,1000, false)
	}
}
