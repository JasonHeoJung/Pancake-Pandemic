if (global.playerinvincible == false){
	alarm[3] = -1;
	var prevh = global.playerhealth;
	global.playerhealth -= obj_parentpancake.damage;
	if (global.playerhealth == prevh){
		global.playerinvincible = false;	
	}
	else{
		alarm[0] = global.playerinvitime;
		global.playerinvincible = true;
		alarm[3] = global.playertthr;
		flashAlpha = 1;
	}
}


 
