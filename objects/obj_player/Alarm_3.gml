/// @description health regen
if (global.playerhealth < global.playermaxhealth){
	global.playerhealth += global.playerhealthregen;
	if (global.playerhealth > global.playermaxhealth){
		global.playerhealth = global.playermaxhealth;
	}
}
alarm[3] = 50; 

