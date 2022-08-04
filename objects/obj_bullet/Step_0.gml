/// @description distance

weapon = global.playerweapon;
if (point_distance(x,y,originx,originy) >= weapon.bulletdistance){
	instance_destroy();
}

fric = 0.05;
speed -= fric;



