if (global.playerhealth < global.playermaxhealth){
	global.playerhealth += 10;
	alarm[0] = 20;
	if (global.playerhealth > global.playermaxhealth){
		global.playerhealth = global.playermaxhealth;
		alarm[0] = -1;
	}
}






