/// @description distance
if (point_distance(x,y,originx,originy) >= bulletdist or speed == 0){
	instance_destroy();
}

speed -= bulletfric;



