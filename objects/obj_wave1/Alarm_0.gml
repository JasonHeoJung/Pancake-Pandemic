/// @description creates enemies randomly
// You can write your code in this editor


if (irandom(4) == 1){
	x = 50;
	y = 500;
	instance_create_layer(x, y , "Instances", obj_normalPancake);
	enemies -= 1;
}

if (irandom(4) == 2){
	x = 1870;
	y = 500;
	instance_create_layer(x, y , "Instances", obj_normalPancake);
	enemies -= 1;
}

if (irandom(4) == 3){
	x = 860;
	y = 50;
	instance_create_layer(x, y , "Instances", obj_normalPancake);
	enemies -= 1;
}

if (irandom(4) == 4) {
	x = 860;
	y = 1030;
	instance_create_layer(x, y , "Instances", obj_normalPancake);
	enemies -= 1;
}
	