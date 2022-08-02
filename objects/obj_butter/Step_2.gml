 if (instance_exists(obj_player)){
	var _px = obj_player.x;
	var _py = obj_player.y;
	var _dist = point_distance(x,y,_px-30,_py-30);
	if (_dist < 100 && alarm[0] == -1 ){
		spd += 1;
		direction = point_direction(x,y,_px-30,_py-30);
		spd = min(spd,10);
		if (_dist < 15){ 
			if (collectScriptArg != -1){
				script_execute(collectScript,collectScriptArg);
			}
			else{
				if (collectScript != -1) script_execute(collectScript);
			}
			instance_destroy();
		}	
	}
} 

fric = 0.03;
x += lengthdir_x(spd, direction);
y += lengthdir_y(spd, direction);
spd = max(spd-fric, 0)



  