instance_activate_object(obj_tutorial_dialogue);

if (instance_exists(obj_Wave)){
	instance_deactivate_object(obj_shop);
}
else{
	instance_activate_object(obj_shop);
}

if (instance_exists(obj_PowerUp) or instance_exists(obj_Wave)){
	global.canstartwave = false;
}
else{
	global.canstartwave = true;
}


if (global.canstartwave == true){
	if keyboard_check_pressed(ord("K")){
		global.wavecount += 1;
		instance_create_layer(0,0,"Instances",obj_Wave);
	}	
}

if (!instance_exists(obj_Wave) and alarm[0] == -1){
	alarm[0] = 20;
}



global.playerweapon = global.obtainedweaponlist[equipped];






