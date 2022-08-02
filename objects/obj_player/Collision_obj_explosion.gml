if (global.playerinvincible == false){
	global.playerhealth -= global.enemydmg * 50;	
	alarm[0] = 50;
	flashAlpha = 1;
	global.playerinvincible = true;
}

