var midx = room_width/2;
var midy = room_height/2;

instance_create_layer(midx, midy, "Instances", obj_PowerUp);
instance_create_layer(midx-100, midy, "Instances", obj_PowerUp);
instance_create_layer(midx+100, midy, "Instances", obj_PowerUp);




