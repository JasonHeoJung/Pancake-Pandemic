if (global.playerinvincible == false && obj_parentpancake != obj_ExplodingPancake){
	global.playerhealth -= obj_parentpancake.damage;	
	alarm[0] = 50;
	flashAlpha = 1;
	global.playerinvincible = true;
}



