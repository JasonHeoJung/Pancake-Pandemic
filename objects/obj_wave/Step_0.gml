if (alarm[0] == -1 && enemies > 0){
	alarm[0] = 50-global.wavecount;
	enemies -= 1;
}

if (enemies == 0  and !instance_exists(obj_parentpancake)){
	instance_destroy(); 	
}

