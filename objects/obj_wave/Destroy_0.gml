var midx = room_width/2 - 150;
var midy = room_height/2;
var removed = [];
var count = 3;
var index = 0;

while (count != 0){
	length = array_length(global.poweruplist) - 1;
	index = irandom(length);
	var item = instance_create_layer(midx, midy, "Instances", global.poweruplist[index]);
	item.image_xscale = 1.5;
	item.image_yscale = 1.5;
	var pillar = instance_create_layer(midx, midy + 30, "Instances", obj_Pillar);
	pillar.image_xscale = 1.5;
	pillar.image_yscale = 1.5;
	array_push(removed,global.poweruplist[index]);
	array_delete(global.poweruplist,index,1);
	count -= 1;
	midx += 150;
}

for (var i = 0; i<array_length(removed); i++){
	array_push(global.poweruplist,removed[i]);
}

obj_player.x = room_width/2;
obj_player.y = midy-200;
        