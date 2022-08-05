global.buttercount += 1;

if (global.syrupcount < global.syrupcapacity){
	global.syrupcount += 4;
	if (global.syrupcount > global.syrupcapacity){
		global.syrupcount = global.syrupcapacity;
	}
}



