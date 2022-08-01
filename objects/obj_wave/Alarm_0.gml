var dir = irandom_range(0,360);
var xx = room_width/2 + lengthdir_x(room_width, dir);
var yy = room_height/2 + lengthdir_y(room_width, dir);
enemytospawn = irandom(array_length(global.enemylist)-1);

instance_create_layer(xx, yy, "Instances", global.enemylist[enemytospawn]);