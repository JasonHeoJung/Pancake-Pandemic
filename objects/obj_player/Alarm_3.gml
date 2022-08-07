/// @description health regen
if (global.playerhealth < global.playermaxhealth){
	global.playerhealth += global.playerhealthregen;
	alarm[3] = global.playertthr; 
	if (global.playerhealth > global.playermaxhealth){
		global.playerhealth = global.playermaxhealth;
		alarm[3] = -1;
	}
}


