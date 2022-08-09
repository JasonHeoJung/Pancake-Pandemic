randomise();
enemies = global.wavecount * 3 + 5;

if (global.wavecount % 5 == 0){
	instance_create_layer(-500, room_height/2, "Instances", obj_GiantPancake);
}

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


