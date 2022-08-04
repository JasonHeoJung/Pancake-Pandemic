var midx = room_width/2;
var midy = room_height/2;
global.poweruplist = [obj_DmgUp, obj_HealthUp, obj_FireRateUp, obj_InvinTime, obj_Regenrate, obj_SpeedUp, obj_SpeedUp];
var count = 3

//while (count != 0){
//	var index = irandom(array_length_1d(global.poweruplist));
//	instance_create_layer(midx, midy, "Instances", obj_PowerUp[index]);
	


instance_create_layer(midx, midy, "Instances", obj_PowerUp);
instance_create_layer(midx-100, midy, "Instances", obj_PowerUp);
instance_create_layer(midx+100, midy, "Instances", obj_PowerUp);




 