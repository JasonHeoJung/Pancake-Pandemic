flashAlpha = 0;
flashColor = c_white;
target = obj_player;
baseHp = undefined;
basedmg = undefined;

if (is_undefined(baseHp)){
	baseHp = 1;
}

PancakeHp = baseHp * global.enemyhealth;

if (is_undefined(basedmg)){
	basedmg = 1;
}

obj_parentpancake.damage = basedmg * global.enemydmg;

entityDropList = [];
for (var i = 0; i < global.enemydropcount; i++){
	array_push(entityDropList,obj_butter);
}

dead = false;
