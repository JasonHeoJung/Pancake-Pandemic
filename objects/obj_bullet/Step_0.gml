/// @description distance

weapon = global.playerweapon;
if (point_distance(x,y,originx,originy) >= weapon.bulletdistance or speed == 0){
	instance_destroy();
}

speed -= weapon.bulletfric;



