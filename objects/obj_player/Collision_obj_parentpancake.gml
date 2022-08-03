if (global.playerinvincible == false){
	var prevh = global.playerhealth;
	global.playerhealth -= obj_parentpancake.damage;
	if (global.playerhealth != prevh){
		global.playerinvincible = true;	
	}
	else {
		alarm[3] = alarm[3] = 100;
	}
	alarm[0] = global.playerinvitime;
	flashAlpha = 1;
}


 
