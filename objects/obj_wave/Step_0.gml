if (alarm[0] == -1 && enemies > 0){
	if (global.wavecount < 40){
		alarm[0] = 50 - global.wavecount;
	}
	else{
		alarm[0] = 10;
	}
	enemies -= 1;
}

if (enemies == 0  and !instance_exists(obj_parentpancake)){
	instance_destroy(); 	
}

