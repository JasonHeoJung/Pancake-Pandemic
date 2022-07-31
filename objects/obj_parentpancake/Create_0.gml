flashAlpha = 0;
flashColor = c_white;
target = obj_player;
if (is_undefined(baseHp)){
	baseHp = 0;
}
PancakeHp = baseHp * global.enemyhealth;
entityDropList = -1;
_angle = point_direction(x, y, target.x, target.y);
