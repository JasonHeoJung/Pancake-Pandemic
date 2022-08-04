var midx = room_width/2 - 100;
var midy = room_height/2;
var poweruplist = global.poweruplist;
var count = 3;
var index = 0;

while (count != 0){
	index = irandom(array_length_1d(poweruplist)) -1;
	index -= 1;
	instance_create_layer(midx, midy, "Instances", poweruplist[index]);
	array_delete(poweruplist,index,1);
	count -= 1;
	midx += 100;
}




 