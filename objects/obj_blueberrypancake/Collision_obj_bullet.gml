/// @description hit by bullet
// You can write your code in this editor

blueberryHp -= 1;
flashAlpha = 1;

if (blueberryHp <= 0){
	instance_destroy();
}