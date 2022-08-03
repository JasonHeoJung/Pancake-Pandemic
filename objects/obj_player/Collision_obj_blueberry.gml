if (global.playerinvincible == false){
	global.playerhealth -= global.enemydmg * 5;	
	alarm[0] = 50;
	alarm[3] = global.playertthr;
	flashAlpha = 1;
	global.playerinvincible = true;
}
