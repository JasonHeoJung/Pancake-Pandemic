/// @description hit by blueberries
// You can write your code in this editor

if (alarm[0] == -1){
	PlayerHp -= 20;	
	alarm[0] = 50;
	flashAlpha = 1;
	mask_index = spr_empty;
}

if (PlayerHp <= 0){
	instance_destroy();
} 