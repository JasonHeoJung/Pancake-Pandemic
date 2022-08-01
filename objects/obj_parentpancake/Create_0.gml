flashAlpha = 0;
flashColor = c_white;
target = obj_player;
if (is_undefined(baseHp)){
	baseHp = 0;
}
PancakeHp = baseHp * global.enemyhealth;
entityDropList = [];
for (var i = 0; i < global.enemydropcount; i++){
	array_push(entityDropList,obj_butter);
}
