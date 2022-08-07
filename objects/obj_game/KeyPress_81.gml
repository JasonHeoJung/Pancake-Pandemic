if (array_length(global.obtainedweaponlist) != 1){
	if (equipped == array_length(global.obtainedweaponlist) -1){
		instance_deactivate_object(global.obtainedweaponlist[equipped]);
		equipped = 0;
		instance_activate_object(global.obtainedweaponlist[equipped]);
	}
	else{
		instance_deactivate_object(global.obtainedweaponlist[equipped]);
		equipped += 1;
		instance_activate_object(global.obtainedweaponlist[equipped]);
	}
}
	





