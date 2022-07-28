/// @description collide with normalpancake
// You can write your code in this editor

if (alarm[0] == -1){
	PlayerHp -= 0;	
	alarm[0] = 150;
	flashAlpha = 1;
}

if (PlayerHp <= 0){
	instance_destroy();
} 

 