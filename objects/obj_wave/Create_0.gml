randomise();
enemies = global.wavecount * 3 + 5;
global.syrupcount = global.syrupcapacity;

if (global.wavecount == 2){
	array_push(global.enemylist,obj_blueberryPancake);
}

if (global.wavecount == 4){
	array_push(global.enemylist,obj_TallPancake);
}

if (global.wavecount == 6){
	array_push(global.enemylist,obj_ExplodingPancake);
}


alarm[0] = 50;


