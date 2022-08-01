enemies = global.wavecount * 3 + 5;


if (global.wavecount == 2){
	array_push(global.enemylist,obj_blueberryPancake);
}

if (global.wavecount == 4){
	array_push(global.enemylist,obj_TallPancake);
}

alarm[0] = 50;
