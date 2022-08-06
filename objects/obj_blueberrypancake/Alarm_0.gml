/// @description throw berries
// You can write your code in this editor

if (!dead){
	var bullet = instance_create_layer(x,y,"EnemyProjectile", obj_blueberry);
	bullet.direction = point_direction(x,y,target.x,target.y); 
}