var midx = room_width/2 - 150;
var midy = room_height/2;
var poweruplist = global.poweruplist;
var count = 3;
var index = 0;

while (count != 0){
	length = array_length(poweruplist) - 1;
	index = irandom(length);
	var item = instance_create_layer(midx, midy, "Instances", poweruplist[index]);
	item.image_xscale = 1.5;
	item.image_yscale = 1.5;
	var pillar = instance_create_layer(midx, midy + 30, "Instances", obj_Pillar);
	pillar.image_xscale = 1.5;
	pillar.image_yscale = 1.5;
	array_delete(poweruplist,index,1);
	count -= 1;
	midx += 150;
}




 