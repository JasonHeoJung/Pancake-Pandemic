if (global.playerinvincible == false){
	var prevh = global.playerhealth;
	global.playerhealth -= obj_parentpancake.damage;
	if (global.playerhealth != prevh){
		global.playerinvincible = true;	
	}
	alarm[0] = 50;
	flashAlpha = 1;
}



