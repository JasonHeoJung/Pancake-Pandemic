/// @description 

draw_self();

//if (hspeed > 0){
//	draw_sprite_ext(	)
//flash
if (flashAlpha > 0){
	shader_set(sh_Flash);
	
	draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, 
	flashColor, flashAlpha);
	
	shader_reset();
}

//hp
draw_text(x,y+10,PlayerHp);



