baseHp = 5;
basedmg = 3;
basespeed = 6;

// Inherit the parent event
flashAlpha = 0;
flashColor = c_white;
target = obj_player;
PancakeHp = baseHp * global.enemyhealth;
obj_parentpancake.damage = basedmg * global.enemydmg;
obj_parentpancake.speed = basespeed * global.enemyspeed;

entityDropList = [];
for (var i = 0; i < global.enemydropcount; i++){
	array_push(entityDropList,obj_butter);
}

dead = false;

alarm[0] = 10;